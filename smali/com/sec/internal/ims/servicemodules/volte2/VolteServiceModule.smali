.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
.super Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.source "VolteServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p4, "pc"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .param p5, "volteServiceInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p6, "mediaServiceInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .param p7, "optionsServiceInterface"    # Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V

    .line 106
    return-void
.end method

.method private getRegInfo(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 583
    if-nez p1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 587
    .local v1, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 590
    .end local v1    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_1
    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method private handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 449
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 450
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->disconnectToSve()V

    .line 456
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 457
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleDeregistered(IILcom/sec/internal/constants/Mno;)V

    .line 460
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    const-string v2, " with handle "

    if-eqz v1, :cond_4

    .line 461
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deregistered emergency profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Deregistered reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 466
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x646

    if-eq p2, v1, :cond_1

    .line 468
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200 nor 1606"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Do not stopEmergencyRegistration It\'s ATT and error Code is not 200"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 473
    return-void

    .line 474
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 475
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 476
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 481
    :cond_3
    return-void

    .line 483
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deregistered from VOLTE service. reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 487
    .local v1, "deRegisteredRegId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deregistered reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 490
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v2

    if-lez v2, :cond_5

    .line 492
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 494
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 496
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->clearDialogList(II)V

    .line 498
    :cond_6
    return-void
.end method

.method private handleDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 414
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 416
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeregistering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 420
    .local v0, "deRegisteringRegId":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 422
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TMO_E911, deregReason is MOVE_NEXT_PCSCF, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->removeMessages(I)V

    .line 428
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 434
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->clearDialogList(II)V

    .line 436
    :cond_2
    return-void
.end method

.method private onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V
    .locals 9
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1204
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    .line 1205
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call End - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Reason("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), Error("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 1210
    .local v1, "callType":I
    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1213
    .local v3, "isEmergency":Z
    :goto_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallEnded: callType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isEmergency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 1215
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isEpdnRequestPending(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1216
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "EPDN request is still pending, need to stop EPDN to avoid retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    .line 1222
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 1226
    .local v4, "registration":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasActiveCall(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1227
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1228
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    .line 1227
    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    .line 1229
    .local v5, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v5, :cond_3

    .line 1230
    sget-object v6, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v7, 0x0

    .line 1232
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    .line 1230
    invoke-interface {v5, v6, v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 1236
    .end local v5    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVowifiEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1237
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCallCount(I)[I

    move-result-object v5

    aget v5, v5, v2

    if-nez v5, :cond_4

    .line 1238
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1241
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isCmcPrimaryType(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1242
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1777

    if-ne v5, v6, :cond_7

    .line 1243
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    .line 1244
    .local v5, "boundSessionId":I
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call end due to call pull from SD to PD. bound session id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    if-lez v5, :cond_6

    .line 1247
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    .line 1248
    .local v6, "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v6, :cond_5

    .line 1249
    sget-object v7, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Ext session is PS. need to start audio engine internally"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    .line 1252
    .end local v6    # "boundSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_5
    goto :goto_2

    .line 1253
    :cond_6
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Ext session is CS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    .end local v5    # "boundSessionId":I
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1259
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-nez v5, :cond_8

    .line 1260
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->changeWifiDirectConnection(Z)V

    .line 1263
    :cond_8
    return-void
.end method

.method private onCallStatusChange(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callEvent"    # I

    .line 821
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateTelephonyCallStatus(II)V

    .line 824
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 825
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    if-eqz v0, :cond_1

    .line 826
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateTelephonyCallStatus(II)V

    .line 828
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 831
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v1, :cond_2

    .line 832
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_0

    .line 834
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 837
    .restart local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    .line 838
    if-nez p2, :cond_3

    .line 839
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->sendMessage(Landroid/os/Message;)Z

    .line 842
    :cond_3
    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    .line 1459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1460
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BikeMode Active - Dtmf Val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.DTMF_RX_DIGI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v1

    const-string v2, "dtmf_digit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1464
    const-string v1, "com.samsung.android.app.bikemode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1466
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1467
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Bike Mode is disabled discarding event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :goto_0
    return-void
.end method

.method private onEcbmStateChanged(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z

    .line 895
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEcbmStateChanged: ecbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " oldEcbm["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    aget-boolean v0, v0, p1

    .line 897
    .local v0, "oldEcbm":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    aput-boolean p2, v1, p1

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3000001b

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcbmMode:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 906
    if-eqz v0, :cond_0

    .line 907
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 910
    :cond_0
    return-void
.end method

.method private onEventSimReady(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 164
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventSimReady<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    if-eqz v0, :cond_2

    .line 168
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 169
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    .line 170
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->stop()V

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->start()V

    .line 176
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_2

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    .line 183
    :cond_4
    :goto_2
    return-void
.end method

.method private onIQIServiceStateChanged(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onXqServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    if-eqz v0, :cond_2

    .line 1582
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1583
    .local v0, "xqEnable":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1584
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->start()V

    goto :goto_1

    .line 1586
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->stop()V

    .line 1588
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz v1, :cond_2

    .line 1589
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateXqEnable(IZ)V

    .line 1592
    .end local v0    # "xqEnable":Z
    :cond_2
    return-void
.end method

.method private onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1124
    const/4 v0, 0x1

    .line 1125
    .local v0, "needToNotify":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallStateEvent$CALL_STATE:[I

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1133
    :pswitch_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v1, v2, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1135
    .local v1, "sdRegi":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->clearDialogList(II)V

    .line 1140
    .end local v1    # "sdRegi":Lcom/sec/ims/ImsRegistration;
    :cond_0
    const/4 v0, 0x0

    .line 1141
    goto :goto_0

    .line 1130
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    .line 1131
    goto :goto_0

    .line 1127
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1128
    nop

    .line 1146
    :goto_0
    if-eqz v0, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1149
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 8
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 845
    if-nez p1, :cond_0

    .line 846
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ignoring dialog list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void

    .line 850
    :cond_0
    const/4 v0, 0x1

    .line 851
    .local v0, "needToNotify":Z
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 852
    .local v1, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_7

    .line 853
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 854
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_6

    .line 855
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    .line 856
    .local v4, "d":Lcom/sec/ims/Dialog;
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 858
    invoke-virtual {v4, v6}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 859
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Exclusive call can\'t pulling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 860
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 862
    invoke-virtual {v4, v6}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 863
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Held call can\'t pulling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 864
    :cond_2
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 865
    invoke-virtual {v4, v7}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 866
    invoke-virtual {v4, v7}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 867
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Downgraded video call can pulling and change callType to Voice"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 868
    :cond_3
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 869
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 871
    invoke-virtual {v4, v6}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 872
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Backgrounded Video call can\'t pulling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 873
    :cond_4
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 874
    const-string v5, "mmtel-video"

    invoke-virtual {v1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 876
    invoke-virtual {v4, v6}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 877
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "video call can\'t pulling with video feature"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 879
    :cond_5
    invoke-virtual {v4, v7}, Lcom/sec/ims/Dialog;->setIsPullAvailable(Z)V

    .line 881
    .end local v4    # "d":Lcom/sec/ims/Dialog;
    :goto_1
    goto :goto_0

    .line 883
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Z

    move-result v0

    .line 886
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_7
    if-eqz v0, :cond_8

    .line 887
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    aput-object p1, v2, v3

    .line 888
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 889
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 890
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Notified Dialog Event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_8
    return-void
.end method

.method private onReleaseWfcBeforeHO(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1077
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onReleaseWfcBeforeHO(I)V

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mReleaseWfcBeforeHO:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1079
    return-void
.end method

.method private onSreenOnOffChanged(I)V
    .locals 3
    .param p1, "on"    # I

    .line 913
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSreenOnOffChanged: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateScreenOnOff(II)V

    .line 918
    :cond_0
    return-void
.end method

.method private declared-synchronized onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2
    .param p1, "textInfo"    # Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    monitor-enter p0

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    monitor-exit p0

    return-void

    .line 1472
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
    .end local p1    # "textInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "bitRate"    # Ljava/lang/String;
    .param p3, "isEndCall"    # Z

    .line 1637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.imsservice.handler.secims.audio_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_ENDCALL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1639
    const-string v1, "CODEC_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    const-string v1, "BIT_RATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1642
    return-void
.end method

.method private tryDisconnect(II)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "phoneId"    # I

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 516
    .local v0, "rat":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryDisconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 518
    .local v1, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_5

    .line 519
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 520
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    const-string/jumbo v4, "to do nothing"

    if-eqz v3, :cond_0

    .line 521
    invoke-static {v0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 523
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 525
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    if-eqz v0, :cond_1

    .line 529
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasActiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "to do nothing - Continue Wifi call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 539
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isMultiPdnRat(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 540
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 541
    const/16 v3, 0x7d0

    if-le p1, v3, :cond_3

    .line 542
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSuspended(), waited enough..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSuspended(), retrying..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v3, 0x9

    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p0, v3, v4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 547
    return-void

    .line 550
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRatChanged:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p2

    .line 551
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V

    .line 554
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    return-void
.end method

.method private updateFeature(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 229
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtel(I)V

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeatureMmtelVideo(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    .line 234
    const-string v1, "composerAuth"

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    .line 235
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v1, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    .line 233
    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    .local v0, "val":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "mmtel-call-composer"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private updateFeatureMmtel(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 245
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 246
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVowifiEnabled(I)Z

    move-result v1

    .line 248
    .local v1, "isVowifiEnabled":Z
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    goto :goto_0

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    const-string v3, "mmtel"

    invoke-static {v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    .line 251
    invoke-static {v2, v3, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 255
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    :cond_2
    if-eqz v1, :cond_3

    .line 257
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 269
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 275
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 278
    :cond_5
    return-void
.end method

.method private updateFeatureMmtelVideo(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 281
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 283
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteSettingEnabled()Z

    move-result v1

    .line 285
    .local v1, "isVolteSettingEnabled":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus()Z

    move-result v2

    .line 286
    .local v2, "isVolteServiceStatus":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isLTEDataModeEnabled()Z

    move-result v4

    .line 287
    .local v4, "isLTEDataModeEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 288
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v6, v5, p1

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    aput-wide v6, v5, p1

    .line 292
    .end local v1    # "isVolteSettingEnabled":Z
    .end local v2    # "isVolteServiceStatus":Z
    .end local v4    # "isLTEDataModeEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "mmtel-video"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    .line 293
    invoke-static {v1, v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 296
    :cond_1
    return-void
.end method


# virtual methods
.method public checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1
    .param p1, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 606
    return-void
.end method

.method public consultativeTransferCall(II)V
    .locals 6
    .param p1, "fgCallId"    # I
    .param p2, "bgCallId"    # I

    .line 1010
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1011
    .local v0, "activeSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1012
    .local v1, "heldSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const-string v2, ") is invalid"

    if-nez v0, :cond_0

    .line 1013
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fgCallId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 1016
    :cond_0
    if-nez v1, :cond_1

    .line 1017
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bgCallId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1020
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    .line 1021
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1022
    .local v3, "regInfo":Lcom/sec/ims/ImsRegistration;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {v4, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->consultativeTransferCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    .line 1023
    return-void
.end method

.method public createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 562
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 563
    .local v0, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 565
    return-object v0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "regId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IVolteServiceEventListener;

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 665
    return-void
.end method

.method public deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 701
    return-void
.end method

.method public deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 696
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 697
    return-void
.end method

.method public enableCallWaitingRule(Z)V
    .locals 0
    .param p1, "enableRule"    # Z

    .line 975
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnableCallWaitingRule:Z

    .line 976
    return-void
.end method

.method public getActiveImpu()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1065
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getActiveImpu(I)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getActiveImpu(I)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    return-object v0

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAutomaticMode()Z
    .locals 1

    .line 628
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getAutomaticMode(I)Z

    move-result v0

    return v0
.end method

.method public getAutomaticMode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mAutomaticMode:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    return-object v0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object v0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExtMoCall()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getExtMoCall()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 18
    .param p1, "phoneId"    # I

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/volte2/data/ImsCallInfo;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionList(I)Ljava/util/List;

    move-result-object v1

    .line 1597
    .local v1, "mSessionMap":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1598
    .local v3, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    new-instance v17, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v5

    .line 1599
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    .line 1600
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v7

    .line 1601
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedAtEstablish()Z

    move-result v8

    const/4 v4, 0x1

    .line 1602
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v9

    const/4 v4, 0x2

    .line 1603
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v10

    const/16 v4, 0x8

    .line 1604
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result v11

    .line 1605
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v12

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    .line 1606
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v14

    .line 1607
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v15

    .line 1608
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v16

    move-object/from16 v4, v17

    invoke-direct/range {v4 .. v16}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1609
    .local v4, "callInfo":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    .end local v3    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v4    # "callInfo":Lcom/sec/ims/volte2/data/ImsCallInfo;
    goto :goto_0

    .line 1611
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/ims/volte2/data/ImsCallInfo;

    return-object v2
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    return-object v0
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 1
    .param p1, "phoneId"    # I

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;

    .line 1549
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    .line 1550
    .local v0, "ug":Lcom/sec/internal/ims/util/UriGenerator;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1551
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getNormalizedUri: FATAL - no UriGenerator found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-object v1

    .line 1555
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 1556
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    if-nez v2, :cond_1

    .line 1557
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNormalizedUri: invalid msisdn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-object v1

    .line 1561
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1562
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v3, :cond_2

    .line 1563
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getNormalizedUri: not registered!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-object v1

    .line 1567
    :cond_2
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    .line 1569
    .local v4, "impus":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/NameAddr;

    .line 1570
    .local v6, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 1571
    .local v7, "normalized":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2, v7}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1572
    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 1574
    .end local v6    # "addr":Lcom/sec/ims/util/NameAddr;
    .end local v7    # "normalized":Lcom/sec/ims/util/ImsUri;
    :cond_3
    goto :goto_0

    .line 1576
    :cond_4
    return-object v1
.end method

.method public getParticipantIdForMerge(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "hostId"    # I

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getParticipantIdForMerge(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 650
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPendingSession: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getRegInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 4
    .param p1, "regId"    # I

    .line 569
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 574
    .local v1, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 575
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegInfo: found regId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 578
    .end local v1    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_1
    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getRttMode()I
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRttMode:[I

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    aget v0, v0, v1

    return v0
.end method

.method public getRttMode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRttMode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 4

    .line 144
    const-string v0, "mmtel"

    const-string v1, "mmtel-video"

    const-string v2, "mmtel-call-composer"

    const-string v3, "cdpn"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public getSignalLevel()I
    .locals 1

    .line 1531
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSignalLevel(I)I

    move-result v0

    return v0
.end method

.method public getSignalLevel(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getSignalLevel(I)I

    move-result v0

    return v0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;

    .line 1543
    const/4 v0, 0x0

    .line 1544
    .local v0, "trn":Ljava/lang/String;
    return-object v0
.end method

.method public getTtyMode()I
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    aget v0, v0, v1

    return v0
.end method

.method public getTtyMode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getVoWIFIEmergencyCallRat(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1615
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1616
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 1617
    goto :goto_0

    .line 1619
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoWIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1620
    const/16 v0, 0x12

    return v0

    .line 1622
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_0

    .line 1623
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1293
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCheckRunningState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCheckRunningState:Z

    .line 1295
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1296
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolteServiceModule not ready, retransmitting event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void

    .line 1299
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handleMessage(Landroid/os/Message;)V

    .line 1301
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1433
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Removed Call State set to Idle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1435
    .local v0, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    .line 1436
    goto/16 :goto_3

    .line 1439
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1440
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1441
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEventSimReady(I)V

    .line 1442
    goto/16 :goto_3

    .line 1429
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "phoneId":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getDefaultPhoneId()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onIQIServiceStateChanged(IZ)V

    .line 1430
    goto/16 :goto_3

    .line 1424
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onSrvccStateChange(II)V

    .line 1425
    goto/16 :goto_3

    .line 1416
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDefaultDataSubscriptionChanged()V

    .line 1417
    goto/16 :goto_3

    .line 1411
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1412
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V

    .line 1413
    goto/16 :goto_3

    .line 1406
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1407
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 1408
    goto/16 :goto_3

    .line 1402
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onSreenOnOffChanged(I)V

    .line 1403
    goto/16 :goto_3

    .line 1335
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1336
    .local v0, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onTextInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V

    .line 1337
    goto/16 :goto_3

    .line 1398
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onConfigUpdated(ILjava/lang/String;)V

    .line 1399
    goto/16 :goto_3

    .line 1420
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onReleaseWfcBeforeHO(I)V

    .line 1421
    goto/16 :goto_3

    .line 1394
    :pswitch_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdnSetupFail(I)V

    .line 1395
    goto/16 :goto_3

    .line 1389
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1390
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 1391
    goto/16 :goto_3

    .line 1330
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1331
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V

    .line 1332
    goto/16 :goto_3

    .line 1367
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasEmergencyCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1368
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isEmergencyRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    goto/16 :goto_3

    .line 1371
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyPdnOnly(I)V

    goto/16 :goto_3

    .line 1385
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1386
    goto/16 :goto_3

    .line 1381
    :pswitch_11
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onPSBarred(Z)V

    .line 1382
    goto/16 :goto_3

    .line 1377
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1378
    goto/16 :goto_3

    .line 1363
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->handleDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 1364
    goto/16 :goto_3

    .line 1359
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    .line 1360
    goto/16 :goto_3

    .line 1355
    :pswitch_15
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEndByCS(I)V

    .line 1356
    goto :goto_3

    .line 1351
    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->tryDisconnect(II)V

    .line 1352
    goto :goto_3

    .line 1346
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1347
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    .line 1348
    goto :goto_3

    .line 1340
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_18
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1341
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onEcbmStateChanged(IZ)V

    goto :goto_3

    .line 1326
    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallStatusChange(II)V

    .line 1327
    goto :goto_3

    .line 1310
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1311
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/DialogEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1312
    goto :goto_3

    .line 1315
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1321
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1322
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$S68cn817F7Hq2OBjL07RwaYLzME;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$S68cn817F7Hq2OBjL07RwaYLzME;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    const-wide/16 v3, 0x32

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1323
    goto :goto_3

    .line 1303
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1305
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    .line 1306
    .local v1, "incoming":Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->post(Ljava/lang/Runnable;)Z

    .line 1307
    nop

    .line 1447
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "incoming":Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isCallBarredBySSAC(II)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "calltype"    # I

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x0

    return v0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->isCallBarred(II)Z

    move-result v0

    .line 983
    .local v0, "result":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallBarredBySSAC["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: result for call type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return v0
.end method

.method public isProhibited(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mProhibited:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isRttCall(I)Z
    .locals 1
    .param p1, "sessionId"    # I

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isRttCall(I)Z

    move-result v0

    return v0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;

    .line 1478
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result v0

    return v0
.end method

.method public isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 1483
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1484
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SipError was null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return v0

    .line 1488
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1489
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isSilentRedialEnabled was false!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return v0

    .line 1493
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1495
    .local v0, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    goto :goto_0

    .line 1496
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    :goto_0
    nop

    .line 1498
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v2, 0x0

    .line 1501
    .local v2, "isVolteRetryRequired":Z
    :try_start_0
    const-string v3, "all_volte_retry_error_code_list"

    .line 1502
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, "volteRetryErrorCodes":[Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "all_volte_retry_error_code_list "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1504
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v5

    move v2, v5

    .line 1509
    if-nez v2, :cond_3

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1510
    const-string/jumbo v5, "video_volte_retry_error_code_list"

    .line 1511
    invoke-static {p1, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, "vilteRetryErrorCodes":[Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video_volte_retry_error_code_list "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1513
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1519
    .end local v3    # "volteRetryErrorCodes":[Ljava/lang/String;
    .end local v4    # "vilteRetryErrorCodes":[Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 1518
    :catch_0
    move-exception v3

    .line 1521
    :goto_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    if-eq v3, v4, :cond_4

    .line 1522
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "do not volte retry under eb not supported N/W"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v2, 0x0

    .line 1526
    :cond_4
    return v2
.end method

.method public isVolteServiceStatus()Z
    .locals 1

    .line 186
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteServiceStatus(I)Z

    move-result v0

    return v0
.end method

.method public isVolteServiceStatus(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 191
    const/4 v0, 0x1

    .line 192
    .local v0, "isVolteServiceStatus":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 193
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 194
    invoke-static {v2, v3, p1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 196
    .local v2, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v0

    .line 198
    .end local v2    # "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolteServiceStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v0
.end method

.method public isVolteSupportECT()Z
    .locals 1

    .line 204
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isVolteSupportECT(I)Z

    move-result v0

    return v0
.end method

.method public isVolteSupportECT(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "isVolteEnableECT":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 212
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasEmergencyCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Has emergenacy call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    const/4 v0, 0x1

    .line 221
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVolteSupportECT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v0
.end method

.method public synthetic lambda$handleMessage$0$VolteServiceModule(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 1
    .param p1, "incoming"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V

    return-void
.end method

.method public synthetic lambda$handleMessage$1$VolteServiceModule(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1322
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method public notifyOnCmcRecordingEvent(IIII)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "extra"    # I
    .param p4, "sessionId"    # I

    .line 1036
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnCmcRecordingEvent(III)V

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->forwardCmcRecordingEventToSD(IIII)V

    .line 1038
    return-void
.end method

.method public notifyOnPulling(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "pullingCallId"    # I

    .line 1032
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnPulling(II)V

    .line 1033
    return-void
.end method

.method public onCallEnded(III)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "error"    # I

    .line 1161
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallEnded["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1163
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1164
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isEmergencyRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    .line 1169
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0x38f

    if-eq p3, v1, :cond_1

    .line 1170
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Stack Return -1 release all session in F/W layer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllSession(I)V

    .line 1175
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1177
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1179
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_2

    .line 1180
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onCallSessionEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/Mno;)V

    .line 1183
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mReleaseWfcBeforeHO:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionCount(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 1184
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "All calls are release before HO, trigger HO to EPDG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/epdg/EpdgManager;->triggerHOAfterReleaseCall(I)Z

    .line 1186
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mReleaseWfcBeforeHO:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1189
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1190
    .local v2, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_4

    .line 1191
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1192
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    .line 1195
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->startCameraForActiveExcept(I)V

    .line 1200
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onCallEnded()V

    .line 1201
    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 1266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantAdded: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1268
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 1270
    .local v1, "callState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1273
    .end local v1    # "callState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    :cond_0
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 1276
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceParticipantRemoved: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1278
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 1280
    .local v1, "callState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 1281
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1283
    .end local v1    # "callState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    :cond_0
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "item"    # Ljava/lang/String;

    .line 1450
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v0, "VOLTE_ENABLED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    const-string v0, "LVC_ENABLED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onServiceSwitched(ILandroid/content/ContentValues;)V

    .line 1456
    :cond_1
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 156
    return-void
.end method

.method protected onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    .line 1041
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1042
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    .line 1043
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDedicatedBearerEvent: unknown session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void

    .line 1046
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setDedicatedBearerState(II)V

    .line 1048
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDedicatedBearerEvent: received for session : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,bearer state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,qci : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    .line 1052
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000000d

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastRegiErrorCode:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aput p2, v0, v1

    .line 444
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->removeMessages(I)V

    .line 445
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 446
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 409
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->removeMessages(I)V

    .line 410
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method

.method protected onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1083
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1085
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    goto :goto_0

    .line 1086
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :goto_0
    nop

    .line 1088
    .local v1, "regiInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1089
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1090
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mProhibited:[Z

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    aput-boolean v2, v4, v5

    .line 1092
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImsCallEvent: Receive 503 Outage Error session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1092
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1094
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 1096
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1097
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1098
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onImsCallEvent: Notify 708 to RegiGvn even if session null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    .line 1101
    .local v2, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v2, :cond_2

    .line 1102
    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    const-string v5, "mmtel"

    invoke-interface {v2, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1104
    :cond_2
    return-void

    .line 1108
    .end local v2    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1109
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioBitRate()Ljava/lang/String;

    move-result-object v4

    .line 1110
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v5, v6, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1109
    :cond_5
    :goto_2
    invoke-direct {p0, v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendAudioCodecInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1113
    :cond_6
    if-nez v0, :cond_7

    .line 1114
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsCallEvent: unknown session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 1117
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsCallEvent: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1117
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->onImsCallEventForState(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 1121
    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 502
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 504
    .local v0, "oldEvent":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v2, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v2, :cond_0

    .line 505
    const v1, 0x30000009

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mNetworks:Ljava/util/Map;

    .line 506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mNetworks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->removeMessages(I)V

    .line 510
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 9
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 336
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 340
    :cond_0
    const v0, 0x3000000c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 342
    .local v0, "oldRegiInfo":Lcom/sec/ims/ImsRegistration;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastRegiErrorCode:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    aput v4, v1, v3

    .line 343
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 345
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 346
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Registered Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 348
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startEpdnDisconnectTimer(IJ)V

    .line 351
    :cond_1
    return-void

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    .line 356
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 357
    nop

    .line 358
    const-string v4, "allow_release_wfc_before_ho"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v4

    .line 359
    .local v4, "allowReleaseWfcBeforeHO":Z
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is allow release call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/sec/epdg/EpdgManager;->setReleaseCallBeforeHO(IZ)Z

    .line 363
    .end local v4    # "allowReleaseWfcBeforeHO":Z
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 364
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v7

    if-eq v4, v7, :cond_5

    .line 366
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 367
    .local v4, "oldEmergencyRegiInfo":Lcom/sec/ims/ImsRegistration;
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 368
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v7

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->hasEmergencyCall(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 369
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 371
    :cond_4
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v7, v3, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V

    .line 375
    .end local v4    # "oldEmergencyRegiInfo":Lcom/sec/ims/ImsRegistration;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->terminateMoWfcWhenWfcSettingOff(I)V

    .line 377
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered to VOLTE service. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TTYMode "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    .line 378
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    aget v2, v2, v8

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered Feature "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    aget-wide v7, v7, v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " with handle "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 383
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    .line 384
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    aget v7, v7, v8

    invoke-interface {v2, v4, v5, v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 387
    :cond_6
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->connectToSve(I)V

    .line 391
    :cond_7
    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 392
    iput-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mMmtelAcquiredEver:Z

    .line 393
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mProhibited:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    aput-boolean v5, v4, v6

    .line 396
    :cond_8
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 397
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Registration Without MMTEL has DialogList notify empty dialog"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->clearDialogList(II)V

    .line 401
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 402
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 403
    return-void

    .line 337
    .end local v0    # "oldRegiInfo":Lcom/sec/ims/ImsRegistration;
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "phoneId":I
    :cond_a
    :goto_0
    return-void
.end method

.method protected onRtpLossRateNoti(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 2
    .param p1, "noti"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 1157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 1158
    return-void
.end method

.method public declared-synchronized onSendRttSessionModifyRequest(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    monitor-enter p0

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    .line 801
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    :goto_0
    move v0, v1

    .line 802
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 803
    const/4 v2, 0x1

    goto :goto_1

    .line 804
    :cond_1
    const/4 v2, 0x0

    .line 802
    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 805
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 806
    .local v1, "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v2, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyRequest(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    monitor-exit p0

    return-void

    .line 799
    .end local v0    # "phoneId":I
    .end local v1    # "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
    .end local p1    # "callId":I
    .end local p2    # "mode":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSendRttSessionModifyResponse(IZZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "mode"    # Z
    .param p3, "result"    # Z

    monitor-enter p0

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getPhoneIdByCallId(I)I

    move-result v0

    .line 812
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    :goto_0
    move v0, v1

    .line 813
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    if-ne p2, p3, :cond_1

    .line 814
    const/4 v2, 0x1

    goto :goto_1

    .line 815
    :cond_1
    const/4 v2, 0x0

    .line 813
    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 816
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 817
    .local v1, "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->onSendRttSessionModifyResponse(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return-void

    .line 810
    .end local v0    # "phoneId":I
    .end local v1    # "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
    .end local p1    # "callId":I
    .end local p2    # "mode":Z
    .end local p3    # "result":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 306
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceSwitched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 308
    return-void
.end method

.method public onSimReady(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimReady:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1287
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateGeolocation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onUpdateGeolocation()V

    .line 1289
    return-void
.end method

.method public onVoWiFiSwitched(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 300
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVoWiFiSwitched:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateFeature(I)V

    .line 302
    return-void
.end method

.method public pushCall(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "targetNumber"    # Ljava/lang/String;

    .line 998
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushCall: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1000
    .local v0, "callSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    .line 1001
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void

    .line 1004
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    .line 1005
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;Lcom/sec/ims/ImsRegistration;)V

    .line 1006
    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    .line 706
    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IDialogEventListener;

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 680
    return-void
.end method

.method public registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 693
    return-void
.end method

.method public registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 688
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 689
    return-void
.end method

.method public registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IVolteServiceEventListener;

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 661
    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 670
    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 1628
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    .line 1629
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 795
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttMessage(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public declared-synchronized sendRttSessionModifyRequest(IZ)I
    .locals 1
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    monitor-enter p0

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyRequest(IZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 610
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
    .end local p1    # "callId":I
    .end local p2    # "mode":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendRttSessionModifyResponse(IZ)V
    .locals 1
    .param p1, "callId"    # I
    .param p2, "accept"    # Z

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->sendRttSessionModifyResponse(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    .line 636
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;
    .end local p1    # "callId":I
    .end local p2    # "accept":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActiveImpu(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "impu"    # Ljava/lang/String;

    .line 1056
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1058
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1062
    return-void
.end method

.method public setAutomaticMode(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mAutomaticMode:[Z

    aget-boolean v0, v0, p1

    .line 616
    .local v0, "prevMode":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mAutomaticMode:[Z

    aput-boolean p2, v1, p1

    .line 619
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutomaticMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-ne v0, p2, :cond_0

    .line 621
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAutomaticMode: ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setAutomaticMode(IZ)V

    .line 625
    return-void
.end method

.method public setRttMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 777
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    .line 778
    return-void
.end method

.method public setRttMode(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 782
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    .line 783
    return-void
.end method

.method public setTtyMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 714
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->setTtyMode(II)V

    .line 715
    return-void
.end method

.method public setTtyMode(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v0, v0, p1

    .line 731
    .local v0, "prevMode":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aput p2, v1, p1

    .line 733
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTtyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 735
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v2, v2, p1

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setTtyMode(II)V

    .line 737
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_0

    .line 738
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTtyMode: not updating sessions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void

    .line 742
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 744
    .local v1, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v1, :cond_1

    .line 745
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "when non-registered status, do not pass TTY Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 749
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 750
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 756
    :cond_2
    const v2, 0x30000015

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aget v4, v4, p1

    invoke-interface {v2, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 759
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->setTtyMode(II)V

    .line 761
    return-void

    .line 751
    :cond_3
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTtyMode: do not call setTtyMode() for non IMS TTY operator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mTtyMode:[I

    aput v0, v2, p1

    .line 753
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 718
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUiTTYMode: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->setTtyMode(II)V

    .line 720
    if-eqz p3, :cond_0

    iget-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 722
    :try_start_0
    iget-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setUpTest(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;)V
    .locals 3
    .param p1, "manager"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p2, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p3, "media"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    .line 113
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpTest:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForIncomingCallEvent(Landroid/os/Handler;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDialogEvent(Landroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRtpLossRateNoti(Landroid/os/Handler;)V

    .line 121
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 122
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 123
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x12

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method protected startEpdnDisconnectTimer(IJ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "millis"    # J

    .line 311
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->stopEpdnDisconnectTimer(I)V

    .line 313
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRetryTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 315
    .local v0, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 316
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 319
    return-void
.end method

.method protected stopEpdnDisconnectTimer(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEpdnDisconnectTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 328
    .local v0, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 329
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "dialogId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transferCall(ILjava/lang/String;Ljava/lang/String;[Lcom/sec/ims/DialogEvent;)V

    .line 1029
    return-void
.end method

.method public unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    .line 711
    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IDialogEventListener;

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 685
    return-void
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 675
    return-void
.end method

.method public updateAudioInterface(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I

    .line 941
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface, phoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->getAudioMode(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "mode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 945
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 948
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 949
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 951
    const/4 v3, 0x2

    .local v3, "cmcType":I
    :goto_0
    if-gt v3, v2, :cond_3

    .line 952
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_1

    .line 954
    goto :goto_2

    .line 951
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 946
    .end local v3    # "cmcType":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 960
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 961
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "There is no IMS Registration take Emergency Regi"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 965
    :cond_4
    if-eqz v1, :cond_5

    .line 966
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateAudioInterface(ILjava/lang/String;)V

    .line 969
    :cond_5
    const-string v2, "STOP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 970
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->forceNotifyCurrentCodec()V

    .line 972
    :cond_6
    return-void
.end method

.method public updateSSACInfo(IIII)I
    .locals 6
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I

    .line 922
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mDefaultPhoneId:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(IIIII)I

    move-result v0

    return v0
.end method

.method public updateSSACInfo(IIIII)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "voiceFactor"    # I
    .param p3, "voiceTime"    # I
    .param p4, "videoFactor"    # I
    .param p5, "videoTime"    # I

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    if-nez v0, :cond_0

    .line 927
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSsacManager was not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->updateSSACInfo(IIIII)V

    .line 931
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
