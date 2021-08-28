.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.super Landroid/os/Handler;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IWorkflow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    }
.end annotation


# static fields
.field protected static final AUTO_CONFIG_MAX_FLOWCOUNT:I = 0x14

.field protected static final AUTO_CONFIG_MAX_TIMEOUT:J = 0xea60L

.field protected static final AUTO_CONFIG_RETRY_INTERVAL:I = 0x12c

.field protected static final CHARSET:Ljava/lang/String; = "utf-8"

.field protected static final HANDLE_AUTO_CONFIG_CLEAN_UP:I = 0xe

.field protected static final HANDLE_AUTO_CONFIG_CLEAR_DB:I = 0x2

.field protected static final HANDLE_AUTO_CONFIG_DUALSIM:I = 0x6

.field protected static final HANDLE_AUTO_CONFIG_FORCE:I = 0x0

.field protected static final HANDLE_AUTO_CONFIG_GENERAL_ERROR_RETRY_TIMER_EXPIRED:I = 0xd

.field protected static final HANDLE_AUTO_CONFIG_IMS_REGI_STATUS_CHANGED:I = 0xc

.field protected static final HANDLE_AUTO_CONFIG_MOBILE_CONNECTION_FAILURE:I = 0x4

.field protected static final HANDLE_AUTO_CONFIG_MOBILE_CONNECTION_SUCCESSFUL:I = 0x3

.field protected static final HANDLE_AUTO_CONFIG_RESET:I = 0x8

.field protected static final HANDLE_AUTO_CONFIG_SHARED_PREFERENCE_CHANGED:I = 0xa

.field protected static final HANDLE_AUTO_CONFIG_SMS_DEFAULT_APPLICATION_CHANGED:I = 0x5

.field protected static final HANDLE_AUTO_CONFIG_START:I = 0x1

.field protected static final HANDLE_CURR_CONFIG_START:I = 0xb

.field protected static final HANDLE_SHOW_MSISDN_DIALOG:I = 0x7

.field private static final INTENT_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.config.workflow.validity_timeout"

.field protected static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LAST_RCS_PROFILE:Ljava/lang/String; = "lastRcsProfile"

.field private static final LAST_SW_VERSION:Ljava/lang/String; = "lastSwVersion"

.field private static LOG_TAG:Ljava/lang/String; = null

.field protected static final NOTIFY_AUTO_CONFIGURATION_COMPLETED:I = 0x34

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "workflowbase"

.field private static final RCS_PROFILE:Ljava/lang/String; = "rcsprofile"

.field protected static final TIMESTAMP_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss ZZZZ"


# instance fields
.field private isGlobalsettingsObserverRegisted:Z

.field protected mClientVersion:Ljava/lang/String;

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field protected mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

.field protected mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

.field protected mHttpRedirect:Z

.field protected mIdentity:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsUsingcheckSetToGS:Z

.field protected mLastErrorCode:I

.field protected mLastErrorCodeNonRemote:I

.field protected final mMno:Lcom/sec/internal/constants/Mno;

.field protected mMobileNetwork:Z

.field protected final mModuleHandler:Landroid/os/Handler;

.field protected mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

.field protected mNeedToStopWork:Z

.field protected mNetwork:Landroid/net/Network;

.field protected mNetworkRequest:Landroid/net/NetworkRequest;

.field protected mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

.field protected mPhoneId:I

.field protected mPowerController:Lcom/sec/internal/ims/config/PowerController;

.field protected mRcsAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsAutoconfigSource:I

.field protected mRcsCustomServerUrl:Ljava/lang/String;

.field private final mRcsCustomServerUrlObserver:Landroid/database/ContentObserver;

.field protected mRcsProfile:Ljava/lang/String;

.field protected mRcsProvisioningVersion:Ljava/lang/String;

.field protected mRcsUPProfile:Ljava/lang/String;

.field protected mRcsVersion:Ljava/lang/String;

.field protected final mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;

.field protected mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field protected mStartForce:Z

.field private mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

.field protected mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field protected mSubId:I

.field protected mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

.field private mValidityIntent:Landroid/app/PendingIntent;

.field protected mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

.field protected sIsConfigOngoing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 418
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v5, v11, v12, v13}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v13}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 420
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "moduleHandler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "telephonyAdapter"    # Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;
    .param p6, "storageAdapter"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .param p7, "httpAdapter"    # Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;
    .param p8, "xmlParserAdapter"    # Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;
    .param p9, "dialogAdapter"    # Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;
    .param p10, "phoneId"    # I

    .line 374
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    move/from16 v3, p10

    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    const/16 v4, 0x3db

    iput v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    .line 107
    const/16 v4, 0xc8

    iput v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCodeNonRemote:I

    .line 157
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 158
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 159
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttpRedirect:Z

    .line 160
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    .line 161
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsUsingcheckSetToGS:Z

    .line 162
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    .line 163
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    .line 166
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNeedToStopWork:Z

    .line 167
    const/4 v6, -0x1

    iput v6, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAutoconfigSource:I

    .line 168
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    .line 169
    iput-boolean v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isGlobalsettingsObserverRegisted:Z

    .line 171
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    .line 172
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 173
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 175
    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    .line 181
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;

    invoke-direct {v7, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    iput-object v7, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1431
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;

    invoke-direct {v7, p0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrlObserver:Landroid/database/ContentObserver;

    .line 376
    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 377
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "WorkflowBase is created"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v7, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v8, "Workflow"

    const/16 v9, 0x1f4

    invoke-direct {v7, v1, v8, v9}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v7, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 381
    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    .line 382
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    .line 383
    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 384
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 385
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    .line 386
    move-object/from16 v11, p8

    iput-object v11, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    .line 387
    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v12, v13}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    .line 388
    iget v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v13, "rcs_version"

    const-string v14, "6.0"

    invoke-static {v12, v13, v14}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    .line 389
    iget v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v13, "rcs_client_version"

    invoke-static {v12, v13, v14}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    .line 390
    iget v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v13, "rcs_provisioning_version"

    const-string v14, "2.0"

    invoke-static {v12, v13, v14}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProvisioningVersion:Ljava/lang/String;

    .line 392
    iget v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-array v13, v4, [Ljava/lang/String;

    const-string/jumbo v14, "rcs_app_list"

    invoke-static {v12, v14, v13}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAppList:Ljava/util/List;

    .line 394
    if-eqz v2, :cond_0

    .line 395
    new-instance v12, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;

    invoke-direct {v12, v2, v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;-><init>(Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    iput-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    .line 398
    :cond_0
    iget-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "workflowbase"

    invoke-virtual {v12, v13, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 400
    new-instance v4, Lcom/sec/internal/ims/config/PowerController;

    const-wide/32 v12, 0xea60

    invoke-direct {v4, v1, v12, v13}, Lcom/sec/internal/ims/config/PowerController;-><init>(Landroid/content/Context;J)V

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    .line 401
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;

    invoke-direct {v4, p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    .line 402
    iget v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 403
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 404
    iget-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v6

    :cond_1
    iput v6, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSubId:I

    .line 405
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    .line 406
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget v6, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-direct {v5, p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;I)V

    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    .line 407
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v6, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-direct {v5, p0, v6, v12}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;ILcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;)V

    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 408
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    iput-object v5, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    .line 409
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->createSharedInfo()V

    .line 411
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.internal.ims.config.workflow.validity_timeout"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    iget-object v6, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->registerGlobalSettingsObserver()V

    .line 415
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p1, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 99
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAutoconfigSource:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/config/workflow/WorkflowBase;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p1, "x1"    # I

    .line 99
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAutoconfigSource:I

    return p1
.end method

.method private registerGlobalSettingsObserver()V
    .locals 5

    .line 1408
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1409
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrlObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isGlobalsettingsObserverRegisted:Z

    .line 1413
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 1414
    const-string/jumbo v2, "rcs_custom_config_server_url"

    const-string v4, ""

    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    .line 1415
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAutoconfigSource:I

    .line 1416
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "rcs_up_profile"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRcsCustomConfigServerUrl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRcsAutoconfigSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsAutoconfigSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRcsUPProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    .local v1, "mGlobalSettingsValues":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerGlobalSettingsObserver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": registerGlobalSettingsObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method private unregisterGlobalSettingsObserver()V
    .locals 2

    .line 1424
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterGlobalSettingsObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isGlobalsettingsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isGlobalsettingsObserverRegisted:Z

    .line 1429
    :cond_0
    return-void
.end method


# virtual methods
.method public addEventLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventLog"    # Ljava/lang/String;

    .line 1548
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1549
    return-void
.end method

.method protected cancelValidityTimer()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 1331
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelValidityTimer: validityTimer is not running."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-void

    .line 1334
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelValidityTimer:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    .line 1337
    return-void
.end method

.method public checkNetworkConnectivity()Z
    .locals 1

    .line 1341
    const/4 v0, 0x1

    return v0
.end method

.method protected checkRcsSwitchEur()Z
    .locals 5

    .line 502
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    .line 506
    .local v0, "rcsSwitch":Z
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCS switch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    return v0

    .line 510
    .end local v0    # "rcsSwitch":Z
    :cond_1
    return v1
.end method

.method protected checkStorage()V
    .locals 6

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v0, "defaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1169
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1173
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 1175
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1176
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 1177
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorage: Default set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_2
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->cleanup()V

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->cleanup()V

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->cleanup()V

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->cleanup()V

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 582
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->unregisterGlobalSettingsObserver()V

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 584
    return-void
.end method

.method public clearAutoConfigStorage()V
    .locals 2

    .line 588
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearAutoConfigStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeMessages(I)V

    .line 590
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 591
    return-void
.end method

.method protected clearStorage()V
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clearStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1302000a

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->deleteAll()Z

    .line 1162
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeValidToken()V

    .line 1163
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->checkStorage()V

    .line 1164
    return-void
.end method

.method public clearToken()V
    .locals 2

    .line 595
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public closeStorage()V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->closeStorage()V

    .line 1184
    return-void
.end method

.method protected createSharedInfo()V
    .locals 7

    .line 1560
    new-instance v6, Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/SharedInfo;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 1561
    return-void
.end method

.method public dump()V
    .locals 2

    .line 1553
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of Workflow:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1556
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 1
    .param p1, "mobile"    # Z

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->forceAutoConfig(Z)V

    .line 618
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 2
    .param p1, "mobile"    # Z

    .line 633
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->forceAutoConfig(Z)V

    .line 635
    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 4

    .line 788
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 789
    .local v0, "threadId":I
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 790
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 791
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 792
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 793
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setMethod(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMethod(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 796
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 797
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request starts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    .line 799
    .local v1, "response":Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 800
    return-object v1
.end method

.method public getLastErrorCode()I
    .locals 3

    .line 627
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastErrorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    return v0
.end method

.method protected getLastRcsProfile()Ljava/lang/String;
    .locals 5

    .line 1393
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsprofile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1394
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "lastRcsProfile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "lastRcsProfile":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastRcsProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-object v1
.end method

.method protected getLastSwVersion()Ljava/lang/String;
    .locals 5

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "workflowbase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1378
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "lastSwVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "mLastSwVersion":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastSwVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-object v1
.end method

.method protected getNextAutoconfigTime()J
    .locals 6

    .line 1345
    const-wide/16 v0, 0x0

    .line 1346
    .local v0, "result":J
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v3, "info/next_autoconfig_time"

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, "nextTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1350
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 1353
    goto :goto_0

    .line 1351
    :catch_0
    move-exception v3

    .line 1352
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1355
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextAutoconfigTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-wide v0
.end method

.method protected abstract getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end method

.method protected getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 7

    .line 1025
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 1026
    .local v0, "mode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    .line 1027
    .local v1, "version":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1030
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpMode.ACTIVE.value(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v2

    .line 1034
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1035
    .local v5, "currentMode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 1036
    move-object v0, v5

    .line 1037
    goto :goto_1

    .line 1034
    .end local v5    # "currentMode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1041
    :cond_2
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-object v0
.end method

.method protected getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 7
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

    .line 1005
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 1006
    .local v0, "mode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    .line 1008
    .local v1, "version":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1009
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "version :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v2

    .line 1013
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1014
    .local v5, "currentMode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 1015
    move-object v0, v5

    .line 1016
    goto :goto_1

    .line 1013
    .end local v5    # "currentMode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1020
    :cond_2
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-object v0
.end method

.method protected getParsedIntVersionBackup()I
    .locals 5

    .line 1246
    const/4 v0, 0x0

    .line 1248
    .local v0, "backupVersion":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1251
    goto :goto_0

    .line 1249
    :catch_0
    move-exception v1

    .line 1250
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParsedIntVersionBackup: cannot get backupVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return v0
.end method

.method protected getStorageState()I
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v0

    return v0
.end method

.method protected getToken()Ljava/lang/String;
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/token/token"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1293
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "root/token/token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getValidity()I
    .locals 4

    .line 1272
    const/4 v0, 0x0

    .line 1275
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1278
    goto :goto_0

    .line 1276
    :catch_0
    move-exception v1

    .line 1277
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1279
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidity from config DB :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return v0
.end method

.method protected getValidity(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1260
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1263
    .local v0, "result":I
    :try_start_0
    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1266
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v1

    .line 1265
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1267
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidity from config.xml :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return v0
.end method

.method protected getVersion()I
    .locals 3

    .line 1207
    const/4 v0, 0x0

    .line 1210
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1213
    goto :goto_0

    .line 1211
    :catch_0
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1215
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return v0
.end method

.method protected getVersion(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1194
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1197
    .local v0, "result":I
    :try_start_0
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1201
    goto :goto_0

    .line 1198
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1200
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    .line 1203
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return v0
.end method

.method protected getVersionBackup()Ljava/lang/String;
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v1, "backup/vers/version"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected getVersionFromServer()I
    .locals 5

    .line 1224
    const/4 v0, 0x0

    .line 1227
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v2, "root/vers/version_from_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1230
    goto :goto_0

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersionFromServer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return v0
.end method

.method protected getretryAfterTime()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;
        }
    .end annotation

    .line 1514
    const-wide/16 v0, 0x0

    .line 1516
    .local v0, "retryAfterTime":J
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Retry-After"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1517
    .local v2, "retryAfter":Ljava/lang/String;
    const-string v4, "[0-9]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1518
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    goto :goto_0

    .line 1520
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Date"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1521
    .local v3, "date":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1523
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1524
    .local v5, "cal":Ljava/util/Calendar;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1525
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-wide v0, v6

    .line 1526
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1527
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v6

    .line 1529
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "cal":Ljava/util/Calendar;
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 1530
    const-wide/16 v0, 0xa

    .line 1542
    .end local v2    # "retryAfter":Ljava/lang/String;
    :cond_1
    nop

    .line 1543
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-wide v0

    .line 1537
    :catch_0
    move-exception v2

    .line 1538
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1539
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retry after related header is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_2
    new-instance v3, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;

    const-string/jumbo v4, "retry after related header is invalid"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1532
    .end local v2    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    .line 1533
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1534
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retry after related header do not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_3
    new-instance v3, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;

    const-string/jumbo v4, "retry after related header do not exist"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public handleMSISDNDialog()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->handleMSISDNDialog()V

    .line 653
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 424
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 426
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 478
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown message!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    :cond_0
    goto/16 :goto_0

    .line 468
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "autoconfig dualsim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->resetStorage()V

    .line 470
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 471
    goto/16 :goto_0

    .line 463
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage()V

    .line 465
    goto/16 :goto_0

    .line 428
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "forced startAutoConfig"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeMessages(I)V

    .line 430
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 431
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->resetStorage()V

    .line 434
    :cond_5
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 437
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeMessages(I)V

    .line 438
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    if-eqz v0, :cond_7

    .line 439
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig:Already started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    goto :goto_0

    .line 442
    :cond_7
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    .line 443
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "AutoConfig:START"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 445
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    .line 446
    .local v0, "oldVersion":I
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->scheduleAutoconfig(I)V

    .line 449
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v3

    .line 450
    .local v3, "newVersion":I
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "AutoConfig:FINISH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 454
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 455
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 458
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 459
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    .line 460
    nop

    .line 481
    .end local v0    # "oldVersion":I
    .end local v3    # "newVersion":I
    :goto_0
    return-void
.end method

.method protected handleRcsProfileChange(Ljava/lang/String;)V
    .locals 6
    .param p1, "lastRcsProfile"    # Ljava/lang/String;

    .line 1491
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRcsProfileChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "rcsProfile":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1496
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 1497
    const-string/jumbo v3, "rcs_application_server"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "rcsAs":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRcsProfileChange: now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " last: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1501
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "UP_1.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UP_2.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_1

    .line 1503
    const-string v3, "jibe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1504
    const-string/jumbo v3, "sec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1505
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v4, "There is RCS profile update found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 1507
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1508
    .local v3, "current":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 1509
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastRcsProfile(Ljava/lang/String;)V

    .line 1511
    .end local v3    # "current":Ljava/util/Date;
    :cond_2
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .param p1, "current"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 829
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    .line 834
    const/16 v1, 0x8

    if-eqz p2, :cond_7

    const/16 v2, 0xc8

    const/4 v3, 0x3

    if-eq p2, v2, :cond_4

    const/16 v2, 0x193

    if-eq p2, v2, :cond_3

    const/16 v2, 0x1f4

    if-eq p2, v2, :cond_2

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1ff

    if-eq p2, v2, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 896
    new-instance v1, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string/jumbo v2, "unknown http status code"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 891
    :pswitch_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unknown Host error happened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 893
    goto/16 :goto_0

    .line 886
    :pswitch_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Socket error happened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 888
    goto/16 :goto_0

    .line 877
    :pswitch_2
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SSL error happened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 879
    goto/16 :goto_0

    .line 863
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The token isn\'t valid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeValidToken()V

    .line 866
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 867
    goto/16 :goto_0

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide v1

    .line 857
    .local v1, "retryAfterTime":J
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 859
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 860
    goto :goto_0

    .line 851
    .end local v1    # "retryAfterTime":J
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "internal server error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 853
    goto :goto_0

    .line 845
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "set version to zero"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 847
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 848
    goto :goto_0

    .line 836
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "200 ok received and it\'s normal case"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_5

    .line 838
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_5
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-nez v1, :cond_6

    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;

    if-eqz v1, :cond_8

    .line 840
    :cond_6
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    goto :goto_0

    .line 870
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RCS configuration server is unreachable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 872
    nop

    .line 898
    :cond_8
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .param p1, "init"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "fetchHttps"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p3, "finish"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;,
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 905
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse2: mLastErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v1

    if-eqz v1, :cond_10

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_f

    const/16 v2, 0x191

    const-string v3, "POST"

    if-eq v1, v2, :cond_e

    const/16 v2, 0x193

    if-eq v1, v2, :cond_d

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_c

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_a

    const/16 v2, 0x1ff

    const-string v4, ""

    const/4 v5, 0x0

    if-eq v1, v2, :cond_8

    const/16 v2, 0x12d

    const-string v6, "Location"

    if-eq v1, v2, :cond_6

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x320

    if-eq v1, v2, :cond_1

    const/16 v2, 0x321

    if-eq v1, v2, :cond_0

    .line 999
    new-instance v1, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string/jumbo v2, "unknown http status code"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Connect exception, please retry"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "Connection failed"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 990
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SSL handshake failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object v0, p3

    .line 992
    goto/16 :goto_2

    .line 923
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "oidc redirects"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Authentication-Info"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 925
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMethod(Ljava/lang/String;)V

    .line 927
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 928
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 929
    .local v1, "newUrloidc":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 930
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 934
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v3, "\\?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 935
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 936
    move-object v0, p2

    goto :goto_0

    .line 931
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "https redirect not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v2, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;

    const-string/jumbo v3, "redirect location should be https instead of http"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    .end local v1    # "newUrloidc":Ljava/lang/String;
    :cond_5
    :goto_0
    goto/16 :goto_2

    .line 914
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "http redirects"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 916
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 915
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    .line 916
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_7
    nop

    :goto_1
    move-object v1, v4

    .line 917
    .local v1, "newUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 918
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttpRedirect:Z

    .line 919
    move-object v0, p1

    .line 920
    goto/16 :goto_2

    .line 971
    .end local v1    # "newUrl":Ljava/lang/String;
    :cond_8
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RCC07_RCS 5.1 Specification 2.3.3.4.2.1 - The token is no longer valid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeValidToken()V

    .line 975
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 976
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string/jumbo v2, "ps_only_network"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 977
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v5, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 980
    :cond_9
    move-object v0, p1

    .line 981
    goto :goto_2

    .line 958
    .end local v1    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide v1

    .line 959
    .local v1, "retryAfterTime":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 960
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_b

    .line 961
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v4, "CMCC - next init"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object v0, p1

    goto :goto_2

    .line 964
    :cond_b
    move-object v0, p2

    .line 966
    goto :goto_2

    .line 953
    .end local v1    # "retryAfterTime":J
    :cond_c
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "fail. retry next boot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    move-object v0, p3

    .line 955
    goto :goto_2

    .line 947
    :cond_d
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "set version to 0. retry next boot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 949
    move-object v0, p3

    .line 950
    goto :goto_2

    .line 942
    :cond_e
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "401"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMethod(Ljava/lang/String;)V

    .line 944
    move-object v0, p2

    .line 945
    goto :goto_2

    .line 909
    :cond_f
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "normal case"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object v0, p2

    .line 911
    goto :goto_2

    .line 985
    :cond_10
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RCS configuration server is unreachable. retry next boot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object v0, p3

    .line 987
    nop

    .line 1001
    :cond_11
    :goto_2
    return-object v0
.end method

.method protected handleSwVersionChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "lastSwVersion"    # Ljava/lang/String;

    .line 1476
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSwVersionChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1479
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    .line 1480
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1481
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "there is fota upgrade found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1484
    .local v1, "current":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 1485
    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastSwVersion(Ljava/lang/String;)V

    .line 1486
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_SWVERSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1488
    .end local v1    # "current":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->init()V

    .line 573
    return-void
.end method

.method protected initStorage()Z
    .locals 8

    .line 1102
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initStorage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 1104
    const/16 v0, 0x3c

    .line 1106
    .local v0, "retryCount":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "initStorage: Telephony readiness check start."

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1110
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->isReady()Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    .line 1111
    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 1112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "initStorage: Telephony readiness check done. Now check identity."

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1116
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    .line 1117
    :goto_1
    if-lez v0, :cond_3

    .line 1118
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    .line 1119
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1120
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v4, "initStorage. getIdentityByPhoneId is valid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    goto :goto_2

    .line 1123
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 1124
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1126
    :cond_3
    :goto_2
    if-gtz v0, :cond_4

    .line 1127
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "initStorage: failed"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1128
    const v1, 0x1302000b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",STOR_IF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initStorage: failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 1130
    const/4 v1, 0x0

    return v1

    .line 1132
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "hashedIdentity":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1134
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1137
    .end local v0    # "retryCount":I
    .end local v3    # "hashedIdentity":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->checkStorage()V

    .line 1138
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1139
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v4, "rcs_application_server"

    invoke-static {v3, v4, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, "rcsAs":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_6

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_6

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_6

    const-string v3, "jibe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1142
    const-string/jumbo v3, "sec"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1143
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    .line 1144
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsUsingcheckSetToGS:Z

    .line 1146
    :cond_7
    return v2
.end method

.method public isConfigOngoing()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    return v0
.end method

.method protected isNetworkAvailable()Z
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "networkType":Ljava/lang/String;
    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 486
    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    return v2

    .line 491
    :cond_0
    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v4, 0x2

    .line 492
    invoke-interface {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    return v2

    .line 497
    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v4, 0x3

    .line 498
    invoke-interface {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 497
    :goto_0
    return v2
.end method

.method protected isSmsAppDefault()Z
    .locals 6

    .line 804
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get default sms app."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    .line 807
    .local v0, "defaultSmsApp":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 810
    goto :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getDefaultSmsPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 813
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "default sms app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v1, 0x0

    return v1

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "samsungPackage":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 818
    .local v2, "result":Z
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default sms app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " samsungPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultMessageAppInUse : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return v2
.end method

.method protected needScheduleAutoconfig(I)Z
    .locals 4
    .param p1, "simslot"    # I

    .line 1461
    const/4 v0, 0x1

    .line 1463
    .local v0, "needScheduleAutoconfig":Z
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->isTmpSimSwap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1465
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isSupportCarrierVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1467
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "needScheduleAutoconfig: Temporal SIM swapped, skip autoconfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 1469
    const/4 v0, 0x0

    .line 1472
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    return v0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->onDefaultSmsPackageChanged()V

    .line 658
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected removeToken()I
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/token/token"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeValidToken()V
    .locals 4

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "imsi":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "remove valid token"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "validrcsconfig"

    invoke-static {v1, v2, v3, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method protected resetStorage()V
    .locals 2

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reset ACS Config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1302000a

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 1156
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->initStorage()Z

    .line 1157
    return-void
.end method

.method protected scheduleAutoconfig(I)V
    .locals 9
    .param p1, "currentVersion"    # I

    .line 515
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleAutoconfig enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionFromServer()I

    move-result v0

    .line 517
    .local v0, "versionFromServer":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleAutoconfig: getOpMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " currentVersion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " getVersionBackup(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " versionFromServer: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",OP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",CV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",BV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",SV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    const/high16 v2, 0x13020000

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 527
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 529
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Query autoconfig server now: force"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->work()V

    goto/16 :goto_3

    .line 531
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 533
    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_7

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v1

    .line 540
    .local v1, "nextAutoconfigTime":J
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nextAutoconfigTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 543
    .local v3, "current":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 544
    .local v4, "remainValidity":I
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remainValidity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-gtz v4, :cond_5

    .line 546
    const/4 v5, 0x1

    .line 547
    .local v5, "needQuery":Z
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 548
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v7, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_3

    .line 549
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "waiting for query autoconfig"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getNextCancel()Z

    move-result v5

    .line 552
    :cond_3
    if-eqz v5, :cond_4

    .line 553
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Query autoconfig server now"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->work()V

    goto :goto_0

    .line 556
    :cond_4
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Query autoconfig server - cancel by user"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v7

    if-lez v7, :cond_6

    .line 558
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 561
    .end local v5    # "needQuery":Z
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_6

    .line 562
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query autoconfig server after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const v5, 0x13020007

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",RVAL:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Query autoconfig server after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    goto :goto_3

    .line 561
    :cond_6
    :goto_0
    goto :goto_3

    .line 534
    .end local v1    # "nextAutoconfigTime":J
    .end local v3    # "current":Ljava/util/Date;
    .end local v4    # "remainValidity":I
    :cond_7
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 535
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Autoconfig version is -2. If scheduleAutoconfig was called, it means that user enabled RCS in settings. Force autoconfig."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->scheduleAutoconfig(I)V

    goto :goto_3

    .line 532
    :cond_8
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Skip querying autoconfig server since current version is -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_3
    return-void
.end method

.method protected setCompleted(Z)V
    .locals 5
    .param p1, "value"    # Z

    .line 1187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1188
    .local v0, "data":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/completed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 1190
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1189
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1191
    return-void
.end method

.method protected setLastErrorCode(I)V
    .locals 2
    .param p1, "error"    # I

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",LEC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 825
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCode:I

    .line 826
    return-void
.end method

.method protected setLastRcsProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "rcsProfile"    # Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsprofile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1401
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastRcsProfile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1403
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastRcsProfile"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1404
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1405
    return-void
.end method

.method protected setLastSwVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "swVersion"    # Ljava/lang/String;

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "workflowbase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1385
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastSwVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1388
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastSwVersion"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1389
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1390
    return-void
.end method

.method protected setNextAutoconfigTime(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 1360
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/next_autoconfig_time"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1361
    return-void
.end method

.method protected setNextAutoconfigTimeFromValidity(I)V
    .locals 7
    .param p1, "validity"    # I

    .line 1364
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextAutoconfigTimeFromValidity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    if-lez p1, :cond_0

    .line 1366
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1367
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 1369
    .end local v0    # "current":Ljava/util/Date;
    :cond_0
    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 6
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

    .line 1053
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new operation mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020003

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": new operation mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 1056
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$3;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1094
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 1096
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto/16 :goto_3

    .line 1087
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage()V

    .line 1088
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 1089
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 1090
    goto/16 :goto_3

    .line 1058
    :cond_3
    if-eqz p2, :cond_8

    .line 1059
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1062
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v2

    if-lt v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-nez v1, :cond_6

    .line 1063
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v2

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1067
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "the same or lower version and not RJIL. remain to previous data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "oldToken":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "newToken":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity(Ljava/util/Map;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 1071
    if-eqz v2, :cond_7

    .line 1072
    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1073
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token is changed. setToken : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;)V

    goto :goto_1

    .line 1065
    .end local v1    # "oldToken":Ljava/lang/String;
    .end local v2    # "newToken":Ljava/lang/String;
    :cond_6
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->writeDataToStorage(Ljava/util/Map;)V

    .line 1078
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_7
    :goto_1
    goto :goto_2

    .line 1079
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null data. remain previous mode & data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeFromValidity(I)V

    .line 1082
    nop

    .line 1099
    :goto_3
    return-void
.end method

.method protected setTcUserAccept(I)V
    .locals 3
    .param p1, "userAccept"    # I

    .line 1372
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTcUserAccept:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/tc_popup_user_accept"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1374
    return-void
.end method

.method protected setToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .line 1301
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const v0, 0x13020009

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",reset ACS token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/token/token"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1305
    return-void
.end method

.method protected setValidity(I)V
    .locals 3
    .param p1, "validity"    # I

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VAL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020004

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1286
    return-void
.end method

.method protected setValidityTimer(I)V
    .locals 7
    .param p1, "validityPeriod"    # I

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1313
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setValidityTimer: validityTimer is already running. Stopping it."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 1316
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValidityTimer: start validity period timer ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-nez p1, :cond_1

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1320
    :cond_1
    if-lez p1, :cond_2

    .line 1321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.config.workflow.validity_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    .line 1325
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1327
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method

.method protected setVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020005

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "root/vers/version"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1221
    return-void
.end method

.method protected setVersionBackup(I)V
    .locals 3
    .param p1, "version"    # I

    .line 1256
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backup/vers/version"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1257
    return-void
.end method

.method protected setVersionFromServer(I)V
    .locals 3
    .param p1, "version"    # I

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VERFS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020006

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "root/vers/version_from_server"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1238
    return-void
.end method

.method protected sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/PowerController;->sleep(J)V

    .line 1309
    return-void
.end method

.method public startAutoConfig(Z)V
    .locals 1
    .param p1, "mobile"    # Z

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->startAutoConfig(Z)V

    .line 608
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .locals 1
    .param p1, "mobile"    # Z

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;->startAutoConfigDualsim(Z)V

    .line 613
    return-void
.end method

.method public stopWorkFlow()V
    .locals 2

    .line 644
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop work flow in workflow state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNeedToStopWork:Z

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 648
    return-void
.end method

.method abstract work()V
.end method

.method protected writeDataToStorage(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1046
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    monitor-enter v0

    .line 1047
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage()V

    .line 1048
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
