.class public Lcom/sec/internal/ims/rcs/RcsPolicyManager;
.super Landroid/os/Handler;
.source "RcsPolicyManager.java"

# interfaces
.implements Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;


# static fields
.field private static final EVENT_RCS_ALLOWED_CHANGED:I = 0x9

.field private static final EVENT_RCS_POLICY_CHANGED:I = 0xa

.field private static final EVENT_RCS_ROAMING_PREF:I = 0x8

.field private static final EVT_SIM_READY:I = 0x0

.field private static final EVT_SIM_REFRESH:I = 0x3

.field private static mRcsStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected final context:Landroid/content/Context;

.field private mPcscfIdx:I

.field private mRcsContentObserver:Landroid/database/ContentObserver;

.field private mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 79
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 81
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 83
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simManagers"    # Ljava/util/List;

    .line 110
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    .line 87
    new-instance v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;-><init>(Lcom/sec/internal/ims/rcs/RcsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    .line 113
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/rcs/RcsPolicyManager;
    .param p1, "x1"    # I

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->onRcsRoamingPrefChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/rcs/RcsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->onRCSAllowedChangedbyMDM()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/rcs/RcsPolicyManager;
    .param p1, "x1"    # I

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->updateRcsStrategy(I)V

    return-void
.end method

.method private checkDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 381
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "curPcscfIp":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    .line 383
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v2

    .line 385
    .local v2, "otherPhoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    .line 386
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 387
    return v4

    .line 389
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 390
    .local v6, "otherTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v8, :cond_1

    .line 391
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isSameRcsOperator(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "pcscf":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDualRcsPcscfIp : REGISTERED, : pcscf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "RcsPolicyMgr"

    invoke-static {v9, v2, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 395
    const/4 v4, 0x1

    return v4

    .line 399
    .end local v6    # "otherTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local v7    # "pcscf":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 400
    :cond_2
    return v4
.end method

.method public static getRcsConfig(Landroid/content/Context;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;ZI)Lcom/sec/internal/constants/ims/config/RcsConfig;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simMno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "requestregi"    # Z
    .param p4, "phoneId"    # I

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 617
    return-object v4

    .line 620
    :cond_0
    const/4 v3, 0x0

    if-nez p3, :cond_3

    .line 621
    invoke-static {v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "rcsAs":Ljava/lang/String;
    const-string v6, "jibe"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 624
    const-string v4, ""

    .line 625
    .local v4, "suspenduser":Ljava/lang/String;
    invoke-static {v0, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 627
    const-string/jumbo v4, "soft"

    .line 628
    const-string v3, "RcsPolicyMgr"

    const-string v6, "IMS deregister : RCS off from user"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/config/RcsConfig;

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/config/RcsConfig;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 632
    .end local v4    # "suspenduser":Ljava/lang/String;
    :cond_2
    return-object v4

    .line 635
    .end local v5    # "rcsAs":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "rcs_ft_chunk_size"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    .line 636
    .local v4, "ftchunksize":I
    const-string/jumbo v5, "rcs_ish_chunk_size"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v19

    .line 637
    .local v19, "ishchunksize":I
    const-string v5, "msrp_cema"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v20

    .line 638
    .local v20, "isMsrpCema":Z
    const-string v5, "conf_subscribe_enabled"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v21

    .line 640
    .local v21, "isConfSubscribeEnabled":Z
    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 641
    const-string v5, "SwitchoverSize"

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x514

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v22, v5

    .local v5, "pagerModeLimit":I
    goto :goto_0

    .line 643
    .end local v5    # "pagerModeLimit":I
    :cond_4
    const-string/jumbo v5, "pager_mode_size_limit"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    move/from16 v22, v5

    .line 646
    .local v22, "pagerModeLimit":I
    :goto_0
    const-string v5, "aggr_imdn_supported"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v23

    .line 648
    .local v23, "isAggrImdnSupported":Z
    const-string v5, ""

    .line 649
    .local v5, "confUri":Ljava/lang/String;
    nop

    .line 650
    const-string v7, "conf-fcty-uri"

    invoke-static {v7, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readImsUriParam(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 652
    .local v7, "imsUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v7, :cond_5

    .line 653
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    goto :goto_1

    .line 652
    :cond_5
    move-object/from16 v24, v5

    .line 656
    .end local v5    # "confUri":Ljava/lang/String;
    .local v24, "confUri":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v6}, Lcom/sec/internal/helper/FilePathGenerator;->getFileDownloadPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "downloadsPath":Ljava/lang/String;
    const-string v8, ""

    if-nez v5, :cond_6

    move-object v10, v8

    goto :goto_2

    :cond_6
    move-object v10, v5

    .line 659
    .end local v5    # "downloadsPath":Ljava/lang/String;
    .local v10, "downloadsPath":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    .line 660
    .local v5, "exploderUri":Ljava/lang/String;
    sget-object v9, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    move-object/from16 v15, p1

    if-ne v15, v9, :cond_7

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 661
    nop

    .line 662
    const-string v9, "mass-fcty-uri"

    invoke-static {v9, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 661
    invoke-static {v0, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readImsUriParam(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    move-object/from16 v25, v7

    goto :goto_3

    .line 664
    :cond_7
    nop

    .line 665
    const-string v9, "exploder-uri"

    invoke-static {v9, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 664
    invoke-static {v0, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readImsUriParam(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    move-object/from16 v25, v7

    .line 667
    .end local v7    # "imsUri":Lcom/sec/ims/util/ImsUri;
    .local v25, "imsUri":Lcom/sec/ims/util/ImsUri;
    :goto_3
    if-eqz v25, :cond_8

    invoke-virtual/range {v25 .. v25}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "sip:foo@bar"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 668
    invoke-virtual/range {v25 .. v25}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    goto :goto_4

    .line 671
    :cond_8
    move-object/from16 v26, v5

    .end local v5    # "exploderUri":Ljava/lang/String;
    .local v26, "exploderUri":Ljava/lang/String;
    :goto_4
    const-string v5, "msrp_discard_port"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 673
    .local v3, "useMsrpDiscardPort":Z
    const/4 v5, 0x1

    .line 674
    .local v5, "privacyDisable":Z
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType()I

    move-result v7

    sget-object v9, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v9

    if-lt v7, v9, :cond_9

    .line 675
    nop

    .line 676
    const-string v7, "PrivacyDisable"

    invoke-static {v7, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 675
    invoke-static {v0, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v27, v5

    goto :goto_5

    .line 674
    :cond_9
    move/from16 v27, v5

    .line 679
    .end local v5    # "privacyDisable":Z
    .local v27, "privacyDisable":Z
    :goto_5
    const-string v5, "ChatbotMsgTech"

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 679
    invoke-static {v0, v5, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 681
    .local v28, "cbMsgTech":I
    const-string v5, "endUserConfReqId"

    invoke-static {v5, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 684
    .local v29, "endUserConfReqId":Ljava/lang/String;
    new-instance v30, Lcom/sec/internal/constants/ims/config/RcsConfig;

    move-object/from16 v5, v30

    move v6, v4

    move/from16 v7, v19

    move-object/from16 v8, v24

    move/from16 v9, v20

    move/from16 v11, v21

    move-object/from16 v12, v26

    move/from16 v13, v22

    move v14, v3

    move/from16 v15, v23

    move/from16 v16, v27

    move/from16 v17, v28

    move-object/from16 v18, v29

    invoke-direct/range {v5 .. v18}, Lcom/sec/internal/constants/ims/config/RcsConfig;-><init>(IILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;)V

    return-object v30
.end method

.method public static getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 2
    .param p0, "phoneId"    # I

    .line 168
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object v0
.end method

.method public static getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdn"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "phoneId"    # I

    .line 586
    const-string v0, "SIPoUDP"

    const-string v1, "SIPoTLS"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->isDdsSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 591
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    nop

    .line 592
    const-string/jumbo v4, "pssignalling"

    invoke-static {v4, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-static {p0, v4, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "transport":Ljava/lang/String;
    move-object v5, v4

    .line 594
    .local v5, "rcsTransportPs":Ljava/lang/String;
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 595
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {p0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "rcsAs":Ljava/lang/String;
    invoke-static {p0, p3, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 597
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v6, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v6, v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v6, v8, :cond_2

    .line 598
    const-string v8, "jibe"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 599
    nop

    .line 600
    const-string/jumbo v8, "pssignallingroaming"

    invoke-static {v8, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 599
    invoke-static {p0, v8, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 587
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "transport":Ljava/lang/String;
    .end local v5    # "rcsTransportPs":Ljava/lang/String;
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v7    # "rcsAs":Ljava/lang/String;
    :cond_1
    :goto_0
    nop

    .line 588
    const-string/jumbo v3, "wifisignalling"

    invoke-static {v3, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-static {p0, v3, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 603
    .restart local v4    # "transport":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x582df354

    const/4 v7, 0x2

    if-eq v5, v6, :cond_6

    const v6, -0x582df23a

    if-eq v5, v6, :cond_5

    const v1, -0x582def74

    if-eq v5, v1, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v7

    goto :goto_2

    :cond_6
    const-string v0, "SIPoTCP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_8

    if-eq v3, v7, :cond_7

    .line 612
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 609
    :cond_7
    const-string/jumbo v0, "tls"

    return-object v0

    .line 607
    :cond_8
    const-string/jumbo v0, "tcp"

    return-object v0

    .line 605
    :cond_9
    const-string/jumbo v0, "udp"

    return-object v0
.end method

.method private isWaitingRcsDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)Z"
        }
    .end annotation

    .line 193
    .local p2, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 194
    .local v1, "pendingTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-ne v1, p1, :cond_0

    .line 195
    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v3, v2

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v2

    .line 198
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWaitingRcsDeregister: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RcsPolicyMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v4

    .line 202
    .end local v1    # "pendingTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 203
    :cond_2
    return v2
.end method

.method public static loadRcsSettings(IZ)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "forceReload"    # Z

    .line 172
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->loadRcsSettings(Z)Z

    move-result v0

    return v0
.end method

.method private onRCSAllowedChangedbyMDM()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->notifyRCSAllowedChangedbyMDM()V

    .line 555
    return-void
.end method

.method private onRcsRoamingPrefChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "rcs_roaming_pref"

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 548
    .local v0, "rcsRoamingPref":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcsRoamingPrefChanged: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsPolicyMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->notifyRomaingSettingsChanged(II)V

    .line 551
    return-void
.end method

.method private updateRcsStrategy(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 160
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->makeInstance(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 164
    .local v1, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    sget-object v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method


# virtual methods
.method public changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "pdnController"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .param p3, "pcscf"    # Ljava/lang/String;

    .line 405
    const-string v0, "RcsPolicyMgr"

    const/4 v1, 0x0

    .line 406
    .local v1, "mLocalAddress":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v3

    .line 410
    .local v3, "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    if-nez v3, :cond_0

    .line 411
    const-string v4, "changeIfacename: LinkPropertiesWrapper null"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v2

    .line 414
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 416
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 418
    .local v5, "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    invoke-static {v5}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 420
    .local v6, "netiface":Ljava/net/NetworkInterface;
    if-eqz v6, :cond_1

    .line 421
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "register: Change iface = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    return-object v2

    .line 426
    .end local v5    # "addr":Ljava/net/InetAddress;
    .end local v6    # "netiface":Ljava/net/NetworkInterface;
    :cond_1
    goto :goto_0

    .line 431
    .end local v3    # "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    :cond_2
    goto :goto_1

    .line 429
    :catch_0
    move-exception v3

    .line 430
    .local v3, "e":Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v3    # "e":Ljava/net/SocketException;
    :goto_1
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object v2

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register: changeIfacename : no change - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-object v2
.end method

.method public doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 572
    .local p2, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 573
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 574
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRcsConfig for task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RcsPolicyMgr"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-ne v1, v3, :cond_0

    .line 576
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 578
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v2, v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->triggerAutoConfig(ZILjava/util/List;)Z

    .line 579
    const/4 v1, 0x1

    return v1

    .line 581
    :cond_1
    return v2
.end method

.method public getRcsConfigForUserAgent(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;II)Landroid/os/Bundle;
    .locals 22
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "pdn"    # I
    .param p4, "phoneId"    # I

    .line 439
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 441
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, ""

    .line 442
    .local v7, "password":Ljava/lang/String;
    const-string v8, ""

    .line 443
    .local v8, "realm":Ljava/lang/String;
    const-string v9, ""

    .line 444
    .local v9, "msrpTransType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "transport":Ljava/lang/String;
    const-class v11, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    monitor-enter v11

    .line 447
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getImMsgTech(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "imMsgTech":Ljava/lang/String;
    const/4 v12, 0x0

    .line 449
    .local v12, "useKeepAlive":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getQValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 450
    .local v13, "qVal":Ljava/lang/Integer;
    iget-object v14, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v14, v5}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 452
    .local v14, "rcsAs":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v15, :cond_2

    .line 453
    :try_start_1
    iget-object v15, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    .end local v0    # "imMsgTech":Ljava/lang/String;
    .local v16, "imMsgTech":Ljava/lang/String;
    const-string v0, "UserPwd"

    .line 454
    invoke-static {v0, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v17, v7

    .end local v7    # "password":Ljava/lang/String;
    .local v17, "password":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-static {v15, v0, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v0

    .line 455
    .end local v17    # "password":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    :try_start_3
    const-string v0, "jibe"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    :try_start_4
    const-string/jumbo v0, "sec"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "interop"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->decryptParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v7    # "password":Ljava/lang/String;
    .local v0, "password":Ljava/lang/String;
    move-object v7, v0

    .line 458
    .end local v0    # "password":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    :cond_1
    const-string v0, "RcsPolicyMgr"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v18, v8

    .end local v8    # "realm":Ljava/lang/String;
    .local v18, "realm":Ljava/lang/String;
    :try_start_6
    const-string v8, "getRcsConfigForUserAgent: Rcs Config password="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v5, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 542
    .end local v12    # "useKeepAlive":Z
    .end local v13    # "qVal":Ljava/lang/Integer;
    .end local v14    # "rcsAs":Ljava/lang/String;
    .end local v16    # "imMsgTech":Ljava/lang/String;
    .end local v18    # "realm":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    .end local v8    # "realm":Ljava/lang/String;
    .restart local v18    # "realm":Ljava/lang/String;
    goto/16 :goto_7

    .end local v7    # "password":Ljava/lang/String;
    .end local v18    # "realm":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v17    # "password":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v7, v17

    .end local v8    # "realm":Ljava/lang/String;
    .restart local v18    # "realm":Ljava/lang/String;
    goto/16 :goto_7

    .end local v17    # "password":Ljava/lang/String;
    .end local v18    # "realm":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "realm":Ljava/lang/String;
    .restart local v17    # "password":Ljava/lang/String;
    .restart local v18    # "realm":Ljava/lang/String;
    goto/16 :goto_7

    .line 460
    .end local v17    # "password":Ljava/lang/String;
    .end local v18    # "realm":Ljava/lang/String;
    .local v0, "imMsgTech":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v12    # "useKeepAlive":Z
    .restart local v13    # "qVal":Ljava/lang/Integer;
    .restart local v14    # "rcsAs":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v0    # "imMsgTech":Ljava/lang/String;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "realm":Ljava/lang/String;
    .restart local v16    # "imMsgTech":Ljava/lang/String;
    .restart local v17    # "password":Ljava/lang/String;
    .restart local v18    # "realm":Ljava/lang/String;
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    move-object v7, v0

    .line 461
    .end local v17    # "password":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    :try_start_8
    const-string v0, "RcsPolicyMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getRcsConfigForUserAgent: profile password="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v5, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-ne v3, v0, :cond_4

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v8, v18

    goto :goto_2

    .line 542
    .end local v12    # "useKeepAlive":Z
    .end local v13    # "qVal":Ljava/lang/Integer;
    .end local v14    # "rcsAs":Ljava/lang/String;
    .end local v16    # "imMsgTech":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v8, v18

    goto/16 :goto_7

    .line 465
    .restart local v12    # "useKeepAlive":Z
    .restart local v13    # "qVal":Ljava/lang/Integer;
    .restart local v14    # "rcsAs":Ljava/lang/String;
    .restart local v16    # "imMsgTech":Ljava/lang/String;
    :cond_4
    :goto_1
    :try_start_a
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string/jumbo v8, "realm"

    .line 466
    invoke-static {v8, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    .line 465
    invoke-static {v0, v8, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object v8, v0

    .line 469
    .end local v18    # "realm":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5

    .line 470
    :try_start_b
    iget-object v15, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string/jumbo v0, "wifimedia"

    .line 471
    invoke-static {v0, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v19, v9

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .local v19, "msrpTransType":Ljava/lang/String;
    :try_start_c
    const-string v9, "MSRPoTLS"

    .line 470
    invoke-static {v15, v0, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v9, v0

    move-object/from16 v20, v10

    .end local v19    # "msrpTransType":Ljava/lang/String;
    .local v0, "msrpTransType":Ljava/lang/String;
    goto :goto_3

    .line 542
    .end local v0    # "msrpTransType":Ljava/lang/String;
    .end local v12    # "useKeepAlive":Z
    .end local v13    # "qVal":Ljava/lang/Integer;
    .end local v14    # "rcsAs":Ljava/lang/String;
    .end local v16    # "imMsgTech":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v9, v19

    goto/16 :goto_7

    .end local v19    # "msrpTransType":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v19, v9

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    goto/16 :goto_7

    .line 473
    .end local v19    # "msrpTransType":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v12    # "useKeepAlive":Z
    .restart local v13    # "qVal":Ljava/lang/Integer;
    .restart local v14    # "rcsAs":Ljava/lang/String;
    .restart local v16    # "imMsgTech":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v9

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    :try_start_d
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    .line 474
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 475
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v9, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string/jumbo v15, "psmedia"

    .line 476
    invoke-static {v15, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object/from16 v20, v10

    .end local v10    # "transport":Ljava/lang/String;
    .local v20, "transport":Ljava/lang/String;
    :try_start_e
    const-string v10, "MSRP"

    .line 475
    invoke-static {v9, v15, v10}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 477
    .end local v19    # "msrpTransType":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    move-object v10, v9

    .line 478
    .local v10, "rcsTransportPsMedia":Ljava/lang/String;
    :try_start_f
    iget-object v15, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v15, v5, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 479
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "jibe"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 480
    iget-object v15, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v0, "psmediaroaming"

    .line 481
    invoke-static {v0, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v15, v0, v10}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .local v0, "msrpTransType":Ljava/lang/String;
    goto :goto_3

    .line 479
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v0

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_3

    .line 478
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    move-object/from16 v18, v0

    .line 485
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v10    # "rcsTransportPsMedia":Ljava/lang/String;
    :goto_3
    const-string v0, "RcsPolicyMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "msrpTransType=("

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    invoke-static/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 487
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v0, v4, v2, v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object v10, v0

    .line 488
    .end local v20    # "transport":Ljava/lang/String;
    .local v10, "transport":Ljava/lang/String;
    :try_start_10
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v15, "keep_alive_enabled"

    .line 489
    invoke-static {v15, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 488
    invoke-static {v0, v15, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v12, v0

    goto :goto_4

    .line 486
    .end local v10    # "transport":Ljava/lang/String;
    .restart local v20    # "transport":Ljava/lang/String;
    :cond_8
    move-object/from16 v10, v20

    .line 492
    .end local v20    # "transport":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v5, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v0

    move v2, v0

    .line 494
    .local v2, "autoConfigSource":I
    if-nez v2, :cond_9

    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v0, :cond_9

    .line 495
    const-string v0, "CPM"

    move-object v15, v0

    .end local v16    # "imMsgTech":Ljava/lang/String;
    .local v0, "imMsgTech":Ljava/lang/String;
    goto :goto_5

    .line 498
    .end local v0    # "imMsgTech":Ljava/lang/String;
    .restart local v16    # "imMsgTech":Ljava/lang/String;
    :cond_9
    move-object/from16 v15, v16

    .end local v16    # "imMsgTech":Ljava/lang/String;
    .local v15, "imMsgTech":Ljava/lang/String;
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 499
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    move/from16 v16, v2

    .end local v2    # "autoConfigSource":I
    .local v16, "autoConfigSource":I
    const-string/jumbo v2, "q-value"

    .line 500
    invoke-static {v2, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 502
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-nez v0, :cond_b

    .line 505
    :try_start_11
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v17, 0x447a0000    # 1000.0f

    mul-float v0, v0, v17

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 506
    .local v0, "configQVal":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v13, v17

    .line 509
    goto :goto_6

    .line 507
    .end local v0    # "configQVal":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_6

    .line 498
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "autoConfigSource":I
    .local v2, "autoConfigSource":I
    :cond_a
    move/from16 v16, v2

    .line 513
    .end local v2    # "autoConfigSource":I
    .restart local v16    # "autoConfigSource":I
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v2, "Timer_T1"

    .line 514
    invoke-static {v2, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 513
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    .local v0, "timerT1":I
    iget-object v2, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v3, "Timer_T2"

    .line 517
    invoke-static {v3, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 516
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 519
    .local v2, "timerT2":I
    iget-object v3, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v4, "Timer_T4"

    .line 520
    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v17

    move-object/from16 v21, v14

    .end local v14    # "rcsAs":Ljava/lang/String;
    .local v21, "rcsAs":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 519
    invoke-static {v3, v4, v14}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 522
    .local v3, "timerT4":I
    iget-object v4, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v14, "RegRetryBaseTime"

    .line 523
    invoke-static {v14, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v17

    move/from16 v18, v3

    .end local v3    # "timerT4":I
    .local v18, "timerT4":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 522
    invoke-static {v4, v14, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 525
    .local v3, "regRetryBaseTime":I
    iget-object v4, v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    const-string v14, "RegRetryMaxTime"

    .line 526
    invoke-static {v14, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 525
    invoke-static {v4, v14, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 529
    .local v1, "regRetryMaxTime":I
    const-string/jumbo v4, "password"

    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v4, "realm"

    invoke-virtual {v6, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v4, "msrpTransType"

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v4, "transport"

    invoke-virtual {v6, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v4, "imMsgTech"

    invoke-virtual {v6, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v4, "useKeepAlive"

    invoke-virtual {v6, v4, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    const-string/jumbo v4, "qVal"

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v6, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const-string v4, "Timer_T1"

    invoke-virtual {v6, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    const-string v4, "Timer_T2"

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string v4, "Timer_T4"

    move/from16 v14, v18

    .end local v18    # "timerT4":I
    .local v14, "timerT4":I
    invoke-virtual {v6, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v4, "RegRetryBaseTime"

    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v4, "RegRetryMaxTime"

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    monitor-exit v11

    return-object v6

    .line 542
    .end local v0    # "timerT1":I
    .end local v1    # "regRetryMaxTime":I
    .end local v2    # "timerT2":I
    .end local v3    # "regRetryBaseTime":I
    .end local v10    # "transport":Ljava/lang/String;
    .end local v12    # "useKeepAlive":Z
    .end local v13    # "qVal":Ljava/lang/Integer;
    .end local v14    # "timerT4":I
    .end local v15    # "imMsgTech":Ljava/lang/String;
    .end local v16    # "autoConfigSource":I
    .end local v21    # "rcsAs":Ljava/lang/String;
    .restart local v20    # "transport":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v10, v20

    goto :goto_7

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_7

    .end local v20    # "transport":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v9, v19

    .end local v10    # "transport":Ljava/lang/String;
    .restart local v20    # "transport":Ljava/lang/String;
    goto :goto_7

    .end local v8    # "realm":Ljava/lang/String;
    .end local v19    # "msrpTransType":Ljava/lang/String;
    .end local v20    # "transport":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    .local v18, "realm":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v8, v18

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    .restart local v20    # "transport":Ljava/lang/String;
    goto :goto_7

    .end local v7    # "password":Ljava/lang/String;
    .end local v19    # "msrpTransType":Ljava/lang/String;
    .end local v20    # "transport":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    .restart local v17    # "password":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    .end local v9    # "msrpTransType":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    .restart local v19    # "msrpTransType":Ljava/lang/String;
    .restart local v20    # "transport":Ljava/lang/String;
    goto :goto_7

    .end local v17    # "password":Ljava/lang/String;
    .end local v18    # "realm":Ljava/lang/String;
    .end local v19    # "msrpTransType":Ljava/lang/String;
    .end local v20    # "transport":Ljava/lang/String;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v9    # "msrpTransType":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :goto_7
    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_7
.end method

.method public getRcsHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 8
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 323
    const-string v0, ""

    .line 324
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 326
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    .line 328
    .local v2, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "rcsAs":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_0

    const-string v4, "jibe"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_2

    invoke-static {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 332
    .local v4, "bIgnoreAcs":Z
    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    iget-object v5, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 334
    const-string v6, "home_network_domain_name"

    invoke-static {v6, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 333
    invoke-static {v5, v6, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_3
    return-object v0
.end method

.method public getRcsNetworkUriType(ILjava/lang/String;Z)Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "remoteUriType"    # Ljava/lang/String;
    .param p3, "needAutoConfig"    # Z

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getNetworkUriType(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    return-object v0
.end method

.method public getRcsPcscfAddress(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 11
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 208
    const-string v0, "RcsPolicyMgr"

    const-string v1, "getRcsPcscfAddress:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "lboPcscfAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 211
    .local v2, "ipType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 212
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v5, "addresstype"

    const-string v6, "address"

    const/4 v7, 0x0

    if-ne v3, v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 214
    invoke-static {v6, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v4, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 215
    .local v4, "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 216
    invoke-static {v5, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-static {v6, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "lboPcscfTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRcsPcscfAddress lboPcscfList:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " lboPcscfTypeList:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    iget v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_0

    .line 220
    const-string v6, "getRcsPcscfAddress : reset pcscfIdx because lboPcscflist is changed"

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iput v7, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    .line 223
    :cond_0
    iget v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Ljava/lang/String;

    .line 224
    iget v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRcsPcscfAddress mPcscfIdx:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lboPcscfAddress:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ipType:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    iget v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    rem-int/2addr v6, v8

    iput v6, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mPcscfIdx:I

    .line 228
    .end local v4    # "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "lboPcscfTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 230
    invoke-static {v6, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 229
    const/4 v8, 0x0

    invoke-static {v4, v6, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v4, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 233
    invoke-static {v5, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {v4, v5, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :goto_0
    if-eqz v1, :cond_9

    .line 238
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 239
    .local v4, "pos":I
    const-string v5, "ipv4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " port="

    const-string v8, "getPcscfAddresses: LBO-PCSCF="

    if-nez v5, :cond_3

    const-string v5, "IP Address"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-lez v4, :cond_4

    .line 240
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 241
    .local v5, "port":I
    invoke-virtual {p1, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 242
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    .end local v5    # "port":I
    goto/16 :goto_1

    :cond_4
    const-string v5, "ipv6"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 245
    const/16 v5, 0x5b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 246
    .local v5, "bracketstart":I
    const/16 v7, 0x5d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 247
    .local v7, "bracketend":I
    const-string v9, "]:"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 248
    .local v9, "bracketendport":I
    if-lez v9, :cond_5

    .line 249
    add-int/lit8 v10, v9, 0x2

    .line 250
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 249
    invoke-virtual {p1, v10}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 252
    :cond_5
    if-nez v5, :cond_6

    if-lez v7, :cond_6

    .line 253
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .end local v5    # "bracketstart":I
    .end local v7    # "bracketend":I
    .end local v9    # "bracketendport":I
    :cond_7
    goto :goto_1

    :cond_8
    const-string v5, "FQDN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-lez v4, :cond_7

    .line 257
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, "port":I
    invoke-virtual {p1, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 259
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .end local v4    # "pos":I
    .end local v5    # "port":I
    :cond_9
    :goto_1
    return-object v1
.end method

.method public getRcsPrivateUserIdentity(Ljava/lang/String;Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 5
    .param p1, "impi"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "phoneId"    # I

    .line 301
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 303
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const-string v1, "RcsPolicyMgr"

    const-string v2, "RCS only"

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 307
    const-string/jumbo v3, "private_user_identity"

    invoke-static {v3, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 306
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "rcsConfigImpi":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 309
    move-object p1, v2

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "impi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    .end local v2    # "rcsConfigImpi":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getRcsPublicUserIdentity(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getImpu(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 151
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->updateRcsStrategy(I)V

    .line 152
    nop

    .line 156
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 119
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 125
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 127
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 129
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsContentObserver:Landroid/database/ContentObserver;

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    sget-object v0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 133
    .restart local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_1

    .line 134
    sget-object v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRcsStrategy:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    iget-object v5, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    .line 135
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 134
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_1
    goto :goto_1

    .line 138
    :cond_2
    return-void
.end method

.method public isRcsRoamingPref(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "isRoaming"    # Z

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "rcs_roaming_pref"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, "roamPref":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 345
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    .line 346
    .local v2, "network":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-eqz v2, :cond_0

    .line 347
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 349
    if-nez v0, :cond_0

    .line 350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "RcsPolicyMgr"

    const-string v5, "not allowed as per RCS preference"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    const/4 v3, 0x0

    return v3

    .line 356
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)Z"
        }
    .end annotation

    .line 177
    .local p2, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingRcsRegister: mDefaultPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    .line 179
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 181
    return v1

    .line 185
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->isWaitingRcsDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    return v1

    .line 189
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 268
    .local p2, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 269
    .local v0, "ipver":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 270
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "rcsAs":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "jibe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    :cond_0
    if-eqz p2, :cond_2

    .line 274
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "dns":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const-string v0, "IPV4"

    .line 277
    goto :goto_1

    .line 279
    .end local v4    # "dns":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    :goto_1
    return-object v0
.end method

.method public selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "defaulttransport"    # Ljava/lang/String;

    .line 288
    move-object v0, p2

    .line 289
    .local v0, "transport":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsTransport(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string/jumbo v1, "udp-preferred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v0, "udp"

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_1
    return-object v0
.end method

.method public setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0
    .param p1, "regMgr"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 141
    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->mRegMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 142
    return-void
.end method

.method public tryRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 559
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 560
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryRcsConfig for task : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RcsPolicyMgr"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 562
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-ne v1, v2, :cond_0

    .line 563
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 565
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 567
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "checkDualRcsPcscf":Z
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "curPcscfIp":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->checkDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    .line 365
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDualRcsPcscf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curPcscfIp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RcsPolicyMgr"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 373
    .end local v0    # "checkDualRcsPcscf":Z
    .end local v1    # "curPcscfIp":Ljava/lang/String;
    :cond_0
    return-void
.end method
