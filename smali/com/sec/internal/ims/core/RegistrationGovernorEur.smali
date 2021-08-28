.class public Lcom/sec/internal/ims/core/RegistrationGovernorEur;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorEur.java"


# static fields
.field private static final DELAYED_DEREGISTER_TIMER:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnEur"


# instance fields
.field private checkEndPcscfList:Z

.field protected mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDirectRetry:Z

.field private mPcscfRetryTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegiRetryLimit:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 5
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryLimit:I

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedToCheckSrvcc:Z

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedToCheckLocationSetting:Z

    .line 74
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v3, "RegiGvnEur"

    const-string v4, "Register : ShutdownEventReceiver"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v0, v3, v1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    .line 79
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 80
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHandlePcscfOnAlternativeCall:Z

    .line 81
    return-void
.end method

.method private applyEntitlementStatus(Ljava/util/Set;I)Ljava/util/Set;
    .locals 7
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

    .line 435
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 438
    :cond_0
    const-string/jumbo v0, "smsip"

    const-string v1, "mmtel"

    const-string v2, "mmtel-video"

    const/16 v3, 0x12

    const-string v4, "RegiGvnEur"

    if-eq p2, v3, :cond_2

    .line 439
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoLteEntitlementStatus(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 440
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v6, "VoLTE ES not ready"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 441
    invoke-virtual {p0, p1, v2, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, p1, v1, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getSMSoIpEntitlementStatus(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 446
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v6, "SMS ES not ready"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    invoke-virtual {p0, p1, v0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_2
    if-ne p2, v3, :cond_4

    .line 452
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoWiFiEntitlementStatus(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 453
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v5, "VoWiFi ES not ready"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    invoke-virtual {p0, p1, v2, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0, p1, v1, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getSMSoIpEntitlementStatus(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 459
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v2, "SMS ES not ready at IWLAN"

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_4
    return-object p1
.end method

.method private applyRcsSwitch(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 16
    .param p4, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 397
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-static {v1, v3, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 398
    .local v1, "switchValue":Landroid/content/ContentValues;
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x1

    const-string v6, "RegiGvnEur"

    if-nez v3, :cond_4

    const/16 v3, 0x12

    move/from16 v7, p4

    if-eq v7, v3, :cond_3

    .line 399
    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v8, "Mobile off!"

    invoke-static {v6, v3, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 402
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v3, v9

    .line 403
    .local v10, "service":Ljava/lang/String;
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 404
    .local v11, "serviceSwitch":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v5, :cond_0

    .line 405
    const-string v12, "MobileOff"

    move-object/from16 v13, p3

    invoke-virtual {v0, v13, v10, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_0
    move-object/from16 v13, p3

    .line 402
    .end local v10    # "service":Ljava/lang/String;
    .end local v11    # "serviceSwitch":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p3

    goto :goto_2

    .line 401
    :cond_2
    move-object/from16 v13, p3

    goto :goto_2

    .line 398
    :cond_3
    move-object/from16 v13, p3

    goto :goto_2

    :cond_4
    move-object/from16 v13, p3

    move/from16 v7, p4

    .line 411
    :goto_2
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v3, v8}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 413
    iget v3, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isGlsEnabled(I)Z

    move-result v3

    .line 414
    .local v3, "isEnableGls":Z
    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isEcEnabled(I)Z

    move-result v8

    .line 415
    .local v8, "isEnableEc":Z
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_9

    .line 416
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_3
    if-ge v2, v10, :cond_8

    aget-object v11, v9, v2

    .line 417
    .local v11, "service":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 418
    .local v12, "serviceSwitch":Ljava/lang/Integer;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_7

    .line 419
    iget v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "by switch and DM + service "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v14, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    const-string v5, "gls"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v14, "skip service "

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 421
    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " , isEnableGls is "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v5, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    move-object/from16 v5, p2

    goto :goto_4

    .line 423
    :cond_5
    const-string v5, "ec"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v8, :cond_6

    .line 424
    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " , isEnableEc is "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v5, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    move-object/from16 v5, p2

    goto :goto_4

    .line 427
    :cond_6
    move-object/from16 v5, p2

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 418
    :cond_7
    move-object/from16 v5, p2

    .line 416
    .end local v11    # "service":Ljava/lang/String;
    .end local v12    # "serviceSwitch":Ljava/lang/Integer;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v5, p2

    goto :goto_5

    .line 415
    :cond_9
    move-object/from16 v5, p2

    goto :goto_5

    .line 411
    .end local v3    # "isEnableGls":Z
    .end local v8    # "isEnableEc":Z
    :cond_a
    move-object/from16 v5, p2

    .line 432
    :goto_5
    return-void
.end method

.method private checkAvailableRat(I)Z
    .locals 6
    .param p1, "rat"    # I

    .line 571
    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 572
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 573
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "RegiGvnEur"

    const-string v3, "isReadyToRegister: Not LTE area"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 580
    :cond_1
    return v2

    .line 583
    :cond_2
    return v0
.end method

.method private checkDeregisterTimer()Z
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "RegiGvnEur"

    const-string v2, "isReadyToRegister: DelayedDeregisterTimer Running."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v2, "isReadyToRegister: LTE attached. Delete DelayedDeregisterTimer."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->onDelayedDeregister()V

    goto :goto_1

    .line 591
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkSetupWizard()Z
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 563
    .local v0, "isSetupWizardCompleted":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 564
    const-string v1, "RegiGvnEur"

    const-string v3, "SetupWizard is not completed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v2

    .line 567
    :cond_1
    return v1
.end method

.method private getActualWaitTime()I
    .locals 4

    .line 538
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()I

    move-result v0

    .line 539
    .local v0, "wait":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    .line 540
    return v0
.end method

.method private handleServiceUnavailable(I)I
    .locals 8
    .param p1, "retryAfter"    # I

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 804
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 806
    :cond_0
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    goto :goto_1

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 808
    if-eqz p1, :cond_5

    .line 809
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    goto :goto_1

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    move p1, v0

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 814
    .local v0, "waitTime":J
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getLastPcscfIp()Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "lastPcscf":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 816
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_4
    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 820
    .end local v0    # "waitTime":J
    .end local v2    # "lastPcscf":Ljava/lang/String;
    :cond_5
    :goto_1
    return p1
.end method

.method private handleTmobileVolteError(Lcom/sec/ims/util/SipError;I)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 824
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 825
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 826
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 829
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    .line 831
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_2

    .line 832
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 833
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    .line 834
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 837
    :cond_2
    return-void
.end method

.method private isGlsEnabled(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    const-string v1, "geolocPushAuth"

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isLastPcscfAddr()Z
    .locals 2

    .line 797
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNumOfPcscfIp:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 3
    .param p3, "lp"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    .local p1, "pcscfs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "validPcscfIp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "RegiGvnEur"

    const-string v2, "ipv4"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    .local v1, "pcscf":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v1    # "pcscf":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 290
    :cond_1
    return-object p2
.end method

.method public allowRoaming()Z
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RegiGvnEur"

    if-eqz v0, :cond_0

    .line 700
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v3, "allowRoaming: Emergency profile. Return true."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    return v1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->BTOP:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isInternationalRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    const/4 v0, 0x0

    return v0

    .line 708
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v3, "allowRoaming: Domestic roaming. Return true."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 709
    return v1

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v0

    return v0
.end method

.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    return-object p1

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const-string v2, "RegiGvnEur"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    .line 477
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    .line 478
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "not support VoPS, filtering mmtel, mmtel-video."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "mmtel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-object p1

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_3

    .line 485
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "by VoPS policy: remove all service"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 489
    :cond_3
    return-object p1
.end method

.method protected checkCallStatus()Z
    .locals 7

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 546
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isSrvccCase()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "RegiGvnEur"

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE_SWITZERLAND:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v2, "isReadyToRegister: SRVCC case"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 549
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "isReadyToRegister: Skip deregister SRVCC"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    return v2

    .line 554
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "isReadyToRegister: call state is not idle"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 555
    return v2

    .line 558
    :cond_3
    :goto_1
    return v1
.end method

.method protected checkRcsEvent(I)Z
    .locals 8
    .param p1, "rat"    # I

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string/jumbo v2, "rcs_pre_consent"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    .line 606
    invoke-static {v0, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 607
    .local v0, "isRcsUserSettingEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 608
    .local v2, "configVersion":I
    const-string v4, "RegiGvnEur"

    if-gtz v2, :cond_1

    if-nez v0, :cond_1

    .line 609
    const-string v1, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v3

    .line 613
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v7, "defaultmsgappinuse"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 614
    const-string v1, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v3

    .line 618
    .end local v0    # "isRcsUserSettingEnabled":Z
    .end local v2    # "configVersion":I
    :cond_2
    return v1
.end method

.method public determineDeRegistration(II)Z
    .locals 10
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 841
    if-nez p1, :cond_3

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 844
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    const-string v9, "Telenor DK delay 5s to deregister"

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 845
    return v3

    .line 848
    :cond_0
    const/4 v0, 0x0

    .line 849
    .local v0, "localDeRegi":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 850
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ims"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isSrvccCase()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    move v0, v1

    .line 853
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Deregister."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "RegiGvnEur"

    invoke-static {v6, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no IMS service for network : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 856
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 857
    return v3

    .line 860
    .end local v0    # "localDeRegi":Z
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v0

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 10
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

    .line 342
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 345
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

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

    .line 346
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 347
    .local v5, "isVoLteEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v8, "defaultmsgappinuse"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 349
    .local v4, "isDefaultAppInUsed":Z
    :goto_2
    if-nez v2, :cond_3

    .line 350
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v6, "RegiGvnEur"

    const-string v7, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v6, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 352
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 355
    :cond_3
    if-eqz v5, :cond_4

    .line 356
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 357
    const-string v6, "mmtel"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 358
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 363
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 364
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyRcsSwitch(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)V

    .line 366
    const/16 v6, 0xd

    const/16 v7, 0xb

    if-ne p2, v6, :cond_5

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 367
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 368
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 369
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 370
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 371
    return-object v0

    .line 375
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 376
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 379
    :cond_6
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz v6, :cond_7

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 380
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->applyEntitlementStatus(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 383
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 384
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 387
    :cond_8
    if-nez v4, :cond_9

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 388
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v3, v7, :cond_9

    aget-object v8, v6, v3

    .line 389
    .local v8, "service":Ljava/lang/String;
    const-string v9, "RCS service off"

    invoke-virtual {p0, v1, v8, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v8    # "service":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 393
    :cond_9
    return-object v1
.end method

.method public getLastPcscfIp()Ljava/lang/String;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfIpList:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "RegiGvnEur"

    const-string v2, "getPcscf: empty P-CSCF list."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v1

    .line 139
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    if-gez v0, :cond_1

    .line 140
    return-object v1

    .line 143
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, -0x1

    .line 144
    .local v0, "lastPcscfIpIdx":I
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    if-nez v2, :cond_2

    .line 145
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNumOfPcscfIp:I

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfIpList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v0, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "lastPcscf":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 150
    return-object v1

    .line 152
    :cond_3
    return-object v2
.end method

.method protected getWaitTime()I
    .locals 2

    .line 525
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegBaseTime:I

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    shl-int/2addr v0, v1

    .line 527
    .local v0, "waitTime":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMaxTime:I

    if-le v0, v1, :cond_1

    .line 528
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMaxTime:I

    .line 530
    :cond_1
    return v0
.end method

.method protected handleForbiddenError(I)V
    .locals 8
    .param p1, "retryAfter"    # I

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const-string v2, "RegiGvnEur"

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_0

    if-lez p1, :cond_0

    goto/16 :goto_1

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v6

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    new-array v1, v7, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEmergencyInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    .line 726
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "onRegistrationError: No need permant fail in emergency registering"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 728
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto :goto_2

    .line 730
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "onRegistrationError: Permanently prohibited."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 731
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_5

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 734
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto :goto_2

    .line 724
    :cond_3
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "onRegistrationError: Retry to next PCSCF address in case 403 Forbidden"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 721
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "onRegistrationError: Retry to same PCSCF address in case 403 Forbidden"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    .line 737
    :cond_5
    :goto_2
    return-void
.end method

.method protected handleRetryTimer(I)V
    .locals 9
    .param p1, "retryAfter"    # I

    .line 759
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 767
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    if-eqz v0, :cond_1

    .line 768
    const/4 p1, 0x1

    .line 774
    :cond_1
    if-nez p1, :cond_2

    .line 775
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getActualWaitTime()I

    move-result p1

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryAfter set to ActualWaitTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mFailureCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnEur"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 783
    .local v3, "getRetryTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_3

    .line 784
    const/4 p1, 0x1

    goto :goto_0

    .line 786
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v3, v5

    div-long/2addr v5, v1

    long-to-int p1, v5

    goto :goto_0

    .line 789
    .end local v3    # "getRetryTime":J
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()I

    move-result p1

    .line 792
    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    mul-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiAt:J

    .line 793
    int-to-long v3, p1

    mul-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->startRetryTimer(J)V

    .line 794
    return-void
.end method

.method protected handleTimeoutError(I)V
    .locals 4
    .param p1, "retryAfter"    # I

    .line 741
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    const-string v1, "RegiGvnEur"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_1

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 744
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->resetPcscfList()V

    goto :goto_0

    .line 746
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v2, "onRegistrationError: skip resetPcscfList."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    .line 752
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v2, "onRegistrationError: Orange requirment,send Try register after timer F next PCSF address"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 755
    :cond_2
    return-void
.end method

.method public isDelayedDeregisterTimerRunning()Z
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunningWithCallStatus()Z

    move-result v0

    return v0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTeliaCo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isLocationInfoLoaded(I)Z

    move-result v0

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 623
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkAvailableRat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkWFCsettings(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkDeregisterTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkNetworkEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkDelayedStopPdnEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkRcsEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 623
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 6

    .line 190
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    return v1

    .line 194
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 195
    return v1

    .line 198
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentPdnFailed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    const/16 v3, 0x12

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 203
    :cond_3
    return v1

    .line 206
    :cond_4
    return v2
.end method

.method public onDelayedDeregister()V
    .locals 0

    .line 643
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->runDelayedDeregister()V

    .line 644
    return-void
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 248
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "isNeedToStop":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "matchfrompdnfail":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 254
    .local v2, "retryTime":J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 255
    const/4 v0, 0x1

    .line 256
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 259
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->setRetryTimeOnPdnFail(J)V

    .line 262
    :cond_1
    if-eqz v0, :cond_3

    .line 263
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 264
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 265
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentPdnFailed:Z

    .line 266
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNonVoLTESimByPdnFail:Z

    .line 267
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 268
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_3

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    .line 272
    :cond_3
    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 661
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationDone: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryLimit:I

    .line 663
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    .line 664
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiAt:J

    .line 665
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->stopRetryTimer()V

    .line 666
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryLimit:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: REGI_RETRY_LIMIT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " so ship re-config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiRetryLimit:I

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    .line 95
    :goto_0
    return-void

    .line 98
    :cond_1
    if-gez p2, :cond_2

    .line 99
    const/4 p2, 0x0

    .line 101
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNeedDirectRetry:Z

    .line 103
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 104
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 105
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    .line 106
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 111
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    .line 112
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    .line 114
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleForbiddenError(I)V

    .line 116
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    if-eqz v0, :cond_6

    .line 117
    return-void

    .line 119
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleTimeoutError(I)V

    .line 121
    return-void

    .line 122
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleServiceUnavailable(I)I

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleTmobileVolteError(Lcom/sec/ims/util/SipError;I)V

    .line 130
    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleRetryTimer(I)V

    goto :goto_2

    .line 109
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 132
    :goto_2
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 495
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

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

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsService(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "403 Forbidden for RCS service"

    invoke-virtual {v0, v3, v1, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 499
    const-string/jumbo v0, "onSipError() deregister RCS by 403 Forbidden"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    const-string/jumbo v0, "smsip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 506
    :cond_1
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 516
    :cond_4
    return-object p2
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 164
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    :cond_0
    if-nez p1, :cond_3

    .line 166
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x193

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 167
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mSubscribeForbiddenCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mSubscribeForbiddenCounter:I

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v5, "Subscribe Error. Deregister.."

    invoke-virtual {v0, v4, v1, v1, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mSubscribeForbiddenCounter:I

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    .line 172
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onSubscribeError: state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mFailureCounter: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isLastPcscfAddr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurPcscfIpIdx:I

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getWaitTime()I

    move-result v0

    .line 180
    .local v0, "retryAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiAt:J

    .line 181
    int-to-long v1, v0

    mul-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->startRetryTimer(J)V

    .line 182
    .end local v0    # "retryAfter":I
    goto :goto_0

    .line 183
    :cond_2
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mSubscribeForbiddenCounter:I

    .line 186
    :cond_3
    :goto_0
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 7
    .param p1, "callState"    # I

    .line 316
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCallStatus:I

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v3

    sget-object v5, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v1

    const/4 v5, 0x3

    sget-object v6, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCallStatus:I

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updatePcscfIpList(Ljava/util/List;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getBlockDeregiOnSrvcc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCallStatus:I

    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDeregisterWithVoPSNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDeregisterWithRATNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    .line 328
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_3

    .line 329
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v1, "RegiGvnEur"

    const-string/jumbo v2, "onTelephonyCallStatusChanged: delayedDeregisterTimer 10 seconds start"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->setDelayedDeregisterTimerRunning(Z)V

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 334
    :cond_3
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 4
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 866
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->releaseThrottle(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateGeolocation(Ljava/lang/String;)Z

    .line 875
    :cond_1
    return v3
.end method

.method public onVolteSettingChanged()V
    .locals 5

    .line 630
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolteSettingChanged: isVolteOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getVoiceTechType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnEur"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->updateEutranValues()V

    .line 634
    :cond_1
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 5
    .param p1, "releaseCase"    # I

    .line 214
    const-string v0, "RegiGvnEur"

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 215
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    .line 216
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentPdnFailed:Z

    .line 217
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNonVoLTESimByPdnFail:Z

    goto :goto_1

    .line 218
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->isDelayedDeregisterTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string/jumbo v3, "releaseThrottle: delete DelayedDeregisterTimer on fligt mode"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->setDelayedDeregisterTimerRunning(Z)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    const-string v3, "onReceive: FLIGHT_MODE is changed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 225
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "flight mode enabled"

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 227
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    goto :goto_1

    .line 228
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 229
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    .line 230
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentPdnFailed:Z

    .line 231
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCurImpu:I

    .line 232
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNonVoLTESimByPdnFail:Z

    .line 235
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentStopped:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsPermanentPdnFailed:Z

    if-nez v2, :cond_6

    .line 236
    :cond_5
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseThrottle: case by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_7

    .line 240
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mFailureCounter:I

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mRegiAt:J

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->stopRetryTimer()V

    .line 244
    :cond_7
    return-void
.end method

.method public resetPcscfList()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mIsValid:Z

    .line 158
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->checkEndPcscfList:Z

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPcscfRetryTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    return-void
.end method

.method public updateEutranValues()V
    .locals 8

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->getVoiceTechType()I

    move-result v0

    .line 679
    .local v0, "voiceTech":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEutranValues : voiceTech : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiGvnEur"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 682
    .local v1, "eutranValue":Landroid/content/ContentValues;
    const/4 v2, 0x1

    const-string/jumbo v3, "voice_domain_pref_eutran"

    if-nez v0, :cond_1

    .line 684
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v7, v5, v6

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mNonVoLTESimByPdnFail:Z

    if-eqz v4, :cond_2

    .line 690
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.sec.ims.settings/global"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 693
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "pcscfIpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegiGvnEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mCallStatus:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 307
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mLastPcscfList:Ljava/util/List;

    goto :goto_0

    .line 310
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;)V

    .line 312
    :goto_0
    return-void
.end method
