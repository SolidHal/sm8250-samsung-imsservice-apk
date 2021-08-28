.class Lcom/sec/internal/ims/core/RegistrationUtils;
.super Ljava/lang/Object;
.source "RegistrationUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-Utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static IsNonDirectRoamingCase(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 333
    const/4 v0, 0x0

    const-string v1, "RegiMgr-Utils"

    if-nez p1, :cond_0

    .line 334
    const-string v2, "IsNonDirectRoamingCase, get operator from TelephonyManager."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 336
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "operator":Ljava/lang/String;
    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "gid":Ljava/lang/String;
    goto :goto_0

    .line 339
    .end local v1    # "gid":Ljava/lang/String;
    .end local v2    # "operator":Ljava/lang/String;
    :cond_0
    const-string v2, "IsNonDirectRoamingCase, get operator from SimManager."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 341
    .restart local v2    # "operator":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v3

    .line 342
    .local v3, "subId":I
    invoke-interface {p2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "gid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 346
    .end local v3    # "subId":I
    .end local v4    # "gid":Ljava/lang/String;
    .restart local v1    # "gid":Ljava/lang/String;
    :goto_0
    const-string v3, "20404"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BAE0000000000000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 3
    .param p0, "devMno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "phoneId"    # I
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 609
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 610
    return v1

    .line 614
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.operator.numeric"

    const-string v2, "00101"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "505"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static checkConfigForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZZZLcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/NetworkEventController;)Z
    .locals 6
    .param p0, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p1, "isRcsAvailable"    # Z
    .param p2, "isCdmConfigured"    # Z
    .param p3, "isOmadmInProgress"    # Z
    .param p4, "hasEmergencyCall"    # Z
    .param p5, "rcsPolicyManager"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p6, "regHandler"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .param p7, "netEvtController"    # Lcom/sec/internal/ims/core/NetworkEventController;

    .line 1334
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1335
    .local v0, "phoneId":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1337
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {p5, p0}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->tryRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    const-string v3, "RegiMgr-Utils"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1338
    const-string/jumbo v2, "try RCS autoconfiguration"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1339
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->TRY_RCS_CONFIG:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1340
    return v4

    .line 1343
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    .line 1344
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v5, :cond_2

    .line 1345
    :cond_1
    const-string v2, "capability is not configured"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1347
    const-wide/16 v2, 0x1f4

    invoke-virtual {p6, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1348
    return v4

    .line 1352
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isOmadmConfigAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    .line 1353
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v5, :cond_4

    .line 1354
    :cond_3
    invoke-virtual {p7}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig()V

    .line 1355
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DM_TRIGGERED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1356
    return v4

    .line 1361
    :cond_4
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1362
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    .line 1364
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1365
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkAcsPcscfListChange()V

    .line 1373
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_7

    .line 1374
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p4, :cond_7

    .line 1375
    const-string v2, "No Emergency Call is made,so dont try for Emergency Register"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1376
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->KDDI_EMERGENCY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1377
    return v4

    .line 1381
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method protected static checkInitialRegistrationIsReady(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/List;ZZZLcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)Z
    .locals 9
    .param p0, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "isApmOn"    # Z
    .param p3, "isRoaming"    # Z
    .param p4, "hasNoSIM"    # Z
    .param p5, "rcsPolicyManager"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p6, "regHandler"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;ZZZ",
            "Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerHandler;",
            ")Z"
        }
    .end annotation

    .line 1269
    .local p1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1270
    .local v0, "phoneId":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1271
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->isNetworkEnabled(I)Z

    move-result v2

    const-string v3, "RegiMgr-Utils"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string/jumbo v5, "tryRegister: Airplane mode is on"

    invoke-static {v3, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1273
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->FLIGHT_MODE_ON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1274
    return v4

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 1278
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tryRegister: task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is throttled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1279
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v2, v4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v2, v6

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextRetryMillis()J

    move-result-wide v5

    .line 1281
    .local v5, "retry":J
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tryRegister: retry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1283
    invoke-virtual {p6, v0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT_TRIGGERED : THROTTLED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1287
    .end local v5    # "retry":J
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->REGI_THROTTLED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1288
    return v4

    .line 1291
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {p5, p0, p1, v2}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1292
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->PENDING_RCS_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1293
    return v4

    .line 1296
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1297
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1300
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1301
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegisterTask : TtyType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mTTYMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1301
    invoke-static {v3, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1303
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->CS_TTY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1304
    return v4

    .line 1308
    :cond_4
    invoke-static {v6, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1309
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string v5, "checkHigherPriorityRegiedTask != null"

    invoke-static {v3, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1310
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->HIGHER_PRIORITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1311
    return v4

    .line 1314
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    aput-object v7, v5, v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p4, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1315
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEntitlementNsds()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1316
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string/jumbo v5, "tryRegister: Entitlement is not ready"

    invoke-static {v3, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1317
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ENTITLEMENT_NOT_READY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1318
    return v4

    .line 1322
    :cond_6
    invoke-interface {p5, p0, p3}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->isRcsRoamingPref(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1323
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_ROAMING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1324
    return v4

    .line 1328
    :cond_7
    return v6
.end method

.method static determineUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;Ljava/util/Set;Z)Z
    .locals 5
    .param p0, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p1, "previousRat"    # I
    .param p2, "rat"    # I
    .param p5, "isForceReRegi"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1169
    .local p3, "oldSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "newSvc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1170
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 1172
    .local v1, "needUpdateRegi":Z
    const-string v2, "RegiMgr-Utils"

    if-eqz p5, :cond_0

    .line 1173
    const-string/jumbo v3, "updateRegistration: Force to do Re-register."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1174
    const/4 v1, 0x1

    .line 1175
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1177
    const-string/jumbo v2, "service changed by user"

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1180
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getReregiOnRatChange()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-interface {p4, p3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1188
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile data changed : 0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_6

    .line 1189
    :cond_2
    const-string/jumbo v3, "updateRegistration: service has changed. Re-register."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1190
    const/4 v1, 0x1

    .line 1191
    const-string/jumbo v2, "service has changed"

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 1195
    :cond_3
    invoke-interface {p4, p3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1196
    const-string/jumbo v3, "updateRegistration: Same services. No need to re-register."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1182
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v3, 0x12

    if-eq p2, v3, :cond_5

    if-eq p1, v3, :cond_5

    .line 1184
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 1186
    :cond_5
    const-string/jumbo v3, "updateRegistration: no need to re-register due to the policy"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1200
    :cond_6
    :goto_1
    return v1
.end method

.method private static determineWifi(ILcom/sec/internal/constants/Mno;ILjava/util/Set;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;Lcom/sec/internal/constants/ims/os/NetworkEvent;Landroid/content/Context;)Z
    .locals 15
    .param p0, "phoneId"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "pdn"    # I
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p6, "governor"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .param p7, "ne"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p8, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/Mno;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/ims/settings/ImsProfile;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 940
    .local p3, "networkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    .line 941
    .local v4, "bearer":I
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v5

    .line 946
    .local v5, "preferredPdnType":I
    const/4 v6, 0x1

    .line 947
    .local v6, "needWifiNetwork":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 948
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 949
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 950
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 951
    move-object/from16 v10, p8

    invoke-virtual {v7, v10, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v7

    sget v11, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v7, v11, :cond_0

    move-object/from16 v7, p7

    iget-boolean v11, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v11, :cond_5

    .line 952
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasNetworkFailure()Z

    move-result v11

    if-nez v11, :cond_5

    .line 953
    const/4 v6, 0x0

    goto :goto_0

    .line 951
    :cond_0
    move-object/from16 v7, p7

    goto :goto_0

    .line 950
    :cond_1
    move-object/from16 v7, p7

    move-object/from16 v10, p8

    goto :goto_0

    .line 949
    :cond_2
    move-object/from16 v7, p7

    move-object/from16 v10, p8

    goto :goto_0

    .line 956
    :cond_3
    move-object/from16 v7, p7

    move-object/from16 v10, p8

    if-eq v5, v9, :cond_5

    .line 957
    const/4 v6, 0x0

    goto :goto_0

    .line 947
    :cond_4
    move-object/from16 v7, p7

    move-object/from16 v10, p8

    .line 962
    :cond_5
    :goto_0
    const/4 v11, -0x1

    const-string v12, "RegiMgr-Utils"

    if-eq v2, v11, :cond_7

    if-ne v2, v9, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v14, p3

    move-object/from16 v13, p5

    goto :goto_2

    .line 963
    :cond_7
    :goto_1
    const/16 v11, 0x12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 964
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 965
    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v6, :cond_a

    .line 966
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v11, :cond_8

    if-ne v5, v9, :cond_a

    .line 967
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBestNetwork: WIFI needWifiNetwork = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, p0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 968
    return v9

    .line 963
    :cond_9
    move-object/from16 v13, p5

    .line 973
    :cond_a
    :goto_2
    sget v11, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-ne v2, v11, :cond_b

    .line 975
    const-string v8, "findBestNetwork: WIFI-P2P (Wifi-Direct or Mobile-HotSpot connected)"

    invoke-static {v12, p0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 976
    return v9

    .line 979
    :cond_b
    sget-object v11, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v11, :cond_c

    sget-object v11, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v11, :cond_d

    .line 980
    :cond_c
    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 981
    const-string v8, "findBestNetwork: WIFI (ePDG connected)"

    invoke-static {v12, p0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 982
    return v9

    .line 985
    :cond_d
    return v8
.end method

.method static filterserviceFbe(Landroid/content/Context;Ljava/util/Set;Lcom/sec/ims/settings/ImsProfile;)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 814
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 815
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 818
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 819
    .local v0, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    .line 821
    .local v1, "rcsonly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterserviceFbe: rcsonly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2

    .line 825
    :cond_1
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 826
    .local v5, "service":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 825
    .end local v5    # "service":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 830
    .end local v1    # "rcsonly":Z
    :cond_2
    return-object v0
.end method

.method private static findBestEmergencyNetwork(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/ims/settings/ImsProfile;)I
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p3, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p4, "ne"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p5, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 906
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v1, 0xd

    if-eq p1, v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 915
    .local v0, "rat":I
    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v2

    .line 916
    .local v2, "networkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current RAT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contains network in profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasEmergnecy option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 916
    const-string v4, "RegiMgr-Utils"

    invoke-static {v4, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 919
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 920
    return v0

    .line 922
    :cond_1
    return v1

    .line 924
    .end local v0    # "rat":I
    .end local v2    # "networkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->getCommercializedProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 925
    invoke-interface {p3, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVoWIFIEmergencyCallRat(I)I

    move-result v0

    .line 926
    .local v0, "vowifiRat":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 927
    return v0

    .line 930
    .end local v0    # "vowifiRat":I
    :cond_3
    iget v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4

    .line 931
    return v2

    .line 933
    :cond_4
    return v1

    .line 907
    :cond_5
    :goto_0
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 908
    const/16 v0, 0x12

    return v0

    .line 910
    :cond_6
    return v1
.end method

.method public static findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;ZLcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;ILandroid/content/Context;)I
    .locals 16
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "governor"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .param p3, "isPdnConnected"    # Z
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "voiceNetworkType"    # I
    .param p7, "context"    # Landroid/content/Context;

    .line 862
    move/from16 v9, p0

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v10

    .line 864
    .local v10, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 865
    return v11

    .line 868
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v12

    .line 869
    .local v12, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v13

    .line 870
    .local v13, "pdn":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v14

    .line 872
    .local v14, "networkSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    move/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v10

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->findBestEmergencyNetwork(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/ims/settings/ImsProfile;)I

    move-result v0

    return v0

    .line 877
    :cond_1
    move/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v10

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->determineWifi(ILcom/sec/internal/constants/Mno;ILjava/util/Set;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;Lcom/sec/internal/constants/ims/os/NetworkEvent;Landroid/content/Context;)Z

    move-result v0

    const/16 v7, 0x12

    if-eqz v0, :cond_2

    .line 878
    return v7

    .line 882
    :cond_2
    move/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p4

    move-object v3, v10

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->getAvailableMobileNetwork(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/ims/settings/ImsProfile;ZI)I

    move-result v8

    .line 884
    .local v8, "rat":I
    invoke-static {v8}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v15

    .line 885
    .local v15, "netTypeName":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v5, p4

    invoke-virtual {v5, v8, v13, v9}, Lcom/sec/internal/ims/core/PdnController;->isNetworkAvailable(III)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_6

    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_3

    .line 886
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v7, :cond_6

    .line 887
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findBestNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    return v8

    .line 885
    :cond_4
    move-object/from16 v6, p1

    :cond_5
    move-object/from16 v5, p4

    .line 891
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v7

    move/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v13

    move-object v4, v10

    move-object/from16 v5, p4

    move v6, v7

    move-object v7, v15

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->printFailReason(ILcom/sec/ims/settings/ImsProfile;IILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/ims/core/PdnController;ZLjava/lang/String;)V

    .line 892
    return v11
.end method

.method public static getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 14
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1204
    const/16 v0, 0x1388

    .line 1205
    .local v0, "DNS_QUERY_TIMEOUT":I
    const/16 v1, 0x12c

    .line 1206
    .local v1, "DNS_QUERY_CHECK_INTERVAL":I
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v8

    .line 1207
    .local v8, "phoneId":I
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v9

    .line 1210
    .local v9, "network":Landroid/net/Network;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long v10, v2, v4

    .line 1211
    .local v10, "timeOut":J
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v2

    .line 1212
    .local v12, "retAddress":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1213
    .local v7, "failed":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v13, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$wOE4ujEnlke1peSGqxaxvOedOwg;

    move-object v2, v13

    move v3, v8

    move-object v4, v9

    move-object v5, p1

    move-object v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$wOE4ujEnlke1peSGqxaxvOedOwg;-><init>(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object v2, v13

    .line 1237
    .local v2, "r":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1238
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1239
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    .line 1240
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1244
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1245
    :try_start_1
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1246
    const-string v4, "RegiMgr-Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllAddressByName: current result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1247
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/net/InetAddress;

    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/InetAddress;

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    .line 1250
    :cond_0
    const-wide/16 v4, 0x12c

    :try_start_2
    invoke-virtual {v12, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1253
    goto :goto_1

    .line 1251
    :catchall_0
    move-exception v4

    .line 1252
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "RegiMgr-Utils"

    const-string v6, "getAllAddressByName: wait failed"

    invoke-static {v5, v8, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1255
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v12

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "DNS_QUERY_TIMEOUT":I
    .end local v1    # "DNS_QUERY_CHECK_INTERVAL":I
    .end local v8    # "phoneId":I
    .end local v9    # "network":Landroid/net/Network;
    .end local p0    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local p1    # "host":Ljava/lang/String;
    :try_start_4
    throw v4

    .line 1241
    .restart local v0    # "DNS_QUERY_TIMEOUT":I
    .restart local v1    # "DNS_QUERY_CHECK_INTERVAL":I
    .restart local v8    # "phoneId":I
    .restart local v9    # "network":Landroid/net/Network;
    .restart local p0    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v4, "RegiMgr-Utils"

    const-string v5, "getAllAddressByName: query failed"

    invoke-static {v4, v8, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1258
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1259
    const-string v4, "RegiMgr-Utils"

    const-string v5, "getAllAddressByName time out or failed"

    invoke-static {v4, v8, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1260
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot resolve host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .end local v0    # "DNS_QUERY_TIMEOUT":I
    .end local v1    # "DNS_QUERY_CHECK_INTERVAL":I
    .end local v8    # "phoneId":I
    .end local v9    # "network":Landroid/net/Network;
    .end local p0    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .end local p1    # "host":Ljava/lang/String;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1261
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v7    # "failed":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v10    # "timeOut":J
    .end local v12    # "retAddress":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    .restart local v0    # "DNS_QUERY_TIMEOUT":I
    .restart local v1    # "DNS_QUERY_CHECK_INTERVAL":I
    .restart local v8    # "phoneId":I
    .restart local v9    # "network":Landroid/net/Network;
    .restart local p0    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .restart local p1    # "host":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .line 1262
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "RegiMgr-Utils"

    const-string v4, "getAllAddressByName: Unknown Host"

    invoke-static {v3, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1263
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot resolve host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getAvailableMobileNetwork(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/ims/settings/ImsProfile;ZI)I
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p3, "ne"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p5, "isPdnConnected"    # Z
    .param p6, "voiceNetworkType"    # I

    .line 990
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 993
    .local v0, "rat":I
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 994
    invoke-static {p6}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v0

    .line 997
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    if-eqz p5, :cond_2

    if-ne v0, v1, :cond_2

    .line 999
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1000
    :cond_1
    const-string v1, "RegiMgr-Utils"

    const-string v2, "findBestNetwork: pdn is connected, but epdg is not connected"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {p6}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v0

    .line 1005
    :cond_2
    return v0
.end method

.method static getDetailedDeregiReason(I)I
    .locals 1
    .param p0, "deregiReason"    # I

    .line 685
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    .line 691
    const/16 v0, 0x2a

    return v0

    .line 689
    :cond_0
    const/16 v0, 0x51

    return v0

    .line 687
    :cond_1
    const/16 v0, 0x47

    return v0
.end method

.method static getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I
    .param p3, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p4, "rpm"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p5, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 357
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "efDomain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 360
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 361
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHomeNetworkDomain: mno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EFDOMAIN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " domain from profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "RegiMgr-Utils"

    invoke-static {v9, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 366
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 367
    .local v3, "isPcsfPrefManual":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v1, v4

    .line 368
    .end local v3    # "isPcsfPrefManual":Z
    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 381
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 383
    return-object v0

    .line 386
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p4, p1, p2}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v1, v3

    .line 387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 388
    move-object v1, v0

    goto :goto_7

    .line 371
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 372
    .local v5, "impu":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    .line 373
    const-string/jumbo v7, "sip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    goto :goto_6

    .line 378
    .end local v5    # "impu":Ljava/lang/String;
    :cond_8
    goto :goto_5

    :cond_9
    :goto_6
    nop

    .line 392
    :cond_a
    :goto_7
    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p5

    move v7, p2

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->isDerivedDomainFromImsiRequired(Landroid/content/Context;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHomeNetworkDomain: domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    const-string v3, "[^\\x20-\\x7E]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getImMsgTech(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rcsProfile"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1509
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getImMsgTech(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "imMsgTech":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    const-string v0, "IM"

    .line 1513
    :cond_0
    return-object v0
.end method

.method static getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 3
    .param p0, "phoneId"    # I

    .line 125
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 126
    .local v0, "ret":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v0, :cond_0

    .line 127
    const-string v1, "RegiMgr-Utils"

    const-string v2, "getNetworkEvent is not exist. Return null.."

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method protected static getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .locals 2
    .param p0, "phoneId"    # I

    .line 588
    if-ltz p0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    return-object v0

    .line 589
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingRegistrationInternal : Invalid phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I
    .locals 3
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 618
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 619
    .local v0, "phoneId":I
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 623
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneIdForStartConnectivity: task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 624
    return v0
.end method

.method static getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;
    .locals 7
    .param p0, "isHigh"    # Z
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriorityRegiedTask : isPriority  High? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    return-object v0

    .line 650
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 651
    .local v3, "anotherTask":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    goto :goto_0

    .line 654
    :cond_1
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v4

    .line 656
    .local v4, "svcOfAnotherTask":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 657
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 658
    if-eqz p0, :cond_2

    .line 659
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 660
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 663
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 664
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v4    # "svcOfAnotherTask":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    if-eqz p0, :cond_4

    .line 672
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile is in = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_4

    .line 674
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 675
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    const-string v5, "Priority task is pending"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v3    # "anotherTask":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_4
    goto/16 :goto_0

    .line 681
    :cond_5
    return-object v0
.end method

.method static getPrivateUserIdentity(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I
    .param p3, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p4, "rpm"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p5, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 278
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "impi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "impi="

    const-string v3, "RegiMgr-Utils"

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 285
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v5, ""

    if-ne v1, v4, :cond_4

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 286
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 287
    .local v2, "subId":I
    if-gez v2, :cond_1

    .line 288
    return-object v5

    .line 290
    :cond_1
    invoke-interface {p3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "imsi":Ljava/lang/String;
    invoke-static {p0, p5, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->IsNonDirectRoamingCase(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v5

    const-string v6, "@"

    if-eqz v5, :cond_3

    .line 293
    invoke-interface {p3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 295
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 296
    .local v5, "index":I
    if-lez v5, :cond_2

    .line 297
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 300
    .end local v5    # "index":I
    :cond_2
    const-string v5, "IMPI from ISIM is empty"

    invoke-static {v3, p2, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "imsiBasedImpi":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsiBasedImpi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    return-object v5

    .line 310
    .end local v2    # "subId":I
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "imsiBasedImpi":Ljava/lang/String;
    :cond_4
    if-nez p5, :cond_5

    .line 311
    return-object v5

    .line 314
    :cond_5
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 315
    invoke-static {p2, p3, p5, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_6
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 321
    invoke-interface {p4, v0, p1, p2}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsPrivateUserIdentity(Ljava/lang/String;Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    return-object v0
.end method

.method private static getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneId"    # I
    .param p1, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 237
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 238
    .local v0, "subId":I
    if-gez v0, :cond_0

    .line 239
    const-string v1, ""

    return-object v1

    .line 241
    :cond_0
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "impi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p3, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v6

    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 271
    :cond_3
    :goto_0
    goto/16 :goto_4

    .line 248
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 249
    .local v2, "isImpuFound":Z
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "impuArray":[Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "domain":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 253
    array-length v6, v3

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v7, v3, v5

    .line 254
    .local v7, "impu":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 255
    const/4 v2, 0x1

    .line 256
    goto :goto_3

    .line 253
    .end local v7    # "impu":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 261
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrivateUserIdentity: MNO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", found impu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", impi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RegiMgr-Utils"

    invoke-static {v6, p0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    if-nez v2, :cond_3

    .line 264
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    :cond_8
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 274
    .end local v2    # "isImpuFound":Z
    .end local v3    # "impuArray":[Ljava/lang/String;
    .end local v4    # "domain":Ljava/lang/String;
    :goto_4
    return-object v1
.end method

.method static getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 8
    .param p0, "phoneId"    # I

    .line 83
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "registrationProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/ims/settings/ImsProfile;

    .line 86
    .local v1, "profiles":[Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    return-object v1

    .line 89
    .end local v1    # "profiles":[Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v1

    .line 90
    .local v1, "extendedProfileList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 92
    .local v2, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 93
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sec/ims/settings/ImsProfile;

    .line 94
    .local v4, "profiles":[Lcom/sec/ims/settings/ImsProfile;
    const/4 v5, 0x0

    .line 96
    .local v5, "listsize":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 98
    .local v6, "profileid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/settings/ImsProfile;

    aput-object v7, v4, v5

    .line 99
    nop

    .end local v6    # "profileid":I
    add-int/lit8 v5, v5, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    return-object v4

    .line 103
    .end local v2    # "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "profiles":[Lcom/sec/ims/settings/ImsProfile;
    .end local v5    # "listsize":I
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sec/ims/settings/ImsProfile;

    return-object v2
.end method

.method static getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 4
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "phoneId"    # I
    .param p2, "impuFromRcsPolicyManager"    # Ljava/lang/String;
    .param p3, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 206
    const-string v0, "RegiMgr-Utils"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "impu":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPublicUserIdentity: impu from ImsProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    return-object v1

    .line 214
    .end local v1    # "impu":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    move-object v1, p2

    .line 217
    .restart local v1    # "impu":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPublicUserIdentity: impu from autoconfig - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    return-object v1

    .line 223
    .end local v1    # "impu":Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromSim()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1    # "impu":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPublicUserIdentity: impu from sim - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    if-eqz p0, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 228
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    .line 229
    :cond_2
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v1

    .line 233
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    return-object v1
.end method

.method static getRegistrationInfo(II)Lcom/sec/ims/ImsRegistration;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "profileId"    # I

    .line 133
    if-gez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid profileId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method static getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "registrationInfo"    # [Lcom/sec/ims/ImsRegistration;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/ImsRegistration;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 111
    .local v4, "regInfo":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v4    # "regInfo":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const/4 v1, 0x0

    return-object v1

    .line 120
    :cond_2
    new-array v1, v2, [Lcom/sec/ims/ImsRegistration;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/ImsRegistration;

    return-object v1
.end method

.method static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 525
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 527
    aget-object v0, v2, p1

    .line 530
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method private static getUpOmaEnablerVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rcsProfile"    # Ljava/lang/String;
    .param p1, "precisedRcsUpProfile"    # Ljava/lang/String;

    .line 1524
    const-string v0, ""

    .line 1525
    .local v0, "omaEnablerVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpTransitionProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    const-string v0, "OMA2.0"

    goto :goto_0

    .line 1527
    :cond_0
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp10Profile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1528
    const-string v0, "OMA2.1"

    goto :goto_0

    .line 1529
    :cond_1
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1530
    const-string v0, "OMA2.2"

    .line 1532
    :cond_2
    :goto_0
    return-object v0
.end method

.method static handleExceptionalMnoName(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 5
    .param p0, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "phoneId"    # I
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 696
    const-string v0, "RegiMgr-Utils"

    const-string v1, "handleExceptionalMnoName:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "mnoName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 699
    const-string v0, ""

    return-object v0

    .line 702
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v2, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":softphone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 704
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 705
    const-string v2, "gsm.operator.numeric"

    const-string v3, "00101"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "nwOperator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExceptionalMnoName: nwOperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    const-string v0, "50502"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    sget-object v0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 709
    :cond_2
    const-string v0, "50501"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "50571"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "50572"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 711
    :cond_3
    const-string v0, "50503"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "50506"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 713
    :cond_4
    const-string v0, "50514"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    .line 712
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 710
    :cond_6
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    .line 717
    .end local v2    # "nwOperator":Ljava/lang/String;
    :cond_7
    :goto_2
    return-object v1
.end method

.method static hasLoadedProfile(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 516
    const-string v0, "RegiMgr-Utils"

    const-string v1, "hasLoadedProfile:"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 517
    :goto_1
    return v0
.end method

.method static hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 172
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 173
    .local v0, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v0, :cond_0

    .line 174
    const/4 v1, 0x0

    return v1

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v1

    return v1

    .line 180
    :cond_2
    iget v1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    return v1
.end method

.method static hasRcsService(ILcom/sec/ims/settings/ImsProfile;Z)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "isWifiConnected"    # Z

    .line 185
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 187
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0

    .line 189
    :cond_1
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    return v0
.end method

.method static hasSimMobilityProfile(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "ret":Z
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 560
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 562
    goto :goto_1

    .line 564
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 566
    :cond_1
    :goto_1
    return v0
.end method

.method static hasVoLteSim(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Z
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "mnofromSim"    # Lcom/sec/internal/constants/Mno;
    .param p2, "rtl"    # Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    .line 470
    const-string v0, "RegiMgr-Utils"

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 475
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 476
    .local v2, "profiles":[Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    const-string v3, "hasVoLteSim - no matched profile with SIM"

    invoke-static {v0, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 478
    return v1

    .line 482
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 483
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 484
    return v5

    .line 488
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 489
    .local v6, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNonVoLteSimByPdnFail()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 490
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    const-string v5, "hasVoLteSim - Pdn rejected by network"

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    return v1

    .line 493
    .end local v6    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    goto :goto_0

    .line 496
    :cond_4
    const/4 v4, 0x2

    new-array v6, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v1

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v5

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 497
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEntitlementNsds()Z

    move-result v6

    if-nez v6, :cond_5

    .line 498
    const-string v4, "hasVoLteSim - Entitlement is not ready"

    invoke-static {v0, p0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    return v1

    .line 504
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    .line 505
    .local v6, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isNordic()Z

    move-result v7

    if-nez v7, :cond_6

    new-array v4, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v1

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    aput-object v7, v4, v5

    invoke-virtual {p1, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 506
    :cond_6
    if-eqz v6, :cond_7

    iget-object v4, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v4, v7, :cond_7

    iget v4, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v7, 0xd

    if-ne v4, v7, :cond_7

    .line 507
    const-string v4, "hasVoLteSim - VoPS not supported in LTE"

    invoke-static {v0, p0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    return v1

    .line 512
    :cond_7
    return v5

    .line 471
    .end local v2    # "profiles":[Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v6    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_8
    :goto_1
    const-string v2, "hasVoLteSim - no mno or no task"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 472
    return v1
.end method

.method static hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 164
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 165
    .local v0, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    return v1

    .line 168
    :cond_0
    iget v1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    return v1
.end method

.method public static ignoreSendDeregister(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegisterTask;I)Z
    .locals 7
    .param p0, "phoneId"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p3, "reason"    # I

    .line 1032
    const/16 v0, 0xb

    const/4 v1, 0x3

    const-string v2, "RegiMgr-Utils"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-eq v4, v0, :cond_1

    :cond_0
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    .line 1033
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    if-eq v5, v0, :cond_2

    .line 1034
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not matched pdn type. reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pdnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return v3

    .line 1038
    :cond_2
    const/16 v0, 0x7c

    if-ne p3, v0, :cond_3

    .line 1039
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore Epdg deregister due to not support epdg profile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v3

    .line 1045
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p3, v4, :cond_4

    if-eq p3, v1, :cond_4

    if-ne p3, v3, :cond_5

    .line 1049
    :cond_4
    const-string/jumbo v0, "sendDeregister : 4 or 1: RCS not needed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return v3

    .line 1053
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 1054
    .local v0, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget v5, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1055
    .local v5, "rat":I
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v6, :cond_7

    const/16 v6, 0xd

    if-eq v5, v6, :cond_7

    if-eq p3, v4, :cond_6

    if-ne p3, v1, :cond_7

    .line 1058
    :cond_6
    const-string/jumbo v1, "sendDeregister : DCM doesn\'t need to handle this on 3G"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return v3

    .line 1062
    :cond_7
    const/16 v1, 0x8f

    if-ne p3, v1, :cond_9

    .line 1063
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    const-string v1, "FORCE SMS PUSH"

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_8
    return v3

    .line 1069
    :cond_9
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method static initRttMode(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 842
    const-string v0, "RegiMgr-Utils"

    const-string v1, "initRttMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 845
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 846
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 851
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 847
    .restart local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRttMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 848
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    .line 849
    nop

    .line 843
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method static isCdmConfigured(Lcom/sec/internal/interfaces/ims/IImsFramework;I)Z
    .locals 2
    .param p0, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p1, "phoneId"    # I

    .line 1163
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 1164
    .local v0, "cdm":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isConfigured(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method static isCmcPrimaryType(I)Z
    .locals 2
    .param p0, "cmcType"    # I

    .line 1449
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 1458
    const/4 v0, 0x0

    return v0

    .line 1454
    :cond_0
    return v0
.end method

.method static isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1
    .param p0, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 640
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isCmcSecondaryType(I)Z
    .locals 1
    .param p0, "cmcType"    # I

    .line 1462
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1470
    const/4 v0, 0x0

    return v0

    .line 1466
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isDelayDeRegForNonDDSOnFlightModeChanged(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 8
    .param p0, "curTask"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 745
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    return v1

    .line 749
    :cond_0
    const-string/jumbo v0, "ro.boot.hardware"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    return v1

    .line 753
    :cond_1
    const/4 v0, 0x0

    .line 754
    .local v0, "DualIMSRegistered":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    .line 755
    .local v2, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v2, :cond_2

    .line 756
    return v1

    .line 758
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 759
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v1

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v5

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_3

    .line 760
    const/4 v0, 0x1

    .line 761
    goto :goto_1

    .line 763
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    goto :goto_0

    .line 765
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v3, "RegiMgr-Utils"

    const-string v4, "isDelayDeRegForNonDDSOnFlightModeChanged : true"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 767
    return v5

    .line 769
    :cond_5
    return v1
.end method

.method private static isDerivedDomainFromImsiRequired(Landroid/content/Context;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p4, "phoneId"    # I
    .param p5, "domain"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "useDerivedDomain":Z
    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 403
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v4

    sget-object v6, Lcom/sec/internal/constants/Mno;->METEOR_IRELAND:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v3

    const/4 v6, 0x4

    sget-object v7, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    const/4 v6, 0x5

    sget-object v7, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    .line 404
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    :cond_2
    invoke-static {p0, p4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "jibe"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 406
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_4

    .line 407
    :cond_3
    const/4 v0, 0x1

    .line 412
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_DOMINICANA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_5

    .line 414
    const/4 v0, 0x1

    .line 417
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 418
    const/4 v0, 0x1

    .line 420
    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_6

    .line 421
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "ims.taiwanmobile.com"

    aput-object v3, v2, v5

    const-string v3, "%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 425
    :cond_6
    move-object v1, p5

    .line 426
    .local v1, "derivedDomain":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "operator":Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 429
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v7, :cond_7

    .line 430
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getHighestPriorityEhplmn()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 432
    :cond_7
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 436
    :cond_8
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 437
    const-string v2, ""

    return-object v2

    .line 440
    :cond_9
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 441
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 440
    const-string v3, "ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v7, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeNetworkDomain: Use derived domain - operator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v6    # "operator":Ljava/lang/String;
    :cond_a
    return-object v1
.end method

.method static isMobileConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 141
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 146
    .local v2, "networks":[Landroid/net/Network;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 147
    .local v5, "network":Landroid/net/Network;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 148
    .local v6, "nc":Landroid/net/NetworkCapabilities;
    if-nez v6, :cond_1

    .line 149
    return v1

    .line 151
    :cond_1
    invoke-virtual {v6, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 153
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_2

    .line 154
    return v1

    .line 156
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMobileConnected: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "RegiMgr-Utils"

    invoke-static {v7, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 146
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "nc":Landroid/net/NetworkCapabilities;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_5
    return v1
.end method

.method static isRcsRegistered(I[Lcom/sec/ims/ImsRegistration;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "registrationInfo"    # [Lcom/sec/ims/ImsRegistration;

    .line 1435
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1437
    .local v0, "imsRegistrations":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1438
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1439
    .local v4, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1440
    const/4 v1, 0x1

    return v1

    .line 1438
    .end local v4    # "imsRegistration":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1445
    :cond_1
    return v1
.end method

.method static isSatisfiedCarrierRequirement(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IZ)Z
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "profileMno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "gbaSupported"    # I
    .param p4, "isGBASupported"    # Z

    .line 1139
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    .line 1140
    if-ne p3, v2, :cond_0

    if-nez p4, :cond_0

    .line 1141
    return v1

    .line 1145
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1146
    const/4 v0, 0x1

    .line 1147
    .local v0, "supported":Z
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_3

    .line 1148
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    move v0, v3

    goto :goto_6

    .line 1149
    :cond_3
    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_6

    .line 1150
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    move v0, v3

    goto :goto_6

    .line 1151
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_9

    .line 1152
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v2

    :goto_5
    move v0, v3

    .line 1154
    :cond_9
    :goto_6
    if-nez v0, :cond_a

    .line 1155
    const-string v2, "RegiMgr-Utils"

    const-string v3, "buildTask: Not support device. skip RCS Profile."

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1156
    return v1

    .line 1159
    .end local v0    # "supported":Z
    :cond_a
    return v2
.end method

.method static synthetic lambda$getAllByNameWithThread$1(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "retAddress"    # Ljava/util/LinkedList;
    .param p4, "failed"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1215
    :try_start_0
    const-string v0, "RegiMgr-Utils"

    const-string v1, "getAllAddressByName: start runnable"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1217
    if-eqz p1, :cond_0

    .line 1218
    invoke-virtual {p1, p2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "addresses":[Ljava/net/InetAddress;
    goto :goto_0

    .line 1220
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 1222
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 1223
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1224
    :try_start_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    monitor-exit p3

    return-void

    .line 1225
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1226
    aget-object v2, v0, v1

    invoke-virtual {p3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string v2, "RegiMgr-Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllAddressByName: getAllByName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1229
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 1230
    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "phoneId":I
    .end local p1    # "network":Landroid/net/Network;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "retAddress":Ljava/util/LinkedList;
    .end local p4    # "failed":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1235
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local p0    # "phoneId":I
    .restart local p1    # "network":Landroid/net/Network;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "retAddress":Ljava/util/LinkedList;
    .restart local p4    # "failed":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    :goto_2
    goto :goto_3

    .line 1232
    :catchall_1
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1236
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method static synthetic lambda$updateImsIcon$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 1
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p1, "mgr"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 835
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isSuspended()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 838
    :cond_0
    return-void
.end method

.method static needToNotifyImsPhoneRegistration(Lcom/sec/ims/ImsRegistration;ZZ)Z
    .locals 13
    .param p0, "registration"    # Lcom/sec/ims/ImsRegistration;
    .param p1, "registered"    # Z
    .param p2, "isSD"    # Z

    .line 773
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 774
    .local v0, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 775
    .local v1, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    .line 778
    .local v2, "isCmcRegiNotify":Z
    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 779
    return v3

    .line 783
    :cond_0
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 784
    return v3

    .line 789
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcPrimaryType(I)Z

    move-result v4

    const-string v5, "RegiMgr-Utils"

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 790
    const-string/jumbo v3, "skip notify PD regi"

    invoke-static {v5, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 791
    return v6

    .line 794
    :cond_2
    if-eqz p2, :cond_6

    .line 795
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/RegisterTask;

    .line 796
    .local v7, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v8

    .line 797
    .local v8, "isCurTaskCmc":Z
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v10, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    move v9, v6

    .line 798
    .local v9, "isCurTaskRegistered":Z
    :goto_1
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v10

    .line 799
    .local v10, "isCurMmtel":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needToNotifyImsPhoneRegistration: isCmcRegiNotify:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " regi:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isCurCmc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isCurTaskRegistered:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isCurTaskMmtel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 801
    if-eqz v2, :cond_4

    if-nez v8, :cond_4

    if-eqz v9, :cond_4

    if-eqz v10, :cond_4

    .line 803
    return v6

    .line 804
    :cond_4
    if-nez v2, :cond_5

    if-nez p1, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    .line 806
    return v6

    .line 808
    .end local v7    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v8    # "isCurTaskCmc":Z
    .end local v9    # "isCurTaskRegistered":Z
    .end local v10    # "isCurMmtel":Z
    :cond_5
    goto :goto_0

    .line 810
    :cond_6
    return v3
.end method

.method static needToNotifyImsReady(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 4
    .param p0, "p"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "phoneId"    # I

    .line 734
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    return v1

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcSecondaryType(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 738
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 739
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 741
    .end local v0    # "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    :cond_3
    return v2
.end method

.method static needToSkipTryRegister(Lcom/sec/internal/ims/core/RegisterTask;ZZZ)Z
    .locals 8
    .param p0, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p1, "needPendingRcsRegi"    # Z
    .param p2, "hasNoSIM"    # Z
    .param p3, "isDeregistering"    # Z

    .line 1386
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1388
    .local v0, "phoneId":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RegiMgr-Utils"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1390
    const-string v1, "do not register for not dds sim"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1391
    return v3

    .line 1394
    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v4, v1, v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const/4 v4, 0x3

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v1, v4

    const/4 v4, 0x4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v1, v4

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1395
    return v3

    .line 1398
    :cond_1
    if-eqz p1, :cond_2

    .line 1399
    return v3

    .line 1402
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    new-array v4, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    aput-object v6, v4, v3

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1403
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getEntitlementNsds()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1404
    const-string/jumbo v1, "tryRegister: Entitlement is not ready"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1405
    return v3

    .line 1409
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DSDS_DI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1410
    const-string v1, "Deregistering is not completed"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1411
    return v3

    .line 1414
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v1

    if-nez v1, :cond_5

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRegister: profile is disabled. "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1416
    return v3

    .line 1419
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1420
    const-string/jumbo v1, "tryRegister: suspened"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1421
    return v3

    .line 1424
    :cond_6
    return v5
.end method

.method static pendingHasEmergencyTask(ILcom/sec/internal/constants/Mno;)Z
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "simMno"    # Lcom/sec/internal/constants/Mno;

    .line 570
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 571
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    return v1

    .line 574
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    .line 576
    return v1

    .line 579
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 580
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 581
    const/4 v1, 0x1

    return v1

    .line 583
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    goto :goto_0

    .line 584
    :cond_3
    return v1
.end method

.method private static printFailReason(ILcom/sec/ims/settings/ImsProfile;IILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/ims/core/PdnController;ZLjava/lang/String;)V
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "rat"    # I
    .param p3, "pdn"    # I
    .param p4, "ne"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p5, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p6, "roamingAllowed"    # Z
    .param p7, "netTypeName"    # Ljava/lang/String;

    .line 1010
    const-string v0, ""

    .line 1012
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - serviceSet empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :cond_0
    invoke-virtual {p5, p2, p3, p0}, Lcom/sec/internal/ims/core/PdnController;->isNetworkAvailable(III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - NetworkAvailable: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    :cond_1
    iget-boolean v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v1, :cond_2

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - OOS: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    :cond_2
    iget-boolean v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v1, :cond_3

    if-nez p6, :cond_3

    iget v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "- Roaming not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :cond_3
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - networkSet empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found best network in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1029
    return-void
.end method

.method static replaceEnablerPlaceholderWithEnablerVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rcsProfile"    # Ljava/lang/String;
    .param p2, "sipUserAgent"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[ENABLER]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    const-string/jumbo v1, "rcs_up_profile"

    const-string v2, ""

    invoke-static {p3, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getUpOmaEnablerVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, "upOmaEnablerVersion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getImMsgTech(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-client/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1491
    :cond_0
    const-string v2, "IM-client/OMA1.0"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1492
    const-string v0, "RegiMgr-Utils"

    const-string/jumbo v2, "replaceEnablerPlaceholderWithEnablerVersion: Cannot specify omaEnablerVersion for given rcs_profile and rcs_up_profile. Set enabler to IM-client/OMA1.0 as a default."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    .end local v1    # "upOmaEnablerVersion":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2
.end method

.method static replaceProfilesOnTask(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 5
    .param p0, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 721
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr-Utils"

    const-string v2, "ReplaceProfilesOnTask:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 724
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 726
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 727
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 729
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 731
    :cond_1
    return-void
.end method

.method public static retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p1, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p2, "policyManager"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p3, "pcscfFromAcsIsim"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1074
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1075
    .local v0, "phoneId":I
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1076
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v2

    .line 1077
    .local v2, "pref":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    .local v3, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "RegiMgr-Utils"

    if-eqz v2, :cond_5

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 1085
    :cond_0
    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 1087
    :cond_1
    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    .line 1088
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfViaOmadm(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 1089
    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 1090
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v3

    .line 1091
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPcscfAddress: No P-CSCF address found in profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1093
    const/4 v4, 0x0

    return-object v4

    .line 1095
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 1096
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    goto :goto_2

    .line 1086
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->getRcsPcscfAddress(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1080
    :cond_5
    :goto_1
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v3

    .line 1081
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_6

    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1082
    const-string v5, "getPcscfAddresses: test pcscfList invalid call retryDNSQuery"

    invoke-static {v4, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1083
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 1098
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPcscfAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1099
    return-object v3
.end method

.method private static retrievePcscfViaOmadm(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;)Ljava/util/List;
    .locals 8
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p1, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Lcom/sec/internal/ims/core/PdnController;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1103
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1104
    .local v0, "phoneId":I
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1107
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1108
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1110
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v2

    .line 1113
    .local v2, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPcscfAddress: No P-CSCF address found in PCO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr-Utils"

    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1115
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1116
    .local v5, "rt":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VoLTE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1121
    .end local v5    # "rt":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1117
    .restart local v5    # "rt":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPcscfAddress: P-CSCF address found in VoLTE profile "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    nop

    .line 1124
    .end local v5    # "rt":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 1125
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1129
    .end local v2    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 1132
    .end local v2    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    .line 1135
    .restart local v2    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    return-object v2
.end method

.method static saveRegisteredImpu(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr-Utils"

    const-string/jumbo v2, "saveRegisteredImpu:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    if-nez p2, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    const-string v0, "SIM not Loaded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 458
    :cond_1
    const-string v0, "content://com.sec.ims.settings/impu"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 459
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "imsi":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "imsi"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "impu"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 467
    return-void
.end method

.method static selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "rat"    # I

    .line 596
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    .line 597
    .local v0, "pdn":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 598
    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 600
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 601
    const/4 v0, 0x5

    .line 604
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectPdnType: rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return v0
.end method

.method static sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 628
    const-string v0, "RegiMgr-Utils"

    const-string/jumbo v1, "sendEmergencyRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 631
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 632
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 633
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setResultMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 635
    :cond_0
    const-string/jumbo v1, "sendEmergencyRegistrationFailed, mResult is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void
.end method

.method static setVoLTESupportProperty(ZI)V
    .locals 5
    .param p0, "absent"    # Z
    .param p1, "phoneId"    # I

    .line 536
    const-string v0, "0"

    .line 538
    .local v0, "volteSupported":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    return-void

    .line 542
    :cond_0
    if-nez p0, :cond_3

    .line 543
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 545
    .local v3, "p":Lcom/sec/ims/settings/ImsProfile;
    const-string/jumbo v4, "smsip"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mmtel"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 546
    const-string v4, "mmtel-video"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 550
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 547
    .restart local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    :goto_1
    const-string v0, "1"

    .line 553
    .end local v1    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoLTESupportProperty: volteSupported ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Utils"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.sys.ims.supportmmtel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method static supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 194
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    .line 195
    .local v0, "ttyType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2
    .param p0, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 834
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$W9ETaeuB73jMMPsgxYwoqDlpMVU;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationUtils$W9ETaeuB73jMMPsgxYwoqDlpMVU;-><init>(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 839
    return-void
.end method
