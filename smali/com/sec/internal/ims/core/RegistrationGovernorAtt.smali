.class public Lcom/sec/internal/ims/core/RegistrationGovernorAtt;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorAtt.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnAtt"


# instance fields
.field protected mIsIpmeDisabledBySipForbidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    .line 55
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

    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 60
    return-void
.end method

.method static synthetic lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "enabledRcsSvcsByAcs"    # Ljava/util/List;
    .param p1, "rcsSvc"    # Ljava/lang/String;

    .line 211
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public allowRoaming()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->getVoiceTechType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    .line 306
    .local v0, "regiRat":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    .line 308
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 306
    :goto_1
    return v2
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 22
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

    .line 143
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v3, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    const-string v6, "ims"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 150
    .local v4, "isImsEnabled":Z
    :goto_0
    const-string v7, "RegiGvnAtt"

    if-nez v4, :cond_2

    .line 151
    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    const-string v6, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 153
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    return-object v5

    .line 156
    :cond_2
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    const-string/jumbo v10, "volte"

    invoke-static {v8, v10, v9}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 157
    .local v8, "isVoLteEnabled":Z
    :goto_1
    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    const-string/jumbo v11, "rcs"

    invoke-static {v9, v11, v10}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 158
    .local v9, "isRcsEnabled":Z
    :goto_2
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    .line 159
    const/4 v12, -0x1

    invoke-static {v10, v12, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v10

    if-ne v10, v6, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 161
    .local v10, "isRcsEnabledByUser":Z
    :goto_3
    iget-object v11, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v11

    .line 162
    .local v11, "isMobileDataOn":Z
    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v13

    .line 163
    .local v13, "isRoaming":Z
    sget-object v14, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v14, v15, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    sget v14, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v5, v14, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 165
    .local v5, "isDataRoamingOn":Z
    :goto_4
    iget-object v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-static {v14, v12, v15}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v14

    if-nez v14, :cond_7

    move v14, v6

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    .line 166
    .local v14, "isEnhancedDataOn":Z
    :goto_5
    iget-object v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-static {v15, v12, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 167
    .local v6, "isVideoSettingsOn":Z
    :goto_6
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    const-string v1, "defaultmsgappinuse"

    invoke-static {v12, v1, v15}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    move v1, v12

    .line 169
    .local v1, "isDefaultAppInUsed":Z
    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    .end local v4    # "isImsEnabled":Z
    .local v16, "isImsEnabled":Z
    const-string v4, "filterService:  IPME setting="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Video setting="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Enhanced Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Mobile Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRoaming="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Roaming Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " SIP Forbidden="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Default Msg App="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " RCSonly="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 178
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-static {v7, v12, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v4, "mmtel"

    const-string v7, "mmtel-video"

    if-eqz v14, :cond_16

    .line 185
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string/jumbo v12, "smsip"

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    if-eqz v13, :cond_a

    if-nez v5, :cond_b

    :cond_a
    if-nez v13, :cond_d

    if-eqz v11, :cond_d

    .line 193
    :cond_b
    if-eqz v6, :cond_c

    .line 194
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 196
    :cond_c
    const-string v12, "VideoSetting off"

    invoke-virtual {v0, v3, v7, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 199
    :cond_d
    const-string v12, "MobileData unavailable"

    invoke-virtual {v0, v3, v7, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_8
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-interface {v12, v15}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v12

    if-eqz v12, :cond_15

    if-eqz v9, :cond_15

    .line 206
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    move/from16 v17, v5

    .end local v5    # "isDataRoamingOn":Z
    .local v17, "isDataRoamingOn":Z
    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    move/from16 v18, v6

    .end local v6    # "isVideoSettingsOn":Z
    .local v18, "isVideoSettingsOn":Z
    iget v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    move/from16 v19, v9

    .end local v9    # "isRcsEnabled":Z
    .local v19, "isRcsEnabled":Z
    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 210
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-static {v12, v15, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 211
    .local v5, "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v9, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$zvgOZZYmDFRbpINJQW-Lt4wKZ84;

    invoke-direct {v9, v5}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$zvgOZZYmDFRbpINJQW-Lt4wKZ84;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v9, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;

    invoke-direct {v9, v0, v2}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorAtt$hJT3YNC7NQuFY28O2qV6Bajjw3E;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;)V

    .line 212
    invoke-interface {v6, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 214
    const-string v6, "im"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 215
    const-string v6, "chatbot-communication"

    const-string v9, "CHAT disabled in autoconfig"

    invoke-virtual {v0, v2, v6, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_e
    if-eqz v10, :cond_11

    iget-boolean v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    if-eqz v13, :cond_f

    const/16 v6, 0x12

    move/from16 v9, p2

    if-eq v9, v6, :cond_10

    goto :goto_9

    :cond_f
    move/from16 v9, p2

    :cond_10
    move/from16 v20, v1

    goto :goto_c

    :cond_11
    move/from16 v9, p2

    .line 220
    :goto_9
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 221
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v12, v6

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v12, :cond_12

    move/from16 v20, v1

    .end local v1    # "isDefaultAppInUsed":Z
    .local v20, "isDefaultAppInUsed":Z
    aget-object v1, v6, v15

    .line 222
    .local v1, "service":Ljava/lang/String;
    move-object/from16 v21, v5

    .end local v5    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "RCS service off"

    invoke-virtual {v0, v3, v1, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v1    # "service":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v20

    move-object/from16 v5, v21

    goto :goto_a

    .end local v20    # "isDefaultAppInUsed":Z
    .end local v21    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "isDefaultAppInUsed":Z
    .restart local v5    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    move/from16 v20, v1

    move-object/from16 v21, v5

    .end local v1    # "isDefaultAppInUsed":Z
    .end local v5    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "isDefaultAppInUsed":Z
    .restart local v21    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_c

    .line 225
    .end local v20    # "isDefaultAppInUsed":Z
    .end local v21    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "isDefaultAppInUsed":Z
    .restart local v5    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    move/from16 v20, v1

    move-object/from16 v21, v5

    .end local v1    # "isDefaultAppInUsed":Z
    .end local v5    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "isDefaultAppInUsed":Z
    .restart local v21    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_14

    aget-object v12, v1, v6

    .line 226
    .local v12, "service":Ljava/lang/String;
    const-string v15, "IMPE service off"

    invoke-virtual {v0, v3, v12, v15}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v12    # "service":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 230
    .end local v21    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    :goto_c
    goto :goto_d

    .line 205
    .end local v17    # "isDataRoamingOn":Z
    .end local v18    # "isVideoSettingsOn":Z
    .end local v19    # "isRcsEnabled":Z
    .end local v20    # "isDefaultAppInUsed":Z
    .restart local v1    # "isDefaultAppInUsed":Z
    .local v5, "isDataRoamingOn":Z
    .restart local v6    # "isVideoSettingsOn":Z
    .restart local v9    # "isRcsEnabled":Z
    :cond_15
    move/from16 v20, v1

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v9

    move/from16 v9, p2

    .end local v1    # "isDefaultAppInUsed":Z
    .end local v5    # "isDataRoamingOn":Z
    .end local v6    # "isVideoSettingsOn":Z
    .end local v9    # "isRcsEnabled":Z
    .restart local v17    # "isDataRoamingOn":Z
    .restart local v18    # "isVideoSettingsOn":Z
    .restart local v19    # "isRcsEnabled":Z
    .restart local v20    # "isDefaultAppInUsed":Z
    goto :goto_d

    .line 232
    .end local v17    # "isDataRoamingOn":Z
    .end local v18    # "isVideoSettingsOn":Z
    .end local v19    # "isRcsEnabled":Z
    .end local v20    # "isDefaultAppInUsed":Z
    .restart local v1    # "isDefaultAppInUsed":Z
    .restart local v5    # "isDataRoamingOn":Z
    .restart local v6    # "isVideoSettingsOn":Z
    .restart local v9    # "isRcsEnabled":Z
    :cond_16
    move/from16 v20, v1

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v9

    move/from16 v9, p2

    .end local v1    # "isDefaultAppInUsed":Z
    .end local v5    # "isDataRoamingOn":Z
    .end local v6    # "isVideoSettingsOn":Z
    .end local v9    # "isRcsEnabled":Z
    .restart local v17    # "isDataRoamingOn":Z
    .restart local v18    # "isVideoSettingsOn":Z
    .restart local v19    # "isRcsEnabled":Z
    .restart local v20    # "isDefaultAppInUsed":Z
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 233
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 236
    :goto_d
    if-nez v8, :cond_18

    .line 237
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_19

    aget-object v7, v1, v6

    .line 238
    .local v7, "service":Ljava/lang/String;
    const-string v12, "VoLTE disabled"

    invoke-virtual {v0, v3, v7, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 241
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v15, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 237
    .end local v7    # "service":Ljava/lang/String;
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 245
    :cond_18
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-static {v1, v7, v4}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_19

    .line 246
    const-string v1, "ViLTE disabled"

    invoke-virtual {v0, v3, v7, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_19
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 251
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_1a

    aget-object v6, v1, v5

    .line 252
    .local v6, "service":Ljava/lang/String;
    const-string v7, "Invalid autoconf ver"

    invoke-virtual {v0, v3, v6, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v6    # "service":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 256
    :cond_1a
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-static {v1, v4}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 257
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1b

    aget-object v6, v1, v5

    .line 258
    .restart local v6    # "service":Ljava/lang/String;
    const-string v7, "No DualRCS"

    invoke-virtual {v0, v3, v6, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v6    # "service":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 262
    :cond_1b
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 264
    return-object v3
.end method

.method protected handleNormalResponse(Lcom/sec/ims/util/SipError;I)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mFailureCounter:I

    .line 65
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegiAt:J

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->startRetryTimer(J)V

    .line 69
    return-void
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 313
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->checkRegiStatus()Z

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

.method public synthetic lambda$filterService$1$RegistrationGovernorAtt(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "enabledServices"    # Ljava/util/Set;
    .param p2, "disabledSvc"    # Ljava/lang/String;

    .line 212
    const-string v0, "Disable from ACS."

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationDone()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 135
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 137
    const-string v0, "RegiGvnAtt"

    const-string v1, "onRegistrationDone: reset IPME after forbidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 6
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 76
    if-gez p2, :cond_0

    .line 77
    const/4 p2, 0x0

    .line 80
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 81
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->handleForbiddenError(I)V

    .line 86
    return-void

    .line 87
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    .line 94
    .local v0, "usedPcscf":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usedPcscf : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiGvnAtt"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-lez v0, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    .line 96
    .end local v0    # "usedPcscf":I
    goto :goto_2

    .line 100
    :cond_4
    if-nez p3, :cond_6

    .line 105
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    goto :goto_2

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 113
    :cond_6
    :goto_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mNumOfPcscfIp:I

    if-lt v0, v3, :cond_7

    .line 114
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mFailureCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mFailureCounter:I

    .line 115
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    .line 119
    if-nez p2, :cond_7

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->getWaitTime()I

    move-result p2

    .line 124
    :cond_7
    const-wide/16 v0, 0x3e8

    if-lez p2, :cond_8

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegiAt:J

    .line 126
    int-to-long v2, p2

    mul-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->startRetryTimer(J)V

    goto :goto_3

    .line 128
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 130
    :goto_3
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 269
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

    const-string v1, "RegiGvnAtt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mNumOfPcscfIp:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsValid:Z

    .line 279
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 281
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsValid:Z

    const-string v4, "Sip Error[MMTEL]. DeRegister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_2
    const-string v0, "im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-static {v0, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 288
    const-string/jumbo v0, "onSipError: [IPME] try re-register after forbidden"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateChatService(I)V

    .line 294
    :cond_5
    :goto_1
    return-object p2
.end method

.method public releaseThrottle(I)V
    .locals 2
    .param p1, "releaseCase"    # I

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 320
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsPermanentStopped:Z

    goto :goto_0

    .line 321
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 324
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsPermanentStopped:Z

    .line 325
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mFailureCounter:I

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mRegiAt:J

    .line 327
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->stopRetryTimer()V

    .line 330
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsPermanentStopped:Z

    if-nez v0, :cond_2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseThrottle: case by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnAtt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "pcscfIpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 345
    const-string v0, "RegiGvnAtt"

    const-string/jumbo v1, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 349
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mNumOfPcscfIp:I

    .line 350
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mPcscfIpList:Ljava/util/List;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mCurPcscfIpIdx:I

    .line 352
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mNumOfPcscfIp:I

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsValid:Z

    .line 353
    return-void
.end method
