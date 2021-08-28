.class public Lcom/sec/internal/ims/config/workflow/WorkflowJibe;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowJibe.java"


# static fields
.field protected static final HTTPERR_RETRY_AFTER_TIME:I = 0xa

.field protected static final HTTPERR_TRY_MAX_COUNT:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final MSISDN_TRY_MAX_COUNT:I = 0x1

.field protected static final MSISDN_TRY_MAX_COUNT_NON_GC:I = 0x3

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc


# instance fields
.field protected m503ErrCount:I

.field protected m511ErrCount:I

.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mHttpResponse:I

.field protected mIsEnrichedHeaderFailed:Z

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConfigNeeded:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z

.field protected mIsWifiConnected:Z

.field private final mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mMsisdnTryCount:I

.field protected mNewVersion:I

.field protected mOldVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 77
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

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

    .line 61
    const/4 v0, 0x0

    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    .line 62
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    .line 63
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 64
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 65
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 66
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 67
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 68
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    .line 69
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    .line 70
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 71
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 72
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 73
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 74
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 196
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 79
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    return-void
.end method

.method private getMsisdnForGc()Ljava/lang/String;
    .locals 4

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 493
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 500
    return-object v0
.end method

.method private getMsisdnForJibe()Ljava/lang/String;
    .locals 4

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "msisdn":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 471
    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 472
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v2, "need msisdn from telephony/application"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "receive msisdn from telephony/application"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 479
    :cond_0
    return-object v0
.end method

.method private isMsisdnForGcNeeded()Z
    .locals 2

    .line 483
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    .line 484
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0
.end method


# virtual methods
.method protected endAutoConfig(Z)V
    .locals 6
    .param p1, "result"    # Z

    .line 287
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAutoConfig: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    .line 289
    .local v0, "validRcsDisabledState":Z
    const/16 v1, 0x34

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    if-ltz v4, :cond_1

    if-nez v0, :cond_1

    .line 290
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-interface {v4, v1, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    goto :goto_2

    .line 291
    :cond_1
    if-nez p1, :cond_3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    if-ltz v4, :cond_3

    if-nez v0, :cond_3

    .line 292
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-interface {v4, v1, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    .line 295
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setLastErrorCode(I)V

    .line 298
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setCompleted(Z)V

    .line 299
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 300
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 301
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 302
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mStartForce:Z

    .line 303
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sIsConfigOngoing:Z

    .line 304
    return-void
.end method

.method protected executeAutoConfig()V
    .locals 3

    .line 282
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "executeAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->work()V

    .line 284
    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 3

    .line 350
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "getHttpResponse"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 356
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMobileConfigNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 360
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->checkMobileConnection(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "set network to mobile network"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 364
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "set network to default network"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 369
    .local v0, "response":Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 370
    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .param p1, "type"    # I

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 729
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextWorkflow: Unexpected type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    return-object v0

    .line 720
    :pswitch_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 690
    :pswitch_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 624
    :pswitch_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 669
    :pswitch_3
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 633
    :pswitch_4
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 556
    :pswitch_5
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 530
    :pswitch_6
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

    .line 507
    :pswitch_7
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object v0

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
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "AutoConfig: finish"

    const-string v3, " newVersion: "

    const-string v4, "oldVersion: "

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v7, :cond_7

    const-string v8, "mIsMobileConfigCompleted: "

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "defaultmsgappinuse"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 176
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string/jumbo v2, "sms default application is changed to samsung"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setVersion(I)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setRcsState(Ljava/lang/String;)V

    .line 179
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setRcsDisabledState(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setValidity(I)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->cancelValidityTimer()V

    .line 182
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setNextAutoconfigTime(J)V

    goto/16 :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string/jumbo v2, "sms default application is changed to non-samsung"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 186
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->removeMessages(I)V

    .line 187
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sendEmptyMessage(I)Z

    .line 189
    goto/16 :goto_0

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_3

    .line 156
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 160
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->changeOpMode(Z)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    .line 163
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 164
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 166
    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 170
    goto/16 :goto_0

    .line 134
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->removeMessages(I)V

    .line 135
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->executeAutoConfig()V

    .line 141
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    .line 144
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 145
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 151
    goto/16 :goto_0

    .line 87
    :cond_6
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mStartForce:Z

    .line 90
    :cond_7
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sIsConfigOngoing:Z

    if-eqz v0, :cond_8

    .line 91
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto/16 :goto_0

    .line 94
    :cond_8
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sIsConfigOngoing:Z

    .line 95
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConfig: start, mStartForce: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mStartForce:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mModuleHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->initAutoConfig()V

    .line 99
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    .line 101
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->scheduleAutoconfigForJibe(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsWifiConnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mIsMobileConfigNeeded: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz v0, :cond_9

    .line 105
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "use mobile network"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 107
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 108
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 109
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->removeMessages(I)V

    .line 114
    nop

    .line 115
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    .line 114
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 118
    goto :goto_0

    .line 120
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->executeAutoConfig()V

    .line 122
    :cond_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    .line 123
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 130
    nop

    .line 194
    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 9
    .param p1, "current"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->addEventLog(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setLastErrorCode(I)V

    .line 380
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getLastErrorCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_b

    const/16 v4, 0x193

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v1, v4, :cond_5

    const/16 v4, 0x1f7

    if-eq v1, v4, :cond_3

    const/16 v4, 0x1ff

    if-eq v1, v4, :cond_0

    goto/16 :goto_0

    .line 382
    :cond_0
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 384
    goto/16 :goto_1

    .line 386
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The token isn\'t valid: m511ErrCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setToken(Ljava/lang/String;)V

    .line 388
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    if-ge v1, v2, :cond_2

    .line 389
    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 390
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "retry after 10 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setValidityTimer(I)V

    .line 392
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setNextAutoconfigTime(J)V

    .line 394
    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 395
    goto/16 :goto_1

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getretryAfterTime()J

    move-result-wide v4

    .line 447
    .local v4, "retryAfter":J
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "m503ErrCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " retryAfterTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    if-ge v1, v2, :cond_4

    .line 449
    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 450
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retry after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    long-to-int v1, v4

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setValidityTimer(I)V

    .line 452
    long-to-int v1, v4

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setNextAutoconfigTime(J)V

    .line 454
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 455
    goto/16 :goto_1

    .line 408
    .end local v4    # "retryAfter":J
    :cond_5
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-nez v1, :cond_6

    .line 409
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 410
    goto/16 :goto_1

    .line 412
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "403 is received, mMsisdnTryCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "msisdn":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isMsisdnForGcNeeded()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 415
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 416
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileNetwork:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 417
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Retry counter for msisdn reached. Abort."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    return-object v2

    .line 420
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForGc()Ljava/lang/String;

    move-result-object v1

    .line 421
    const-string/jumbo v2, "skip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 423
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "user enter skip msisdn."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnMsguiDisplay(Ljava/lang/String;)V

    .line 425
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v2, "sendIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string v3, "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getIsNeeded()Z

    move-result v3

    const-string v4, "isNeeded"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    return-object v3

    .line 432
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForJibe()Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 436
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 437
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v3, "msisdn doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    goto :goto_1

    .line 440
    :cond_a
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v4, "msisdn exists"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 443
    goto :goto_1

    .line 458
    .end local v1    # "msisdn":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 459
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 463
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    goto :goto_1

    .line 398
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_d

    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    if-nez v1, :cond_d

    .line 399
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v4, "http enriched header is failed, retry it with default header"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    .line 401
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 402
    goto :goto_1

    .line 404
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 405
    nop

    .line 465
    :goto_1
    return-object v0
.end method

.method protected initAutoConfig()V
    .locals 3

    .line 265
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNetwork:Landroid/net/Network;

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 268
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 269
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->checkWifiConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 271
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 274
    :cond_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 276
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 277
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 278
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 279
    return-void
.end method

.method public onMobileConnectionChanged(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isAvailable"    # Z

    .line 210
    if-eqz p2, :cond_1

    .line 211
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-nez v0, :cond_2

    .line 212
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMobileConnectionChanged: onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p1, :cond_0

    .line 214
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mobile connection is successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mNetwork:Landroid/net/Network;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 217
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mobile connection info is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMobileConnectionChanged: onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 226
    :cond_2
    :goto_0
    return-void
.end method

.method protected scheduleAutoconfigForJibe(I)Z
    .locals 9
    .param p1, "currentVersion"    # I

    .line 229
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string/jumbo v2, "scheduleAutoconfigForJibe"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->needScheduleAutoconfig(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v2, "needScheduleAutoconfig: false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v1

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mStartForce:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->cancelValidityTimer()V

    .line 236
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "force autoconfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v2

    .line 239
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    goto/16 :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextAutoconfigTime()J

    move-result-wide v3

    .line 245
    .local v3, "nextAutoconfigTime":J
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextAutoconfigTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 248
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 249
    .local v5, "remainValidity":I
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remainValidity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-gtz v5, :cond_3

    .line 252
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v6, "need autoconfig"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v2

    .line 255
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-lez v2, :cond_4

    .line 256
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoconfig schedule: after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const v2, 0x13020300

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",VNE:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": autoconfig schedule: after "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->addEventLog(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setValidityTimer(I)V

    .line 261
    :cond_4
    return v1

    .line 240
    .end local v0    # "current":Ljava/util/Date;
    .end local v3    # "nextAutoconfigTime":J
    .end local v5    # "remainValidity":I
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " skip autoconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1
.end method

.method work()V
    .locals 9

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 309
    .local v1, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v2, 0x14

    .line 311
    .local v2, "count":I
    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 313
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

    .line 343
    :goto_1
    goto/16 :goto_3

    .line 335
    :catch_0
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 337
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown exception occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sleep(J)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 342
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 331
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 332
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException occur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 334
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 320
    :catch_2
    move-exception v4

    .line 321
    .local v4, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "message":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnknownStatusException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v6, "body and cookie are null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    goto :goto_2

    .line 326
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 2 sec and retry"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sleep(J)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 330
    :goto_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v4    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    .end local v5    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 314
    :catch_3
    move-exception v3

    .line 315
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

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

    .line 316
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->sleep(J)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 319
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 344
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 346
    :cond_2
    return-void
.end method
