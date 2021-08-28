.class public Lcom/sec/internal/ims/config/workflow/WorkflowSec;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowSec.java"


# static fields
.field protected static final INTENT_EXTRA_CAUSE:Ljava/lang/String; = "CAUSE"

.field protected static final INTENT_LTE_REJECT:Ljava/lang/String; = "android.intent.action.LTE_REJECT"

.field protected static final INTENT_REGIST_REJECT:Ljava/lang/String; = "com.android.server.status.regist_reject"

.field protected static final INTERNALERR_RETRY_MAX_COUNT:I = 0x1

.field protected static final INTERNAL_503_ERR_RETRY_MAX_COUNT:I = 0x1

.field protected static final INTERNAL_511_ERR_RETRY_MAX_COUNT:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc

.field protected static final RESET_RETRY_MAX_COUNT:I = 0x3

.field private static final RETRY_INTERVAL:[I

.field private static final RETRY_INTERVAL_DAILY:I = 0x15180

.field protected static final STORAGE_STATE_READY:I = 0x1

.field private static mAcsCnt:I


# instance fields
.field private mAuthHiddenTryCount:I

.field private mAuthTryCount:I

.field protected mHttpResponse:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNewVersion:I

.field private mOldVersion:I

.field private mResetRetryCount:I

.field private mTrialCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->RETRY_INTERVAL:[I

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAcsCnt:I

    return-void

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

    .line 98
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceSec;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;-><init>(I)V

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

    .line 66
    const/4 v0, 0x0

    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    .line 67
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mNewVersion:I

    .line 68
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    .line 69
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthTryCount:I

    .line 70
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthHiddenTryCount:I

    .line 71
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mResetRetryCount:I

    .line 76
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/workflow/WorkflowSec;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->needToProcessRejectCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mResetRetryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/workflow/WorkflowSec;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 49
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->resetAutoConfigInfo(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 49
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthTryCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 49
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthTryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 49
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthHiddenTryCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 49
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthHiddenTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthHiddenTryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setInfoLastErrorCode(I)V

    return-void
.end method

.method public static getAcsTriggerCount()I
    .locals 1

    .line 656
    sget v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAcsCnt:I

    return v0
.end method

.method private getTrialInterval()I
    .locals 4

    .line 247
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrialCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTrialCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTrialCount:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->RETRY_INTERVAL:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 249
    aget v0, v1, v0

    return v0

    .line 251
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trial Count is bigger than retry count. So retry once a day"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, -0x1

    return v0
.end method

.method private needToProcessRejectCode(Ljava/lang/String;)Z
    .locals 5
    .param p1, "rejectCodeString"    # Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rejectCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    return v0

    .line 211
    :cond_0
    const/4 v1, 0x0

    .line 213
    .local v1, "rejectCode":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 217
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const v2, 0x13020503

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",LTE reject by cause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 218
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    return v0

    .line 219
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private resetAutoConfigInfo(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isNeedSetVersion"    # Ljava/lang/Boolean;

    .line 225
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string/jumbo v2, "resetAutoConfigInfo"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resetAutoConfigInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1302000a

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setVersion(I)V

    .line 230
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setRcsState(Ljava/lang/String;)V

    .line 231
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setRcsDisabledState(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setValidity(I)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->cancelValidityTimer()V

    .line 234
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setNextAutoconfigTime(J)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 240
    :cond_1
    return-void
.end method

.method private retryExpBackoff()V
    .locals 7

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 258
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion()I

    move-result v1

    .line 259
    .local v1, "version":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 260
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retryExpBackoff: rcsDisabledState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,Currnet version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getTrialInterval()I

    move-result v2

    .line 263
    .local v2, "interval":I
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mLastErrorCode:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_1

    .line 264
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mLastErrorCode is 403, No retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->cancelValidityTimer()V

    goto/16 :goto_0

    .line 266
    :cond_1
    const v3, 0x13020500

    if-gez v2, :cond_2

    .line 268
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "retryExpBackoff: Once a day"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",RID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": retryExpBackoff: Once a day"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 271
    const v3, 0x15180

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setValidityTimer(I)V

    .line 272
    const-wide/32 v3, 0x15180

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setNextAutoconfigTime(J)V

    goto :goto_0

    .line 275
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retryExpBackoff: interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",RBOI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": retryExpBackoff: interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setValidityTimer(I)V

    .line 279
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setNextAutoconfigTime(J)V

    .line 280
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTrialCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTrialCount:I

    .line 283
    .end local v2    # "interval":I
    :cond_3
    :goto_0
    return-void
.end method

.method private setInfoLastErrorCode(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/last_error_code"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 650
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->cleanup()V

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 415
    packed-switch p1, :pswitch_data_0

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 628
    :pswitch_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 601
    :pswitch_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 539
    :pswitch_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 579
    :pswitch_3
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 548
    :pswitch_4
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 453
    :pswitch_5
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 442
    :pswitch_6
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

    return-object v0

    .line 417
    :pswitch_7
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V

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
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_6

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 181
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->checkMobileConnection(Landroid/net/ConnectivityManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignore auto config reset in mobile connection state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto/16 :goto_1

    .line 169
    :cond_1
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mResetRetryCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mResetRetryCount:I

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getStorageState()I

    move-result v4

    if-eq v4, v3, :cond_2

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mResetRetryCount:I

    if-ge v4, v1, :cond_2

    .line 172
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v3, "StorageAdapter\'s state is idle"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->removeMessages(I)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 176
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->resetAutoConfigInfo(Ljava/lang/Boolean;)V

    .line 178
    goto/16 :goto_1

    .line 150
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v4, "defaultmsgappinuse"

    invoke-static {v0, v4, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 152
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string/jumbo v3, "sms default application is changed to samsung"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->resetAutoConfigInfo(Ljava/lang/Boolean;)V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    goto/16 :goto_1

    .line 156
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string/jumbo v2, "sms default application is changed to non-samsung"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 159
    goto/16 :goto_1

    .line 112
    :cond_5
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mStartForce:Z

    .line 115
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sIsConfigOngoing:Z

    if-eqz v0, :cond_7

    .line 116
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto/16 :goto_1

    .line 119
    :cond_7
    sget v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAcsCnt:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAcsCnt:I

    .line 120
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sIsConfigOngoing:Z

    .line 121
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoConfig: start : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAcsCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 124
    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthTryCount:I

    .line 125
    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mAuthHiddenTryCount:I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setInternalErrRetryCount(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setInternal503ErrRetryCount(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setInternal511ErrRetryCount(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    .line 132
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->needScheduleAutoconfig(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->scheduleAutoconfig(I)V

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mNewVersion:I

    .line 136
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newVersion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mNewVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v5, "AutoConfig: finish"

    invoke-static {v0, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    if-ltz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    const/16 v4, 0x34

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mNewVersion:I

    if-lez v5, :cond_9

    move v5, v3

    goto :goto_0

    :cond_9
    move v5, v2

    :goto_0
    invoke-interface {v0, v4, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    .line 142
    :cond_a
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setCompleted(Z)V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mOldVersion:I

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mNewVersion:I

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mStartForce:Z

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 146
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sIsConfigOngoing:Z

    .line 147
    nop

    .line 183
    :goto_1
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .param p1, "current"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 340
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mLastErrorCode:I

    .line 341
    const/4 v0, 0x3

    const/16 v1, 0x1ff

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    .line 342
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_3

    .line 345
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->removeValidToken()V

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getInternal511ErrRetryCount()I

    move-result v0

    add-int/2addr v0, v3

    .line 348
    .local v0, "retry511Cnt":I
    if-gt v0, v3, :cond_1

    .line 349
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The token is no longer valid, retry511Cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setInternal511ErrRetryCount(I)V

    .line 351
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .local v1, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 353
    .end local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v4, "The token is no longer valid, finish"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .line 356
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :goto_0
    goto/16 :goto_3

    .line 357
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_2
    const/16 v4, 0x193

    if-ne p2, v4, :cond_7

    instance-of v4, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-eqz v4, :cond_7

    .line 358
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mMobileNetwork:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    if-eq v0, v1, :cond_3

    .line 359
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 360
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v3, "403 received. Set version to 0. Finish"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_3

    .line 363
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "msisdn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 364
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v4, "no msisdn. try to get user"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "user didn\'t enter msisdn finish process"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_1

    .line 373
    .end local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .line 376
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :goto_1
    goto/16 :goto_3

    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 377
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v3, "msisdn is wrong from user, try it again after 300 sec"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setValidityTimer(I)V

    .line 379
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_3

    .line 381
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto/16 :goto_3

    .line 384
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_7
    const/16 v1, 0x1f4

    if-ne p2, v1, :cond_9

    .line 385
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v4, "internal server error"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getInternalErrRetryCount()I

    move-result v0

    add-int/2addr v0, v3

    .line 387
    .local v0, "retryCnt":I
    if-gt v0, v3, :cond_8

    .line 388
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryCnt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setInternalErrRetryCount(I)V

    .line 390
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_2

    .line 392
    .end local v1    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_8
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    move-object v0, v1

    .line 394
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :goto_2
    goto :goto_3

    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_9
    const/16 v1, 0x1f7

    if-ne p2, v1, :cond_b

    .line 395
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string/jumbo v5, "service unavailable"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getInternal503ErrRetryCount()I

    move-result v1

    add-int/2addr v1, v3

    .line 397
    .local v1, "retry503Cnt":I
    if-gt v1, v3, :cond_a

    .line 398
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry503Cnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setInternal503ErrRetryCount(I)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getretryAfterTime()J

    move-result-wide v2

    .line 404
    .local v2, "retryAfterTime":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sleep(J)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 406
    .end local v1    # "retry503Cnt":I
    .end local v2    # "retryAfterTime":J
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_3

    .line 401
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .restart local v1    # "retry503Cnt":I
    :cond_a
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0

    .line 407
    .end local v1    # "retry503Cnt":I
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 410
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :goto_3
    return-object v0
.end method

.method public reInitIfNeeded()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "identity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mIdentity:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string/jumbo v3, "reInitIfNeeded: identity changed, re-init storage"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    const v1, 0x13020505

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",STOR_RI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": reInitIfNeeded: identity changed, re-init storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->resetStorage()V

    .line 196
    .end local v0    # "identity":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method work()V
    .locals 9

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 288
    .local v1, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v2, 0x14

    .line 290
    .local v2, "count":I
    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 292
    const/16 v3, 0x8

    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 322
    :goto_1
    goto/16 :goto_3

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 316
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown exception occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sleep(J)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 321
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 311
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException occur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 313
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 299
    :catch_2
    move-exception v4

    .line 300
    .local v4, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "message":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnknownStatusException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v6, "body and cookie are null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    goto :goto_2

    .line 305
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 2 sec and retry"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sleep(J)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 309
    :goto_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v4    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    .end local v5    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 293
    :catch_3
    move-exception v3

    .line 294
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoInitialDataException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sleep(J)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 298
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 323
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 326
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const/4 v3, 0x0

    const-string/jumbo v4, "rcs_support_exponential_retry_acs"

    invoke-static {v0, v4, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 328
    .local v0, "isSupportExponentialRetryAcs":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->retryExpBackoff()V

    .line 331
    :cond_3
    return-void
.end method
