.class public Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowAtt.java"


# static fields
.field private static final INTENT_TOKEN_EXPIRED_AFTER_MAX_RETRY:Ljava/lang/String; = "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final RESET_TOKEN_TIMEOUT:J = 0x5265c00L

.field private static final RETRY_INTERVAL:[I


# instance fields
.field private expirationTime:J

.field private isACSsuccessful:Z

.field protected isAirplaneModeObserverRegistered:Z

.field private isFailedToConnect:Z

.field private isFirstImsRegistrationDone:Z

.field protected isImsRegiListenerRegistered:Z

.field protected isMainSwitchToggled:Z

.field protected isRcsUserSettingObserverRegistered:Z

.field private isRetry:Z

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mMsisdn:Ljava/lang/String;

.field private final mRcsUserSettingObserver:Landroid/database/ContentObserver;

.field private mResetTokenIntent:Landroid/app/PendingIntent;

.field private mTrialCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->RETRY_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4b0
        0xe10
        0x1c20
        0x3840
        0x7080
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 137
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v12, v13}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->expirationTime:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    .line 75
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    .line 97
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Landroid/os/Handler;)V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mRcsUserSettingObserver:Landroid/database/ContentObserver;

    .line 106
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 440
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$11;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Landroid/os/Handler;)V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 140
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    .line 141
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isAirplaneModeObserverRegistered:Z

    .line 142
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRcsUserSettingObserverRegistered:Z

    .line 143
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isACSsuccessful:Z

    .line 144
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    .line 145
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    .line 146
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerAirplaneModeObserver()V

    .line 147
    invoke-direct {p0, v14}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerRcsUserSettingObserver(I)V

    .line 148
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isImsRegiListenerRegistered:Z

    .line 149
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    .line 150
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerImsRegistrationListener()V

    .line 151
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerResetTokenIntentReceiver()V

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->setDBTableMax(I)V

    .line 156
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->unregisterImsRegistrationListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isACSsuccessful:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->loadPreConfig()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->stopResetTokenTimer()V

    return-void
.end method

.method private getMsisdn()Ljava/lang/String;
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mMsisdn:Ljava/lang/String;

    .local v0, "registeredMsisdn":Ljava/lang/String;
    goto :goto_0

    .line 416
    .end local v0    # "registeredMsisdn":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0    # "registeredMsisdn":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMsisdn: use telephony msisdn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-object v0
.end method

.method private getTrialInterval()I
    .locals 4

    .line 554
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrialCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 555
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->RETRY_INTERVAL:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 556
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    .line 557
    aget v0, v1, v0

    return v0

    .line 559
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trial Count is bigger than retry count. No more retry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    .line 561
    const/4 v0, -0x1

    return v0
.end method

.method private isBinarySMSForcedEvent()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mStartForce:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadPreConfig()V
    .locals 5

    .line 606
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "loadPreConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",LPC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020101

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v0

    .line 610
    .local v0, "versionFromServer":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v3, "localconfig"

    const-string/jumbo v4, "utf-8"

    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getResourcesFromFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "xml":Ljava/lang/String;
    const-string v2, "att_preconfig"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->parseJson(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 613
    .local v2, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 614
    const-string v3, "info/raw_config_xml_file"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 616
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setVersionFromServer(I)V

    .line 617
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCodeNonRemote:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setLastErrorCode(I)V

    .line 619
    :cond_0
    return-void
.end method

.method private registerAirplaneModeObserver()V
    .locals 4

    .line 423
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAirplaneModeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isAirplaneModeObserverRegistered:Z

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isAirplaneModeObserverRegistered:Z

    .line 430
    :cond_0
    return-void
.end method

.method private registerImsRegistrationListener()V
    .locals 3

    .line 702
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isImsRegiListenerRegistered:Z

    if-nez v0, :cond_0

    .line 705
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 706
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 707
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isImsRegiListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerImsRegistrationListener failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private registerRcsUserSettingObserver(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 80
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerRcsUserSettingObserver"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, "uri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRcsUserSettingObserverRegistered:Z

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mRcsUserSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRcsUserSettingObserverRegistered:Z

    .line 87
    :cond_0
    return-void
.end method

.method private registerResetTokenIntentReceiver()V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 699
    return-void
.end method

.method private startResetTokenTimer()V
    .locals 5

    .line 566
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startResetTokenTimer: token doesn\'t exist, vail."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->stopResetTokenTimer()V

    .line 573
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startResetTokenTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    .line 578
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 579
    return-void
.end method

.method private stopResetTokenTimer()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 583
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopResetTokenTimer: timer is not running."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopResetTokenTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mResetTokenIntent:Landroid/app/PendingIntent;

    .line 589
    return-void
.end method

.method private unregisterAirplaneModeObserver()V
    .locals 2

    .line 433
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterAirplaneModeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isAirplaneModeObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isAirplaneModeObserverRegistered:Z

    .line 438
    :cond_0
    return-void
.end method

.method private unregisterImsRegistrationListener()V
    .locals 3

    .line 716
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isImsRegiListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 720
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 721
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mImsRegistrationListener was unregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isImsRegiListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v0    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterImsRegistrationListener failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterRcsUserSettingObserver()V
    .locals 2

    .line 90
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterRcsUserSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRcsUserSettingObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mRcsUserSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRcsUserSettingObserverRegistered:Z

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public checkNetworkConnectivity()Z
    .locals 1

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public cleanup()V
    .locals 3

    .line 593
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "cleanup()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cleanup()V

    .line 595
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->unregisterAirplaneModeObserver()V

    .line 596
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->unregisterRcsUserSettingObserver()V

    .line 597
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->unregisterImsRegistrationListener()V

    .line 598
    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 355
    const/4 v0, 0x0

    return-object v0

    .line 334
    :pswitch_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$10;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 319
    :pswitch_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 267
    :pswitch_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 297
    :pswitch_3
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 288
    :pswitch_4
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 195
    :pswitch_5
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 186
    :pswitch_6
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    .line 177
    :pswitch_7
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 169
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sms default application is changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->sendEmptyMessage(I)Z

    .line 166
    nop

    .line 171
    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .param p1, "current"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 362
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCode:I

    .line 364
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: mLastErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 368
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    const/16 v2, 0x12d

    if-eq p2, v2, :cond_3

    const/16 v2, 0x191

    if-eq p2, v2, :cond_2

    const/16 v2, 0x193

    if-eq p2, v2, :cond_2

    const/16 v2, 0x1ff

    if-eq p2, v2, :cond_0

    const/16 v2, 0x320

    if-eq p2, v2, :cond_4

    const/16 v2, 0x321

    if-eq p2, v2, :cond_4

    .line 404
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 385
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_0
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_1

    .line 386
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 388
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 391
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 381
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 382
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 370
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v3, "http redirects"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "newUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 373
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mHttpRedirect:Z

    .line 374
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 375
    .local v1, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    move-object v0, v1

    goto :goto_0

    .line 398
    .end local v0    # "newUrl":Ljava/lang/String;
    .end local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v4, "Failed to reach ACS"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    .line 400
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 401
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    nop

    .line 407
    :goto_0
    return-object v0
.end method

.method protected handleSwVersionChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "lastSwVersion"    # Ljava/lang/String;

    .line 623
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSwVersionChange: getLastSwVersion()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentSwVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "FOTA upgrade happened: clear previous RCS DB"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->clearStorage()V

    .line 629
    :cond_0
    return-void
.end method

.method public setIsFirstImsRegistrationDone(Z)V
    .locals 0
    .param p1, "isDone"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    .line 134
    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 7
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new operation mode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 634
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$13;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setVersionBackup(I)V

    .line 683
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setVersion(I)V

    goto/16 :goto_2

    .line 674
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->clearStorage()V

    .line 675
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setVersion(I)V

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setValidity(I)V

    .line 677
    goto/16 :goto_2

    .line 636
    :cond_3
    if-eqz p2, :cond_7

    .line 637
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    nop

    .line 639
    const-string/jumbo v0, "root/application/1/presence/PublishTimer"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    .local v0, "publishTimer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v2

    .line 641
    .local v2, "oldVerion":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 642
    .local v1, "hasFullConfig":Z
    if-eqz v1, :cond_4

    .line 643
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Received XML has full config"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->writeDataToStorage(Ljava/util/Map;)V

    goto :goto_0

    .line 645
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion(Ljava/util/Map;)I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 646
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Received XML does NOT have full config with the same version"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getValidity(Ljava/util/Map;)I

    move-result v3

    .line 650
    .local v3, "newValidity":I
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Update validity"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setValidity(I)V

    .line 654
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "newToken":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 656
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 657
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Token is changed so update it"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setToken(Ljava/lang/String;)V

    .line 661
    .end local v3    # "newValidity":I
    .end local v4    # "newToken":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 662
    :cond_6
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Received non-full XML and version is different: Ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "publishTimer":Ljava/lang/String;
    .end local v1    # "hasFullConfig":Z
    .end local v2    # "oldVerion":I
    :goto_0
    goto :goto_1

    .line 665
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null data. remain previous mode & data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getValidity()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setNextAutoconfigTimeFromValidity(I)V

    .line 669
    nop

    .line 686
    :goto_2
    return-void
.end method

.method work()V
    .locals 10

    .line 459
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isBinarySMSForcedEvent()Z

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setNextAutoconfigTimeFromValidity(I)V

    .line 463
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->cancelValidityTimer()V

    goto :goto_0

    .line 466
    :cond_0
    iget-wide v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->expirationTime:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 467
    .local v0, "throttleTime":I
    if-lez v0, :cond_1

    .line 468
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v3, "30 sec has not passed after previous Autoconfig"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    return-void

    .line 471
    :cond_1
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v4, "No network connection, try when connected"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mModuleHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    return-void

    .line 477
    .end local v0    # "throttleTime":I
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    .line 479
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->stopResetTokenTimer()V

    .line 481
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    if-eqz v0, :cond_3

    .line 482
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    goto :goto_1

    .line 484
    :cond_3
    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    .line 487
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 489
    .local v3, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFirstImsRegistrationDone:Z

    const/16 v5, 0x8

    if-nez v4, :cond_4

    .line 490
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v7, "The first IMS registration didn\'t happen yet: skip autoconfig"

    invoke-static {v4, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "IMS is not yet registered, skip autoconfig"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 492
    const v4, 0x13020100

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",NOFR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 493
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 494
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isACSsuccessful:Z

    goto :goto_2

    .line 497
    :cond_4
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->expirationTime:J

    .line 499
    :goto_2
    const/16 v4, 0x14

    .line 501
    .local v4, "count":I
    :goto_3
    if-eqz v3, :cond_6

    if-lez v4, :cond_6

    .line 503
    :try_start_0
    invoke-interface {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v6
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 518
    :goto_4
    goto/16 :goto_6

    .line 513
    :catch_0
    move-exception v6

    .line 514
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown exception occur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v9, ""

    goto :goto_5

    .line 515
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    goto :goto_6

    .line 509
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 510
    .local v6, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnknownStatusException occur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .line 512
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .end local v6    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    goto :goto_4

    .line 504
    :catch_2
    move-exception v6

    .line 505
    .local v6, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NoInitialDataException occur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    .line 507
    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .line 508
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .end local v6    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto :goto_4

    .line 519
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    .line 522
    :cond_6
    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isACSsuccessful:Z

    if-eqz v5, :cond_7

    .line 523
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v5, "Autoconfig is done"

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isACSsuccessful:Z

    goto/16 :goto_8

    .line 526
    :cond_7
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Autoconfig failed: isFailedToConnect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->addEventLog(Ljava/lang/String;)V

    .line 528
    const v5, 0x13020102

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",FAIL,CON:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getTrialInterval()I

    move-result v5

    .line 531
    .local v5, "interval":I
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCode:I

    const/16 v7, 0x191

    if-eq v6, v7, :cond_a

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mLastErrorCode:I

    const/16 v7, 0x193

    if-ne v6, v7, :cond_8

    goto :goto_7

    .line 536
    :cond_8
    if-gez v5, :cond_9

    .line 539
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->cancelValidityTimer()V

    .line 542
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->startResetTokenTimer()V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mModuleHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 546
    :cond_9
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setValidityTimer(I)V

    .line 547
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTrialCount:I

    goto :goto_8

    .line 534
    :cond_a
    :goto_7
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isRetry:Z

    .line 535
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->cancelValidityTimer()V

    .line 550
    .end local v5    # "interval":I
    :goto_8
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isFailedToConnect:Z

    .line 551
    return-void
.end method
