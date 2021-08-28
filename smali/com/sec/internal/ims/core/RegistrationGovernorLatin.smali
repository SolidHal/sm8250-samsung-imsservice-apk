.class public Lcom/sec/internal/ims/core/RegistrationGovernorLatin;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorLatin.java"


# static fields
.field private static final INTENT_ACTION_IMS_DEREGISTERED:Ljava/lang/String; = "com.sec.imsservice.action.IMS_DEREGISTERED"

.field private static final INTENT_ACTION_IMS_REGISTERED:Ljava/lang/String; = "com.sec.imsservice.action.IMS_REGISTERED"

.field protected static final INTENT_ACTION_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field protected static final INTENT_RCS_REGISTRATION:Ljava/lang/String; = "com.samsung.android.messaging.action.REQUEST_RCS_REGISTRATION"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnLatin"


# instance fields
.field protected mIntentReceiverLatin:Landroid/content/BroadcastReceiver;

.field protected mRegisteredNetworkType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorLatin;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mIntentReceiverLatin:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 3
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorLatin;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mIntentReceiverLatin:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "com.samsung.android.messaging.action.REQUEST_RCS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mIntentReceiverLatin:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mHandlePcscfOnAlternativeCall:Z

    .line 58
    return-void
.end method


# virtual methods
.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 2
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

    .line 257
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->isVideoCallEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    const-string v0, "mmtel-video"

    const-string v1, "VideoCall disable."

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "by VoLTE OFF, remove all service, RAT :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnLatin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 273
    :cond_2
    return-object p1
.end method

.method protected checkVolteSetting(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 92
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->getVoiceTechType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "RegiGvnLatin"

    const-string v1, "isReadyToRegister: volte disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0
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

    .line 143
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

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

    .line 146
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 148
    .local v4, "isVoLteEnabled":Z
    :goto_1
    const-string v5, "RegiGvnLatin"

    if-nez v2, :cond_2

    .line 149
    const-string v3, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 151
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 154
    :cond_2
    if-eqz v4, :cond_3

    .line 155
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 156
    .local v6, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 157
    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    const-string v7, "mmtel"

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 159
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 163
    .end local v6    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 164
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 165
    .restart local v6    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->servicesByReadSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 166
    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    iget-object v11, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 170
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-static {v7, v8, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 171
    .local v7, "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_2
    if-ge v3, v9, :cond_5

    aget-object v10, v8, v3

    .line 172
    .local v10, "service":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 173
    const-string v11, "Disabled from ACS"

    invoke-virtual {p0, v1, v10, v11}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v10    # "service":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 179
    .end local v6    # "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "enabledRcsServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/16 v3, 0xd

    if-ne p2, v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_6

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 182
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 183
    return-object v0

    .line 186
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x12

    if-eq p2, v3, :cond_8

    .line 187
    const-string v3, "Mobile off!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    const-string v5, "im"

    invoke-virtual {v3, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    const-string v5, "ft"

    invoke-virtual {v3, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 189
    :cond_7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 194
    :cond_8
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 197
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 200
    :cond_9
    return-object v1
.end method

.method protected handleAlternativeCallState()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_GUATEMALA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 251
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleAlternativeCallState()V

    .line 253
    :cond_0
    return-void
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 210
    const-string v0, "RegiGvnLatin"

    const-string v1, "Latin operator allow registration even without geo-location"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 7
    .param p1, "rat"    # I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    const-string/jumbo v2, "root/vers/*"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    move-result-object v0

    .line 104
    .local v0, "rcsConfig":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    .local v2, "configversion":I
    const/4 v3, 0x0

    const-string v4, "RegiGvnLatin"

    if-gtz v2, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-static {v5, v1, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 106
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    const-string v5, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {v4, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    return v3

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    const-string v6, "defaultmsgappinuse"

    invoke-static {v1, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 111
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    const-string v5, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v4, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    return v3

    .line 115
    .end local v0    # "rcsConfig":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    .end local v2    # "configversion":I
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isReadyToRegister(I)Z

    move-result v0

    return v0
.end method

.method public onDeregistrationDone(Z)V
    .locals 4
    .param p1, "requested"    # Z

    .line 120
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onDeregistrationDone(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PORTO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.action.IMS_DEREGISTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    const-string/jumbo v2, "rat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rat ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnLatin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onRegistrationDone()V
    .locals 4

    .line 216
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->PORTO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.action.IMS_REGISTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getCurrentNetworkByPhoneId(I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 223
    const-string/jumbo v1, "wifi"

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "mobile"

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegisteredNetworkType:Ljava/lang/String;

    const-string/jumbo v2, "rat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rat ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "RegiGvnLatin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 238
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

    const-string v1, "RegiGvnLatin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TIGO_GUATEMALA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 245
    :cond_0
    return-object p2
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    .line 82
    const-string v0, "RegiGvnLatin"

    const-string v1, "Un-register Intent receiver(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mIntentReceiverLatin:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "unRegisterIntentReceiver: Receiver not registered!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
