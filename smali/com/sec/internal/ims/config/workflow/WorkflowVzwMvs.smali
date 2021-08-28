.class public Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;
    }
.end annotation


# static fields
.field protected static final GENERAL_ERROR_MAX_RETRY:I = 0x3

.field protected static final GeneralErrorRetryTime:[J

.field protected static final INTENT_GENERAL_ERROR_MAX_RETRY:Ljava/lang/String; = "com.sec.internal.ims.config.workflow.general_error_max_retry"

.field protected static final LOCAL_CONFIG_BASE:Ljava/lang/String; = "base"

.field protected static final LOCAL_CONFIG_FILE:Ljava/lang/String; = "localconfig"

.field protected static final LOCAL_CONFIG_MAX_RETRY:I = 0x5

.field protected static final LOCAL_CONFIG_TARGET:Ljava/lang/String; = "vzw_up"

.field protected static final LOCAL_CONFIG_VERS:I = 0x3b

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final NO_INITIAL_DATA_MAX_RETRY:I = 0x5


# instance fields
.field protected m511ResponseRetryCount:I

.field protected mAppToken:Ljava/lang/String;

.field protected mBackupVersion:I

.field protected mCurrVersion:I

.field protected mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

.field protected final mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

.field protected mHttpResponse:I

.field protected final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field protected mIs403ResponseReceived:Z

.field protected mIs500ResponseReceived:Z

.field protected mIsCleanUpOngoing:Z

.field protected mIsCurrConfigOngoing:Z

.field protected mIsDefaultSmsAppInuse:Z

.field protected mIsGeneralErrorRetryFailed:Z

.field protected mIsImsRegiNotifyReceived:Z

.field protected mIsImsRegiNotifyWaiting:Z

.field protected mIsMobileAutoConfigOngoing:Z

.field protected mIsSwVersionChanged:Z

.field protected mIsUserSwitchToNonRcsApp:Z

.field protected mIsUserSwitchToRcsApp:Z

.field protected final mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mNewVersion:I

.field protected mNoAppTokenRetryCount:I

.field protected mNoInitialDataRetryCount:I

.field protected mNoResponseRetryCount:I

.field protected mOldVersion:I

.field protected mRcsDisabledStateRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1d4c0
        0x3a980
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 111
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;-><init>(I)V

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

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 79
    const/4 v0, 0x0

    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    .line 80
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    .line 81
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 82
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mBackupVersion:I

    .line 84
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCurrConfigOngoing:Z

    .line 85
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    .line 86
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    .line 87
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCleanUpOngoing:Z

    .line 89
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mAppToken:Ljava/lang/String;

    .line 91
    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 92
    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 94
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsSwVersionChanged:Z

    .line 95
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    .line 96
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToRcsApp:Z

    .line 97
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToNonRcsApp:Z

    .line 98
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyReceived:Z

    .line 100
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    .line 101
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    .line 102
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    .line 103
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    .line 104
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    .line 105
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    .line 106
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs403ResponseReceived:Z

    .line 107
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs500ResponseReceived:Z

    .line 108
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    .line 128
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 167
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 207
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerImsRegistrationListener()V

    .line 115
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIntentFilter:Landroid/content/IntentFilter;

    .line 117
    const-string v1, "com.sec.internal.ims.config.workflow.general_error_max_retry"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p1, "x1"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setAppToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getAppToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getAppToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mAppToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 703
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setAppToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "appToken"    # Ljava/lang/String;

    monitor-enter p0

    .line 707
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mAppToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    .line 706
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .end local p1    # "appToken":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected checkAndKeepRcsDisabledStateData(Ljava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 5
    .param p2, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            ")V"
        }
    .end annotation

    .line 754
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "curValidity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "curToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    const-string/jumbo v2, "root/token/token"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "root/services/rcsdisabledstate"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgUrl()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "curSpgUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 765
    const-string/jumbo v3, "root/serviceproviderext/spgurl"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "curSpgParamsUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 769
    const-string/jumbo v4, "root/serviceproviderext/params-url"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_3
    return-void
.end method

.method protected checkAndUpdateData(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 921
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "oldToken":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "newToken":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndUpdateData: oldToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " newToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 924
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "checkAndUpdateData: token is changed, update it"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setToken(Ljava/lang/String;)V

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 929
    .local v2, "oldValidity":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion(Ljava/util/Map;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity(Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "newValidity":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndUpdateData: oldValidity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " newValidity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 931
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 932
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v6, "checkAndUpdateData: validity is changed, update it"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 934
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setValidity(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    goto :goto_1

    .line 935
    :catch_0
    move-exception v4

    .line 936
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndUpdateData: skip setValidity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 939
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_1
    return-void
.end method

.method protected checkAutoConfigAvailable()V
    .locals 6

    .line 575
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "smsApp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    .line 577
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAutoConfigAvailable: isSmsAppAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mSubId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerMobileNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "checkAutoConfigAvailable: mobile autoconfig available"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 581
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->removeMessages(I)V

    .line 582
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    return-void

    .line 585
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "checkAutoConfigAvailable: mobile autoconfig isn\'t available"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 587
    return-void
.end method

.method public cleanup()V
    .locals 3

    .line 943
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "cleanup"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setCleanUpStatus(Z)V

    .line 945
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->cleanup()V

    .line 946
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "cleanup: send cleanup message"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 947
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 948
    return-void
.end method

.method protected convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 720
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0

    .line 723
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I
    .locals 1
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 728
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 729
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    return v0

    .line 731
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v0

    return v0
.end method

.method protected convertRcsStateWithSpecificParam(I)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # I

    .line 735
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    if-nez v0, :cond_0

    .line 736
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    if-eqz v0, :cond_1

    .line 739
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 742
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 745
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;
    .locals 2
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 749
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v0

    .line 750
    .local v0, "value":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected endAutoConfig()V
    .locals 9

    .line 618
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 619
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 620
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    .line 621
    .local v1, "validRcsDisabledState":Z
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAutoConfig: end autoconfig of newVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " validRcsDisabledState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 624
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isActiveVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 625
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "endAutoConfig: need localconfig info"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 626
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 627
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 629
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 630
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsSwVersionChanged:Z

    .line 631
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToRcsApp:Z

    .line 632
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToNonRcsApp:Z

    .line 633
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setCompleted(Z)V

    .line 635
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endAutoConfig: oldVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    const v3, 0x13020406

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "OV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",NV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": OV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " NV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->addEventLog(Ljava/lang/String;)V

    .line 639
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endAutoConfig: rcsDisabledState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spgUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " spgParamsUrl: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    const v3, 0x13020407

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "DV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",SU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",SPU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": rcsDisabledState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->addEventLog(Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sIsConfigOngoing:Z

    .line 648
    return-void
.end method

.method protected endCurrConfig()V
    .locals 6

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setCompleted(Z)V

    .line 460
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrConfig: oldVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrConfig: mIsImsRegiNotifyReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyReceived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyReceived:Z

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendRestartAutoConfigMsg()V

    goto :goto_0

    .line 466
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "CurrConfig: wait until ims is registered"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    .line 469
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCurrConfigOngoing:Z

    .line 470
    return-void
.end method

.method protected endFailureAutoConfig()V
    .locals 7

    .line 651
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 652
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 653
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    .line 654
    .local v1, "validRcsDisabledState":Z
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endFailureAutoConfig: mNewVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rcsDisabledState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isActiveVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 658
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "endFailureAutoConfig: need localconfig info"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 660
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 663
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setCompleted(Z)V

    .line 664
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endFailureAutoConfig: oldVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " newVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->resetReadyStateCommand(I)V

    .line 667
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sIsConfigOngoing:Z

    .line 668
    return-void
.end method

.method protected executeAutoConfig(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)V
    .locals 6
    .param p1, "next"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 590
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeAutoConfig: next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    :goto_0
    if-eqz p1, :cond_2

    .line 594
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getCleanUpStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "executeAutoConfig: cleanup is ongoing, finish"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 596
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    move-object p1, v1

    .line 598
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeAutoConfig: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 612
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    move-object p1, v2

    .line 613
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 599
    :catch_1
    move-exception v1

    .line 600
    .local v1, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeAutoConfig: NoInitialDataException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 601
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 602
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeAutoConfig: mNoInitialDataRetryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " wait 10 seconds and retry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 604
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    .line 605
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sleep(J)V

    .line 606
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    move-object p1, v2

    goto :goto_1

    .line 608
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    move-object p1, v2

    goto :goto_1

    .line 615
    .end local v1    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    :cond_2
    return-void
.end method

.method protected executeCurrConfig()V
    .locals 6

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCurrConfigOngoing:Z

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    .line 380
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    .line 381
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 382
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    .line 383
    .local v1, "validRcsDisabledState":Z
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrConfig: mOldVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rcsDisabledState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->displayRcsDisabledStateInfo(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isActiveVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "CurrConfig: need localconfig info"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNewVersion:I

    .line 389
    return-void
.end method

.method protected declared-synchronized getCleanUpStatus()Z
    .locals 1

    monitor-enter p0

    .line 951
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCleanUpOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 951
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 964
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 966
    .local v0, "response":Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 967
    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 973
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3

    .line 689
    const-string/jumbo v0, "storage_data"

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    .line 694
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "parsedxml_data"

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-super {p0, v0, v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSpgParamsUrl()Ljava/lang/String;
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/serviceproviderext/params-url"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpgUrl()Ljava/lang/String;
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 234
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    const-string v3, "AutoConfig: mobile autoconfig ongoing"

    const/4 v4, 0x4

    if-eq v0, v2, :cond_5

    if-eq v0, v4, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 364
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleMessage: unknown message"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 354
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleMessage: start cleanup"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterImsRegistrationListener()V

    .line 356
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterMobileNetwork()V

    .line 357
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->stopGeneralErrorRetryTimer()V

    .line 358
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterGeneralErrorRetryIntentReceiver()V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setCleanUpStatus(Z)V

    .line 360
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleMessage: end cleanup"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    goto/16 :goto_1

    .line 334
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 335
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->removeMessages(I)V

    .line 336
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "ReAutoConfig: generalErrorRetryTimer is expired"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->stopGeneralErrorRetryTimer()V

    .line 338
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterGeneralErrorRetryIntentReceiver()V

    .line 339
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "ReAutoConfig: start generalErrorRetry"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->executeAutoConfig(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)V

    .line 341
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isGeneralErrorRetryTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "ReAutoConfig: generalErrorRetryTimer is running"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 344
    goto/16 :goto_1

    .line 346
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "ReAutoConfig: end generalErrorRetry"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterMobileNetwork()V

    .line 348
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->endAutoConfig()V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 350
    goto/16 :goto_1

    .line 325
    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyReceived:Z

    .line 326
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: ims regi status is changed mIsImsRegiNotifyWaiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    if-eqz v0, :cond_d

    .line 328
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendRestartAutoConfigMsg()V

    goto/16 :goto_1

    .line 237
    :pswitch_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCurrConfigOngoing:Z

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "CurrConfig: ongoing"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    goto/16 :goto_1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->executeCurrConfig()V

    .line 243
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->endCurrConfig()V

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 245
    goto/16 :goto_1

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isDefaultSmsAppInuse()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    .line 317
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: defaultSmsApp is changed mIsDefaultSmsAppInuse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToRcsApp:Z

    .line 319
    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToNonRcsApp:Z

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 321
    goto/16 :goto_1

    .line 293
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->removeMessages(I)V

    .line 294
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "AutoConfig: mobile connection is not available"

    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    if-eqz v0, :cond_4

    .line 296
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    goto/16 :goto_1

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 300
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    .line 301
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AutoConfig: mobile autoconfig is failed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterMobileNetwork()V

    .line 303
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->endFailureAutoConfig()V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 305
    goto/16 :goto_1

    .line 270
    :cond_5
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->removeMessages(I)V

    .line 271
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "AutoConfig: mobile connection is available"

    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    if-eqz v0, :cond_6

    .line 273
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    goto/16 :goto_1

    .line 276
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 277
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    .line 278
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AutoConfig: start mobile autoconfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->executeAutoConfig(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)V

    .line 281
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isGeneralErrorRetryTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AutoConfig: generalErrorRetryTimer is running"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 284
    goto :goto_1

    .line 286
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterMobileNetwork()V

    .line 287
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->endAutoConfig()V

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 289
    goto :goto_1

    .line 309
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "handleMessage: clear config info"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->clearStorage()V

    .line 311
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 312
    goto :goto_1

    .line 249
    :cond_9
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 252
    :cond_a
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sIsConfigOngoing:Z

    if-eqz v0, :cond_b

    .line 253
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AutoConfig: ongoing"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    goto :goto_1

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 257
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoConfig: start autoconfig, mStartForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->initAutoConfig()V

    .line 259
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->scheduleAutoconfig()Z

    move-result v0

    if-nez v0, :cond_c

    .line 260
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AutoConfig: scheduleAutoconfig: false"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->endAutoConfig()V

    goto :goto_0

    .line 263
    :cond_c
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->checkAutoConfigAvailable()V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 266
    nop

    .line 366
    :cond_d
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .param p1, "init"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "fetchHttps"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p3, "finish"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 777
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseForUp: error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getLastErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getLastErrorCode()I

    move-result v0

    const-string v1, "handleResponseForUp: immediately perform retry"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    const/16 v5, 0x193

    if-eq v0, v5, :cond_5

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_4

    const/16 v5, 0x1f7

    if-eq v0, v5, :cond_3

    const/16 v5, 0x1ff

    if-ne v0, v5, :cond_2

    .line 802
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v6, "handleResponseForUp: 511 response is received reset token and apptoken"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 803
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setToken(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setAppToken(Ljava/lang/String;)V

    .line 805
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    if-nez v0, :cond_0

    .line 806
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 807
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    .line 808
    move-object v0, p2

    .line 809
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_0

    .line 811
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_0
    if-ge v0, v2, :cond_1

    .line 812
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseForUp: m511ResponseRetryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " m511ResponseRetryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    aget-wide v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerGeneralErrorRetryIntentReceiver()V

    .line 815
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    aget-wide v0, v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startGeneralErrorRetryTimer(J)V

    .line 816
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    .line 817
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 818
    move-object v0, p3

    .line 819
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_0

    .line 821
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleResponseForUp: no need to retry anymore for 511 response"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 822
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 823
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    .line 824
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 825
    move-object v0, p3

    .line 826
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_0

    .line 854
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v1, "handleResponseForUp: unknown https status code"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getretryAfterTime()J

    move-result-wide v0

    .line 796
    .local v0, "retryAfterTime":J
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponseForUp: 503 response is received retry after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sleep(J)V

    .line 798
    move-object v2, p2

    .line 799
    .local v2, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    move-object v0, v2

    goto/16 :goto_0

    .line 788
    .end local v0    # "retryAfterTime":J
    .end local v2    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleResponseForUp: internal server error"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 789
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs500ResponseReceived:Z

    .line 790
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 791
    move-object v0, p3

    .line 792
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_0

    .line 780
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleResponseForUp: 403 response is received reset config info"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 781
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 782
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs403ResponseReceived:Z

    .line 783
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 784
    move-object v0, p3

    .line 785
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 829
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v6, "handleResponseForUp: The server is not responding"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    if-nez v0, :cond_7

    .line 831
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    .line 833
    move-object v0, p2

    .line 834
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 836
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_7
    if-ge v0, v2, :cond_8

    .line 837
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseForUp: mNoResponseRetryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNoResponseRetryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    aget-wide v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerGeneralErrorRetryIntentReceiver()V

    .line 840
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    aget-wide v0, v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startGeneralErrorRetryTimer(J)V

    .line 841
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    .line 842
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 843
    move-object v0, p3

    .line 844
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 846
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "handleResponseForUp:  no need to retry anymore for no response"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 847
    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 848
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    .line 849
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 850
    move-object v0, p3

    .line 851
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    nop

    .line 856
    :goto_0
    return-object v0
.end method

.method protected handleSwVersionChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "lastSwVersion"    # Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    .line 224
    .local v0, "newSwVersion":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSwVersionChange: lastSwVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newSwVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "handleSwVersionChange: software version is changed"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setLastSwVersion(Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsSwVersionChanged:Z

    .line 230
    :cond_0
    return-void
.end method

.method protected initAutoConfig()V
    .locals 4

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sIsConfigOngoing:Z

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNetwork:Landroid/net/Network;

    .line 510
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    .line 511
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 513
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoInitialDataRetryCount:I

    .line 514
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    .line 515
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->m511ResponseRetryCount:I

    .line 516
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoResponseRetryCount:I

    .line 517
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    .line 519
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setAppToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    .line 522
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getParsedIntVersionBackup()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mBackupVersion:I

    .line 523
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    .line 525
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isDefaultSmsAppInuse()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    .line 526
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAutoConfig: mOldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mOldVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBackupOldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mBackupVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurrVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsDefaultSmsAppInuse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 528
    return-void
.end method

.method protected isActiveVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    .line 672
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDefaultSmsAppInuse()Z
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "defaultmsgappinuse"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isGeneralErrorRetryTimerRunning()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z
    .locals 1
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 681
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 682
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    return v0
.end method

.method protected loadLocalConfig()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "baseObject":Lcom/google/gson/JsonObject;
    const/4 v1, 0x0

    .line 424
    .local v1, "targetObject":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "localconfig"

    const-string/jumbo v6, "raw"

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v4, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 426
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_2
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 427
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 428
    .local v6, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "base"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    move-object v0, v7

    .line 429
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 430
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 431
    .local v12, "key":Ljava/lang/String;
    const-string/jumbo v13, "vzw_up"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 432
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v9

    .line 433
    goto :goto_2

    .line 430
    .end local v12    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 436
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 437
    goto :goto_3

    .line 439
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_2
    goto :goto_0

    .line 440
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    .end local v6    # "element":Lcom/google/gson/JsonElement;
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "reader":Lcom/google/gson/stream/JsonReader;
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 443
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_4
    nop

    .line 444
    if-eqz v0, :cond_8

    if-nez v1, :cond_5

    goto :goto_6

    .line 448
    :cond_5
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 449
    .local v2, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "root/"

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 450
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    .line 451
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_4

    .line 452
    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 453
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_5

    .line 455
    :cond_7
    return-object v2

    .line 445
    .end local v2    # "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    :goto_6
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v5, "loadLocalConfig: base/target object is empty"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    return-object v2

    .line 424
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .end local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :goto_7
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .restart local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .end local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :cond_9
    :goto_8
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_8 .. :try_end_8} :catch_0

    .line 440
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .restart local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    :catch_0
    move-exception v3

    .line 441
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadLocalConfig: can\'t open/parse localconfig: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    return-object v2
.end method

.method protected onGeneralErrorRetryTimerExpired()V
    .locals 3

    .line 217
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "onGeneralErrorRetryTimerExpired"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method

.method protected onImsRegistrationStatusChanged(Z)V
    .locals 4
    .param p1, "registered"    # Z

    .line 141
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsRegistrationStatusChanged: registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method protected onMobileConnectionChanged(Landroid/net/Network;Z)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isAvailable"    # Z

    .line 180
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsMobileAutoConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "onMobileConnectionChanged: ongoing"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileConnectionChanged: isAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    if-eqz p2, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNetwork:Landroid/net/Network;

    .line 186
    if-eqz p2, :cond_2

    .line 187
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 188
    return-void

    .line 190
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method

.method protected registerGeneralErrorRetryIntentReceiver()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "registerGeneralErrorRetryIntentReceiver: registered"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method protected registerImsRegistrationListener()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 122
    return-void
.end method

.method protected registerMobileNetwork()Z
    .locals 6

    .line 147
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 150
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMobileNetwork: registered with subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/ConnectivityManager$TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    nop

    .line 155
    const/4 v0, 0x1

    return v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerMobileNetwork: can\'t register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    return v0
.end method

.method protected scheduleAutoconfig()Z
    .locals 10

    .line 531
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleAutoconfig: mCurrVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->needScheduleAutoconfig(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 533
    return v1

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsSwVersionChanged:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    if-eqz v0, :cond_1

    .line 536
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 537
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v4, "scheduleAutoconfig: force autoconfig because software version is changed"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    if-eqz v0, :cond_2

    .line 540
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v3, "scheduleAutoconfig: force autoconfig"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 542
    return v2

    .line 544
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToRcsApp:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsUserSwitchToNonRcsApp:Z

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 549
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-eq v0, v3, :cond_b

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-ne v0, v3, :cond_4

    goto/16 :goto_1

    .line 553
    :cond_4
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs403ResponseReceived:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs500ResponseReceived:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getNextAutoconfigTime()J

    move-result-wide v3

    .line 559
    .local v3, "nextAutoconfigTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 560
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 561
    .local v5, "remainValidity":I
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scheduleAutoconfig: nextAutoconfigTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " remainValidity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 562
    if-gtz v5, :cond_8

    .line 563
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v8, "scheduleAutoconfig: validity is expired"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v7

    if-le v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    if-eqz v6, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 565
    return v2

    .line 567
    :cond_8
    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-lez v2, :cond_9

    .line 568
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scheduleAutoconfig: autoconfig schedule: after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setValidityTimer(I)V

    .line 571
    :cond_9
    return v1

    .line 554
    .end local v0    # "current":Ljava/util/Date;
    .end local v3    # "nextAutoconfigTime":J
    .end local v5    # "remainValidity":I
    :cond_a
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleAutoconfig: mIs403ResponseReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs403ResponseReceived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs500ResponseReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIs500ResponseReceived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGeneralErrorRetryFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " skip autoconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 556
    return v1

    .line 550
    :cond_b
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v3, "scheduleAutoconfig: DISABLE_PERMANENTLY/DISABLE opMode skip autoconfig"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 551
    return v1

    .line 545
    :cond_c
    :goto_2
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    if-gt v0, v3, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    .line 546
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v3, "scheduleAutoconfig: defaultSmsApp is switched by the user need autoconfig"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    return v2
.end method

.method protected sendRestartAutoConfigMsg()V
    .locals 5

    .line 473
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "CurrConfig: send complete and restart message"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->unregisterImsRegistrationListener()V

    .line 477
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsImsRegiNotifyWaiting:Z

    .line 478
    return-void
.end method

.method protected declared-synchronized setCleanUpStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    monitor-enter p0

    .line 955
    :try_start_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCleanUpOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    monitor-exit p0

    return-void

    .line 954
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .end local p1    # "status":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 4
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

    .line 861
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 862
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$4;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 914
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "setOpMode: unknown opMode"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 907
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->clearStorage()V

    .line 908
    if-eqz p2, :cond_4

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    goto/16 :goto_1

    .line 895
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setVersion(I)V

    .line 896
    goto/16 :goto_1

    .line 886
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->clearStorage()V

    .line 887
    if-eqz p2, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 890
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setVersion(I)V

    .line 891
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setValidity(I)V

    .line 892
    goto :goto_1

    .line 864
    :pswitch_3
    if-eqz p2, :cond_3

    .line 865
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 866
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    if-eqz v0, :cond_2

    .line 867
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "setOpMode: update the new config info"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->clearStorage()V

    .line 869
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 870
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getVersion(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setVersionBackup(I)V

    goto :goto_0

    .line 872
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "setOpMode: version is not changed, maintain previous config info"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 873
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->checkAndUpdateData(Ljava/util/Map;)V

    .line 875
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setNextAutoconfigTimeFromValidity(I)V

    .line 876
    goto :goto_1

    .line 878
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "setOpMode: data is empty, remain previous data"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 879
    nop

    .line 917
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setRcsDisabledState(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 700
    return-void
.end method

.method public startCurrConfig()V
    .locals 3

    .line 370
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsCurrConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "startCurrConfig: ongoing"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    return-void

    .line 374
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->sendEmptyMessage(I)Z

    .line 375
    return-void
.end method

.method protected startGeneralErrorRetryTimer(J)V
    .locals 4
    .param p1, "time"    # J

    .line 481
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isGeneralErrorRetryTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->stopGeneralErrorRetryTimer()V

    .line 484
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeneralErrorRetryTimer: set retryTimer to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.config.workflow.general_error_max_retry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v2, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 489
    return-void
.end method

.method protected startLocalConfig(ILcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 5
    .param p1, "version"    # I
    .param p2, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 392
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 393
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->loadLocalConfig()Ljava/util/Map;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    .line 396
    nop

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v4, "startLocalConfig: load localconfig"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->checkAndKeepRcsDisabledStateData(Ljava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->clearStorage()V

    .line 404
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 405
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setNextAutoconfigTimeFromValidity(I)V

    .line 407
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setValidityTimer(I)V

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 410
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setNextAutoconfigTime(J)V

    .line 412
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setVersionBackup(I)V

    .line 413
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mLastErrorCodeNonRemote:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setLastErrorCode(I)V

    .line 416
    .end local v1    # "count":I
    :cond_3
    if-nez v0, :cond_4

    .line 417
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v3, "startLocalConfig: can\'t load localconfig"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    :cond_4
    return-void
.end method

.method protected stopGeneralErrorRetryTimer()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "stopGeneralErrorRetryTimer: retryTimer is not running"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 494
    return-void

    .line 496
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "stopGeneralErrorRetryTimer: stop retryTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntent:Landroid/app/PendingIntent;

    .line 499
    return-void
.end method

.method protected unregisterGeneralErrorRetryIntentReceiver()V
    .locals 5

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "unregisterGeneralErrorRetryIntentReceiver: uregistered"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterGeneralErrorRetryIntentReceiver: can\'t unregister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method protected unregisterImsRegistrationListener()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 126
    return-void
.end method

.method protected unregisterMobileNetwork()V
    .locals 5

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 161
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "unregisterMobileNetwork: unregistered"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterMobileNetwork: can\'t unregister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
