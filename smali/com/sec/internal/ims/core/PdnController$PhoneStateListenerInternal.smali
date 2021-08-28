.class Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mInternalSimSlot:I

.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;I)V
    .locals 0
    .param p2, "simSlot"    # I

    .line 350
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    .line 351
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 352
    iput p2, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    .line 353
    return-void
.end method


# virtual methods
.method public getInternalSimSlot()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    return v0
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 5
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 474
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCellLocationChanged: ns="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    if-eqz v0, :cond_0

    const-string v4, "not null"

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 477
    return-void

    .line 480
    :cond_1
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellLocation(Landroid/telephony/CellLocation;)V

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController;->access$800(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 484
    .local v2, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    iget v3, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;I)V

    .line 485
    .end local v2    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_1

    .line 486
    :cond_3
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 4
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 490
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController;->access$800(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 492
    .local v1, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    iget v2, p0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V

    .line 493
    .end local v1    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 21
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget v3, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 362
    .local v2, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    new-instance v3, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v3, v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 363
    .local v3, "serviceState":Lcom/sec/internal/helper/os/ServiceStateWrapper;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v4, "changed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 366
    .local v5, "needNotify":Z
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v6

    .line 367
    .local v6, "dataRegState":I
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    .line 368
    .local v9, "newEmerOnlyReg":Z
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v10

    const-string v11, "=>"

    if-eq v9, v10, :cond_2

    .line 369
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EmergencyOnlyReg:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v10, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget v12, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyOnly(Z)V

    .line 373
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getLteImsVoiceAvail()I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v10

    .line 374
    .local v10, "newVops":Lcom/sec/internal/constants/ims/os/VoPsIndication;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v12

    if-eq v10, v12, :cond_3

    .line 375
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VoPS:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v2, v10}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    .line 377
    const/4 v5, 0x1

    .line 380
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getLteIsEbSupported()I

    move-result v12

    invoke-static {v12}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->translateEmcbs(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v12

    .line 381
    .local v12, "emcbsIndication":Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getRilVoiceRadioTechnology()I

    move-result v13

    const/16 v14, 0xe

    if-ne v13, v14, :cond_4

    goto :goto_2

    .line 383
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getRilVoiceRadioTechnology()I

    move-result v13

    if-nez v13, :cond_5

    .line 386
    sget-object v12, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    goto :goto_2

    .line 390
    :cond_5
    sget-object v12, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 393
    :goto_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v13

    if-eq v13, v12, :cond_6

    .line 394
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmcBsIndi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v2, v12}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V

    .line 398
    :cond_6
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v13

    .line 399
    .local v13, "voiceRegState":I
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v14

    if-eq v14, v13, :cond_7

    .line 400
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VoiceReg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v2, v13}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 402
    const/4 v5, 0x1

    .line 405
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v14

    .line 406
    .local v14, "voiceNetworkType":I
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v15

    if-eq v15, v14, :cond_8

    .line 407
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceNet:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v2, v14}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceNetworkType(I)V

    .line 409
    const/4 v5, 0x1

    .line 412
    :cond_8
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v7

    .line 413
    .local v7, "newPsOnlyReg":Z
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v15

    if-eq v7, v15, :cond_9

    .line 414
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PsOnly:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v2, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPsOnlyReg(Z)V

    .line 416
    const/4 v5, 0x1

    .line 419
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result v8

    const/4 v15, 0x3

    if-ne v8, v15, :cond_a

    .line 420
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setInternationalRoaming(Z)V

    goto :goto_3

    .line 422
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setInternationalRoaming(Z)V

    .line 425
    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRoaming()Z

    move-result v8

    .line 426
    .local v8, "newDataRoaming":Z
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v15

    if-eq v8, v15, :cond_b

    .line 427
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "needNotify":Z
    .local v16, "needNotify":Z
    const-string v5, "DataRoaming:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRaoming(Z)V

    .line 429
    const/4 v5, 0x1

    .end local v16    # "needNotify":Z
    .restart local v5    # "needNotify":Z
    goto :goto_4

    .line 426
    :cond_b
    move/from16 v16, v5

    .line 432
    :goto_4
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v15

    .line 433
    .local v15, "newVoiceRoaming":Z
    move/from16 v16, v5

    .end local v5    # "needNotify":Z
    .restart local v16    # "needNotify":Z
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v5

    if-eq v15, v5, :cond_c

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v7

    .end local v7    # "newPsOnlyReg":Z
    .local v17, "newPsOnlyReg":Z
    const-string v7, "VoiceRoaming:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2, v15}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRoaming(Z)V

    .line 436
    const/4 v5, 0x1

    .end local v16    # "needNotify":Z
    .restart local v5    # "needNotify":Z
    goto :goto_5

    .line 433
    .end local v5    # "needNotify":Z
    .end local v17    # "newPsOnlyReg":Z
    .restart local v7    # "newPsOnlyReg":Z
    .restart local v16    # "needNotify":Z
    :cond_c
    move/from16 v17, v7

    .end local v7    # "newPsOnlyReg":Z
    .restart local v17    # "newPsOnlyReg":Z
    move/from16 v5, v16

    .line 439
    .end local v16    # "needNotify":Z
    .restart local v5    # "needNotify":Z
    :goto_5
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "newOperatorNumeric":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_e

    move/from16 v16, v5

    .end local v5    # "needNotify":Z
    .restart local v16    # "needNotify":Z
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    .end local v8    # "newDataRoaming":Z
    .local v18, "newDataRoaming":Z
    const-string v8, "Operator:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v2, v7}, Lcom/sec/internal/constants/ims/os/NetworkState;->setOperatorNumeric(Ljava/lang/String;)V

    .line 443
    const/4 v5, 0x1

    .end local v16    # "needNotify":Z
    .restart local v5    # "needNotify":Z
    goto :goto_7

    .line 440
    .end local v5    # "needNotify":Z
    .end local v18    # "newDataRoaming":Z
    .restart local v8    # "newDataRoaming":Z
    .restart local v16    # "needNotify":Z
    :cond_d
    move/from16 v18, v8

    .end local v8    # "newDataRoaming":Z
    .restart local v18    # "newDataRoaming":Z
    goto :goto_6

    .end local v16    # "needNotify":Z
    .end local v18    # "newDataRoaming":Z
    .restart local v5    # "needNotify":Z
    .restart local v8    # "newDataRoaming":Z
    :cond_e
    move/from16 v16, v5

    move/from16 v18, v8

    .line 446
    .end local v5    # "needNotify":Z
    .end local v8    # "newDataRoaming":Z
    .restart local v16    # "needNotify":Z
    .restart local v18    # "newDataRoaming":Z
    :goto_6
    move/from16 v5, v16

    .end local v16    # "needNotify":Z
    .restart local v5    # "needNotify":Z
    :goto_7
    iget-object v8, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    move/from16 v16, v5

    .end local v5    # "needNotify":Z
    .restart local v16    # "needNotify":Z
    iget v5, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/PdnController;->access$400(Lcom/sec/internal/ims/core/PdnController;I)Z

    move-result v5

    .line 447
    .local v5, "newDataConnectedState":Z
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v8

    if-eq v5, v8, :cond_f

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    .end local v7    # "newOperatorNumeric":Ljava/lang/String;
    .local v19, "newOperatorNumeric":Ljava/lang/String;
    const-string v7, "DataConnState:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataConnectionState(Z)V

    .line 450
    const/4 v7, 0x1

    .end local v16    # "needNotify":Z
    .local v7, "needNotify":Z
    goto :goto_8

    .line 447
    .end local v19    # "newOperatorNumeric":Ljava/lang/String;
    .local v7, "newOperatorNumeric":Ljava/lang/String;
    .restart local v16    # "needNotify":Z
    :cond_f
    move-object/from16 v19, v7

    .end local v7    # "newOperatorNumeric":Ljava/lang/String;
    .restart local v19    # "newOperatorNumeric":Ljava/lang/String;
    move/from16 v7, v16

    .line 453
    .end local v16    # "needNotify":Z
    .local v7, "needNotify":Z
    :goto_8
    nop

    .line 454
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getRilMobileDataRadioTechnology()I

    move-result v8

    .line 453
    invoke-static {v8}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    .line 455
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 457
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v8

    iget v11, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    move-object/from16 v16, v2

    .end local v2    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    .local v16, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    .end local v5    # "newDataConnectedState":Z
    .local v20, "newDataConnectedState":Z
    const-string/jumbo v5, "onServiceStateChanged: state="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "Changed="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v5, ", "

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {v8, v11, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    iget-object v2, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/PdnController;->access$502(Lcom/sec/internal/ims/core/PdnController;Z)Z

    .line 462
    iget-object v2, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v5

    iget v8, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-static {v2, v5, v6, v7, v8}, Lcom/sec/internal/ims/core/PdnController;->access$600(Lcom/sec/internal/ims/core/PdnController;IIZI)V

    .line 463
    iget-object v2, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getSnapshotStatus()I

    move-result v5

    iget v8, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-static {v2, v5, v8}, Lcom/sec/internal/ims/core/PdnController;->access$700(Lcom/sec/internal/ims/core/PdnController;II)V

    .line 465
    iget-object v2, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController;->access$100(Lcom/sec/internal/ims/core/PdnController;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v2

    .line 466
    .local v2, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v2, :cond_10

    .line 467
    iget v5, v0, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->mInternalSimSlot:I

    invoke-interface {v2, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    .line 469
    :cond_10
    return-void
.end method
