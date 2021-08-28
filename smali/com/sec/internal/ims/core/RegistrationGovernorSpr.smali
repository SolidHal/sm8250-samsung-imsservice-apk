.class public Lcom/sec/internal/ims/core/RegistrationGovernorSpr;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorSpr.java"


# static fields
.field private static final ACTION_LOCATION_TIMEOUT:Ljava/lang/String; = "com.sec.sprint.wfc.LOCATION_TIMEOUT"

.field private static final DELAY_FOR_CDMA_HANDOVER:I = 0x3

.field private static final INTENT_VOWIFI_HARDRESET:Ljava/lang/String; = "com.sec.sprint.wfc.HRADRESET_SUCCESS"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnSpr"


# instance fields
.field private final LOCATION_REQUEST_TIMEOUT:I

.field protected mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

.field protected mIntentReceiverSPR:Landroid/content/BroadcastReceiver;

.field protected mLocationTimeoutMessage:Landroid/os/Message;

.field protected mPrevVolteUIDefault:I


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

    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 61
    const v0, 0xafc8

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->LOCATION_REQUEST_TIMEOUT:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPrevVolteUIDefault:I

    .line 91
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSpr;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mIntentReceiverSPR:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.sprint.wfc.HRADRESET_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mIntentReceiverSPR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    .line 79
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->onConfigUpdated()V

    .line 80
    return-void
.end method


# virtual methods
.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 9
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

    .line 402
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 405
    :cond_0
    const/16 v0, 0x12

    const-string v1, "mmtel"

    if-eq p2, v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    const-string v0, "VoLTE OFF"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto/16 :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    const-string v2, "RegiGvnSpr"

    if-nez v0, :cond_2

    .line 413
    const-string v0, "filterService: remove [ALL] by Wi-Fi Calling OFF"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 415
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 428
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    const-string v0, "filterService: add [mmtel] by Wi-Fi Calling ON"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->isVoWiFiPrefered(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 435
    .local v0, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget v4, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 436
    .local v4, "voiceRat":I
    iget-boolean v5, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    xor-int/2addr v3, v5

    .line 437
    .local v3, "voiceInSvc":Z
    iget-boolean v5, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 438
    .local v5, "isPsOnlyReg":Z
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterService: voiceRat ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] voiceInSvc ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] PsOnlyReg ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    if-nez v5, :cond_5

    .line 442
    :cond_4
    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    const-string v7, "filterService: remove [mmtel] due to cellular pref. mode"

    invoke-static {v2, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    const-string v2, "VoWiFi cellular pref. mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 449
    .end local v0    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .end local v3    # "voiceInSvc":Z
    .end local v4    # "voiceRat":I
    .end local v5    # "isPsOnlyReg":Z
    :cond_5
    :goto_0
    return-object p1
.end method

.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
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

    .line 279
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v0

    .line 284
    .local v0, "callState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVoPsPolicy: call state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnSpr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v1, "mmtel"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    .line 287
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v3, :cond_1

    .line 288
    const-string v2, "applyVoPsPolicy"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    return-object p1
.end method

.method protected checkCallStatus()Z
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RegiGvnSpr"

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "isReadyToRegister: TelephonyCallStatus is not idle (CS call)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v1

    .line 207
    :cond_0
    const-string v0, "isReadyToRegister: TelephonyCallStatus is not idle"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v1

    .line 212
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected checkRcsEvent(I)Z
    .locals 7
    .param p1, "rat"    # I

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    .line 223
    const-string/jumbo v3, "version"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    .local v0, "configversion":I
    const/4 v2, 0x0

    const-string v4, "RegiGvnSpr"

    if-gtz v0, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    .line 225
    invoke-static {v5, v3, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 226
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    const-string v3, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    return v2

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    const-string v6, "defaultmsgappinuse"

    invoke-static {v3, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 231
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    const-string v3, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    return v2

    .line 235
    .end local v0    # "configversion":I
    :cond_1
    return v1
.end method

.method protected checkRoamingStatus(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 186
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->allowRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "RegiGvnSpr"

    const-string v1, "isReadyToRegister: IMS roaming is not allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 190
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 6
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

    .line 117
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 119
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sms_over_ip_network_indication"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string/jumbo v1, "smsip"

    const-string v2, "DM off."

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    const/16 v1, 0x12

    if-eq p2, v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    const-string v1, "RegiGvnSpr"

    const-string v2, "filterService: Mobile data OFF!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "im"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "ft"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 138
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 142
    .local v4, "service":Ljava/lang/String;
    const-string v5, "No DualRcs"

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v4    # "service":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_3
    return-object v0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 5
    .param p1, "rat"    # I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocationInfoLoaded: rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSpr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 303
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isCountryCodeLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "isLocationInfoLoaded: country code loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->stopLocTimeoutTimer()V

    .line 306
    return v2

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isLocationServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const-string v0, "isLocationInfoLoaded: request location info"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 310
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->startLocTimeoutTimer()V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->notifyLocationTimeout()V

    .line 315
    :cond_3
    :goto_0
    return v3

    .line 299
    :cond_4
    :goto_1
    return v2
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->checkRcsEvent(I)Z

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

.method protected isVoWiFiPrefered(Z)Z
    .locals 4
    .param p1, "roaming"    # Z

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v2, v1, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v2, v1, v3}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public notifyLocationTimeout()V
    .locals 2

    .line 320
    const-string v0, "RegiGvnSpr"

    const-string v1, "notifyLocationTimeout:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->stopLocTimeoutTimer()V

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.sprint.wfc.LOCATION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public onConfigUpdated()V
    .locals 8

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 376
    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "omadm/./3GPP_IMS/SPR_VOLTE_UI_DEFAULT"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 377
    .local v2, "currVolteUIDefault":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigUpdated: currentVolteUIDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prevVolteUIDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPrevVolteUIDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiGvnSpr"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eq v2, v3, :cond_5

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPrevVolteUIDefault:I

    if-eq v2, v3, :cond_5

    .line 379
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPrevVolteUIDefault:I

    .line 380
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 381
    const v4, 0x100a1005

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",DM UPD:VLT FORCED ON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallTypeUserAction(Landroid/content/Context;II)V

    goto :goto_4

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->isUserToggledVoiceCallType(Landroid/content/Context;I)Z

    move-result v3

    .line 386
    .local v3, "isChangedByUser":Z
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoltePrefChangedFromApp: Changed by user ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    if-nez v3, :cond_3

    .line 388
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    .line 389
    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    .line 388
    :goto_1
    invoke-static {v4, v5, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 390
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallTypeUserAction(Landroid/content/Context;II)V

    goto :goto_2

    .line 393
    :cond_3
    const-string v1, "onConfigUpdated: user pref already changed from app"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_2
    const v1, 0x100a1006

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",DM UPD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    const-string v5, "1"

    goto :goto_3

    :cond_4
    const-string v5, "0"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 399
    .end local v3    # "isChangedByUser":Z
    :cond_5
    :goto_4
    return-void
.end method

.method public onPdnRequestFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 84
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "RegiGvnSpr"

    const-string/jumbo v1, "send ImsNotAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 9
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 159
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

    const-string v1, "RegiGvnSpr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2b

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 164
    .local v0, "code":I
    const/16 v2, 0x1e6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1e7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x198

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const/16 v2, 0x190

    if-lt v0, v2, :cond_1

    const/16 v2, 0x2bb

    if-gt v0, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 169
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xbb8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 173
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xbb8

    const-string v8, "invite timeout"

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_2
    :goto_0
    return-object p2

    .line 175
    .end local v0    # "code":I
    :cond_3
    const-string v0, "im"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    goto :goto_3

    .line 176
    :cond_5
    :goto_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mIsValid:Z

    const-string v4, "SIP ERROR[IM] : FORBIDDEN. DeRegister.."

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 181
    :cond_6
    :goto_3
    return-object p2
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 9
    .param p1, "callState"    # I

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 246
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTelephonyCallStatusChanged: callState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnSpr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    const/16 v3, 0x12

    if-nez p1, :cond_0

    .line 258
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    if-eq v4, v3, :cond_0

    if-eqz v0, :cond_0

    .line 259
    const-string v4, "mmtel"

    invoke-virtual {v0, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    if-eq v4, v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v1

    .line 269
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const-string v1, "CS call. Trigger deregister for RCS"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 272
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "CS call. Trigger deregister for RCS"

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    .line 275
    :cond_1
    return-void
.end method

.method public requestLocation(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 348
    const-string v0, "RegiGvnSpr"

    const-string/jumbo v1, "requestLocation:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    .line 350
    return-void
.end method

.method protected startLocTimeoutTimer()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    const-string v1, "RegiGvnSpr"

    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v0, "startLocTimeoutTimer: timer already running"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_0
    const-string/jumbo v0, "startLocTimeoutTimer: timer 45000ms"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startLocationRequestTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    .line 336
    return-void
.end method

.method protected stopLocTimeoutTimer()V
    .locals 2

    .line 339
    const-string v0, "RegiGvnSpr"

    const-string/jumbo v1, "stopLocTimeoutTimer:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mLocationTimeoutMessage:Landroid/os/Message;

    .line 344
    :cond_0
    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    .line 107
    const-string v0, "RegiGvnSpr"

    const-string v1, "Un-register intent receiver(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mIntentReceiverSPR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "unRegisterIntentReceiver: Receiver not registered!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
