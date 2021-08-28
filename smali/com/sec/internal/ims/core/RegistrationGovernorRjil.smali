.class public Lcom/sec/internal/ims/core/RegistrationGovernorRjil;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorRjil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnRjil"


# instance fields
.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 1
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mLastPcscfList:Ljava/util/List;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mNeedToCheckSrvcc:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mHandlePcscfOnAlternativeCall:Z

    .line 48
    return-void
.end method

.method private checkProperNetwork(I)Z
    .locals 3
    .param p1, "rat"    # I

    .line 172
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 173
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 174
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v1, "RegiGvnRjil"

    const-string v2, "isReadyToRegister: No proper network"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "enabledRcsSvcsByAcs"    # Ljava/util/List;
    .param p1, "rcsSvc"    # Ljava/lang/String;

    .line 225
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    .line 247
    .local p1, "pcscfs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "validPcscfIp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v1, "RegiGvnRjil"

    const-string v2, "ipv4"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    .local v1, "pcscf":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v1    # "pcscf":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    return-object p2
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    .line 159
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 160
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->isSrvccCase()Z

    move-result v0

    const-string v1, "RegiGvnRjil"

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v2, "isReadyToRegister: SRVCC case"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v2, "isReadyToRegister: call state is not idle"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 3
    .param p1, "rcsProfile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 262
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNeedAutoconfig(Z)V

    .line 265
    return-void
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

    .line 188
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "RegiGvnRjil"

    if-eqz p1, :cond_8

    .line 191
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v5, "ims"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 198
    .local v3, "isImsEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string/jumbo v8, "volte"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 200
    .local v6, "isVolteEnabled":Z
    :goto_1
    if-nez v3, :cond_2

    .line 201
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v5, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 203
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2

    .line 206
    :cond_2
    if-eqz v6, :cond_3

    .line 207
    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v8, "Forcefully change voiceCall_type to PS(App checks value for making VOLTE Call)"

    invoke-static {v2, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    invoke-static {v2, v4, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 209
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    const-string v2, "mmtel"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 216
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->applyImsSwitch(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v8, "defaultmsgappinuse"

    invoke-static {v2, v8, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    move v4, v5

    :cond_4
    move v2, v4

    .line 221
    .local v2, "isDefaultMessageAppUsed":Z
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 224
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-static {v4, v5, v7}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 225
    .local v4, "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$JHApSqOTsKqNqjzrp0SgGiZ4B0w;

    invoke-direct {v7, v4}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$JHApSqOTsKqNqjzrp0SgGiZ4B0w;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;

    invoke-direct {v7, p0, v1}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorRjil$pp60AgU7gVx4JCIPbz2BUDMA1MU;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorRjil;Ljava/util/Set;)V

    .line 226
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 229
    .end local v4    # "enabledRcsSvcsByAcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/16 v4, 0xd

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 230
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 231
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 234
    return-object v0

    .line 238
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 239
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 242
    :cond_7
    return-object v1

    .line 193
    .end local v2    # "isDefaultMessageAppUsed":Z
    .end local v3    # "isImsEnabled":Z
    .end local v6    # "isVolteEnabled":Z
    :cond_8
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v4, "filterServices: services null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    return-object v1
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkProperNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkNetworkEvent(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkMdmnProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 182
    :goto_1
    return v0
.end method

.method public synthetic lambda$filterService$1$RegistrationGovernorRjil(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "filteredServices"    # Ljava/util/Set;
    .param p2, "disabledSvc"    # Ljava/lang/String;

    .line 226
    const-string v0, "Disable from ACS."

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 5
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 55
    if-gez p2, :cond_0

    .line 56
    const/4 p2, 0x0

    .line 59
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    .line 60
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 63
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mFailureCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mFailureCounter:I

    .line 64
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mCurPcscfIpIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mCurPcscfIpIdx:I

    .line 66
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    const-string v2, "onRegistrationError: Permanently prohibited."

    const-string v3, "RegiGvnRjil"

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->handleTimeoutError(I)V

    goto :goto_2

    .line 89
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSwa;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x47

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 92
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    .line 93
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->resetPcscfList()V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x0

    const-string v4, "Aka challenge timeout"

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 97
    return-void

    .line 67
    :cond_4
    :goto_0
    if-nez p3, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->checkEmergencyInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v1, "onRegistrationError: No Need to permant fail in emergency registering"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_6

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->resetPcscfList()V

    .line 82
    :cond_6
    return-void

    .line 85
    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v1, "onRegistrationError: 403 is received for Re-REG, retry according to RFC 5626."

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    :cond_8
    :goto_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->handleRetryTimer(I)V

    goto :goto_4

    .line 61
    :cond_9
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 101
    :goto_4
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 3
    .param p1, "callState"    # I

    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mLastPcscfList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v1, "RegiGvnRjil"

    const-string v2, "RJIL Specific: Delayed P-CSCF change when call state changed to idle"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mLastPcscfList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->updatePcscfIpList(Ljava/util/List;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mLastPcscfList:Ljava/util/List;

    .line 154
    :cond_0
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 3
    .param p1, "releaseCase"    # I

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 109
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    .line 110
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mCurImpu:I

    goto :goto_0

    .line 111
    :cond_0
    if-nez p1, :cond_1

    .line 112
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    goto :goto_0

    .line 113
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 114
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    .line 117
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mIsPermanentStopped:Z

    if-nez v0, :cond_3

    .line 118
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnRjil"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    :cond_3
    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "pcscfIpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "RegiGvnRjil"

    if-nez p1, :cond_0

    .line 132
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string/jumbo v2, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mPhoneId:I

    const-string v2, "RJIL Specific: Delaying P-CSCF change as call is in progress"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorRjil;->mLastPcscfList:Ljava/util/List;

    goto :goto_0

    .line 140
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->updatePcscfIpList(Ljava/util/List;)V

    .line 142
    :goto_0
    return-void
.end method
