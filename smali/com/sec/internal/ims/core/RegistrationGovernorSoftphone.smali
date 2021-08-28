.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;
.super Lcom/sec/internal/ims/core/RegistrationGovernorAtt;
.source "RegistrationGovernorSoftphone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;,
        Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;
    }
.end annotation


# static fields
.field protected static final INTENT_ACTION_WIFI_MODE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnSoftp"


# instance fields
.field protected mForbiddenCount:I

.field protected final mForbiddenRetryTime:[I

.field protected final mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

.field protected final mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 3
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenRetryTime:[I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 101
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    .line 128
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    .line 63
    const-string v0, "RegiGvnSoftp"

    const-string v1, "Register : ShutdownEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "shutdownIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    invoke-virtual {p7, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v1, "wifiEventIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    invoke-virtual {p7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void

    :array_0
    .array-data 4
        0x11
        0x22
        0x44
    .end array-data
.end method

.method private sendDelayMsgToWifi(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 311
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    .line 312
    const/4 v1, 0x0

    sget v2, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 314
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 316
    if-eqz p1, :cond_0

    const/16 v2, 0x2710

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 317
    invoke-static {v0, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->callSECApi(Landroid/net/wifi/WifiManager;Landroid/os/Message;)I

    .line 318
    const-string v2, "RegiGvnSoftp"

    const-string v3, "Notify to WiFiManager"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkCallStatus()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    return v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_1

    .line 150
    return v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v0, v0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "RegiGvnSoftp"

    const-string v2, "isReadyToRegister: Task State is UpdateRegistering"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v1

    .line 155
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public determineDeRegistration(II)Z
    .locals 4
    .param p1, "foundBestRat"    # I
    .param p2, "currentRat"    # I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    .line 325
    .local v0, "regiRat":I
    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_2

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 328
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 329
    const/4 v1, 0x1

    return v1

    .line 332
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->determineDeRegistration(II)Z

    move-result v1

    return v1
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

    .line 165
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 167
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 166
    const-string v3, "ims"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 168
    .local v1, "isImsEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 169
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    .line 168
    const-string/jumbo v6, "volte"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 170
    .local v4, "isVoLteEnabled":Z
    :goto_1
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 174
    .local v3, "isVideoSettingsOn":Z
    :goto_2
    if-eqz p1, :cond_3

    .line 175
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_3
    if-nez v1, :cond_4

    .line 179
    const-string v2, "RegiGvnSoftp"

    const-string v5, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 181
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2

    .line 184
    :cond_4
    if-nez v4, :cond_6

    .line 185
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 186
    .local v8, "service":Ljava/lang/String;
    const-string v9, "VoLTE disabled"

    invoke-virtual {p0, v0, v8, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v8    # "service":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 188
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 193
    :cond_6
    if-eqz v3, :cond_7

    const/16 v5, 0x12

    if-eq p2, v5, :cond_8

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 195
    :cond_7
    const-string v5, "mmtel-video"

    const-string v6, "MobileData or Setting off"

    invoke-virtual {p0, v0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 200
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_4
    if-ge v2, v6, :cond_9

    aget-object v7, v5, v2

    .line 201
    .local v7, "service":Ljava/lang/String;
    const-string v8, "RCS disabled."

    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v7    # "service":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 205
    :cond_9
    return-object v0
.end method

.method protected getVoiceTechType()I
    .locals 1

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->checkCallStatus()Z

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

.method public onDeregistrationDone(Z)V
    .locals 1
    .param p1, "requested"    # Z

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    .line 99
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 5
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 274
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "publish error"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onRegistrationDone()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->onRegistrationDone()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 89
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    .line 94
    :goto_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 6
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

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

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPermanentStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSoftp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-gez p2, :cond_0

    .line 216
    const/4 p2, 0x0

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "403 response : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 222
    const-string v0, "got 403 response over 3 times..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    .line 224
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenRetryTime:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    aget p2, v1, v0

    .line 227
    if-lez p2, :cond_2

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegiAt:J

    .line 229
    int-to-long v0, p2

    mul-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->startRetryTimer(J)V

    .line 231
    :cond_2
    return-void

    .line 233
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 234
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 6
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

    const-string v1, "RegiGvnSoftp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mNumOfPcscfIp:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsValid:Z

    .line 248
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2b

    if-eqz v0, :cond_2

    .line 249
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 250
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 251
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 252
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsValid:Z

    const-string v5, "Sip Error[MMTEL]. DeRegister.."

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 261
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->PROXY_AUTHENTICATION_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 262
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsValid:Z

    const-string v4, "Sip Error 407 or 503. DeRegister.."

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 266
    :cond_4
    return-object p2
.end method

.method public releaseThrottle(I)V
    .locals 4
    .param p1, "releaseCase"    # I

    .line 282
    const-string v0, "RegiGvnSoftp"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 284
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    goto :goto_0

    .line 285
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 286
    const-string/jumbo v2, "releaseThrottle: sendDeregister"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(I)V

    .line 289
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    .line 290
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mFailureCounter:I

    .line 291
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegiAt:J

    .line 292
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 293
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->stopRetryTimer()V

    .line 296
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    if-nez v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    .line 75
    const-string v0, "RegiGvnSoftp"

    const-string v1, "Un-register intent receiver(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "unRegisterIntentReceiver: Receiver not registered!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
