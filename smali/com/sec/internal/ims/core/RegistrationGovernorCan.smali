.class public Lcom/sec/internal/ims/core/RegistrationGovernorCan;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorCan.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnCan"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 62
    return-void
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

    .line 316
    .local p1, "pcscfs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "validPcscfIp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    :cond_0
    const-string v0, "RegiGvnCan"

    const-string v1, "ipv4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "pcscf":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v1    # "pcscf":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 325
    :cond_2
    return-object p2
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

    .line 210
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_1

    .line 215
    const-string v0, "mmtel-video"

    const-string v1, "VoPS Off"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "mmtel"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    .line 219
    const-string/jumbo v0, "smsip"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_1
    return-object p1
.end method

.method public determineDeRegistration(II)Z
    .locals 7
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    .line 370
    .local v0, "regiRat":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/16 v1, 0xd

    const/16 v2, 0x12

    if-ne p1, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eq p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 374
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    const-string v2, "RegiGvnCan"

    const-string v3, "ROGERS, TELUS and KOODO do de-register between 2/3G and IWLAN."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "network changed between 2G/3G and IWLAN."

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1, v2, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 377
    return v5

    .line 380
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result v1

    return v1
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 12
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

    .line 153
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 154
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    .line 155
    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 156
    .local v1, "isRcsEnabledByUser":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v6, 0x12

    const-string v7, "mmtel-video"

    const-string v8, "MobileData unavailable"

    if-ne v4, v5, :cond_5

    .line 157
    const-string v4, "im"

    const-string v5, "ft_http"

    const-string v9, "RegiGvnCan"

    if-eq p2, v6, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isDataUsageExceeded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    :cond_1
    const-string v3, "Remove IM, FT, mmtel-video when Mobile Data off or limited"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v0, v4, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v6

    .line 165
    .local v6, "isNetworkInRoaming":Z
    sget-object v8, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v8, v10, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v8

    sget v10, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v8, v10, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 167
    .local v3, "isDataRoamingOn":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNetworkInRoaming "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isDataRoamingOn "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v6, :cond_4

    if-nez v3, :cond_4

    .line 170
    const-string v8, "DataRoaming Disabled"

    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v0, v4, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v3    # "isDataRoamingOn":Z
    .end local v6    # "isNetworkInRoaming":Z
    :cond_4
    goto :goto_2

    .line 175
    :cond_5
    if-eq p2, v6, :cond_7

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    .line 176
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isDataUsageExceeded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_7

    .line 178
    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ims"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 184
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isLegacy3gppNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2

    .line 187
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 188
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 189
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 190
    .local v3, "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 191
    .local v7, "service":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 192
    const-string v8, "Disable from ACS"

    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v7    # "service":Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 196
    :cond_a
    if-nez v1, :cond_b

    .line 197
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_4
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    .line 198
    .local v6, "service":Ljava/lang/String;
    const-string v7, "chatservice off"

    invoke-virtual {p0, v0, v6, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v6    # "service":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 203
    .end local v3    # "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 205
    return-object v0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 4
    .param p1, "rat"    # I

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    .line 337
    .local v0, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 338
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isCountryCodeLoaded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    return v1

    .line 341
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isLocationServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    const-string v1, "RegiGvnCan"

    const-string v3, "locationService is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v2

    .line 346
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 350
    :cond_3
    return v2

    .line 332
    .end local v0    # "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    :cond_4
    :goto_0
    return v1
.end method

.method public isReadyToRegister(I)Z
    .locals 9
    .param p1, "rat"    # I

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getRegistrationList()Ljava/util/Map;

    move-result-object v0

    .line 73
    .local v0, "mRegistrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 74
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v2, ""

    .line 76
    .local v2, "gid":Ljava/lang/String;
    const-string v3, "RegiGvnCan"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v5

    .line 78
    .local v5, "oldSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-virtual {v6, v7, p1, v4, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v6

    .line 79
    .local v6, "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServiceForNetwork: services registered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    .line 82
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const-string v7, "Call going on so registration blocked as per requirement for Bell"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v4

    .line 88
    .end local v5    # "oldSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->SASKTEL:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_2

    const/16 v5, 0xd

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    .line 89
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    .line 90
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const-string v5, "isReadyToRegister: Sasktel if VOPS is not supported in LTE rat when call is ongoing"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v4

    .line 95
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 96
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    return v4

    .line 99
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 100
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v5, v7, :cond_5

    .line 101
    return v6

    .line 102
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->SASKTEL:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->WIND:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    .line 103
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 104
    return v4

    .line 107
    :cond_6
    const/16 v5, 0x12

    if-ne p1, v5, :cond_8

    .line 108
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->isWiFiSettingOn()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mPhoneId:I

    invoke-static {v7, v8}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 109
    :cond_7
    const-string v5, "isReadyToRegister: Wifi Calling or Wifi turned off, RAT is not updated at framework side"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v4

    .line 114
    :cond_8
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 115
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    .line 116
    if-eq p1, v5, :cond_9

    const-string v5, "BA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 117
    const-string v5, "isReadyToRegister: No Volte roaming support for TBT"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v4

    .line 122
    :cond_9
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v7, :cond_a

    .line 123
    return v4

    .line 124
    :cond_a
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v5, v5, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v5, :cond_b

    .line 125
    const-string v5, "isReadyToRegister: Task State is UpdateRegistering"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v4

    .line 129
    :cond_b
    return v6
.end method

.method public isThrottled()Z
    .locals 6

    .line 355
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentStopped:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 356
    return v1

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 360
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 361
    return v1

    .line 364
    :cond_1
    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 256
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->getPdnFailureReasons()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->isMatchedPdnFailReason([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    .line 259
    const-string v0, "RegiGvnCan"

    const-string v1, "call pdn disconnect to clear off state.. : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 268
    :cond_1
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 3
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPermanentStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnCan"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fail count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 279
    if-gez p2, :cond_0

    .line 280
    const/4 p2, 0x0

    .line 283
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 284
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    .line 285
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 289
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_4XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 290
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 291
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    .line 300
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurPcscfIpIdx:I

    .line 301
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->handleTimeoutError(I)V

    goto :goto_1

    .line 292
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->handleForbiddenError(I)V

    .line 294
    return-void

    .line 296
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mFailureCounter:I

    .line 297
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurPcscfIpIdx:I

    .line 303
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->handleRetryTimer(I)V

    goto :goto_3

    .line 286
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 305
    :goto_3
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 134
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

    const-string v1, "RegiGvnCan"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 138
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_4

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 139
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsValid:Z

    const-string v4, "SIP ERROR[IM] : FORBIDDEN. DeRegister.."

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 148
    :cond_4
    :goto_0
    return-object p2
.end method

.method public releaseThrottle(I)V
    .locals 2
    .param p1, "releaseCase"    # I

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 231
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentStopped:Z

    .line 232
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    goto :goto_0

    .line 233
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 234
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentStopped:Z

    .line 235
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    .line 236
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mCurImpu:I

    goto :goto_0

    .line 237
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mRegiAt:J

    goto :goto_0

    .line 239
    :cond_2
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 240
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    .line 243
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentStopped:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorCan;->mIsPermanentPdnFailed:Z

    if-nez v0, :cond_5

    .line 244
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseThrottle: case by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnCan"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_5
    return-void
.end method
