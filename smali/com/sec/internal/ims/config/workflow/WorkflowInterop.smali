.class public Lcom/sec/internal/ims/config/workflow/WorkflowInterop;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowInterop.java"


# static fields
.field protected static final HTTPERR_RETRY_AFTER_TIME:I = 0xa

.field protected static final HTTPERR_TRY_MAX_COUNT:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc


# instance fields
.field protected m503ErrCount:I

.field protected m511ErrCount:I

.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mHttpResponse:I

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z

.field protected mIsWifiConnected:Z

.field protected mMsisdnTryCount:I

.field protected mNewVersion:I

.field protected mOldVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 69
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

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

    .line 55
    const/4 v0, 0x0

    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    .line 56
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    .line 57
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 58
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    .line 59
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsWifiConnected:Z

    .line 60
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    .line 61
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    .line 62
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    .line 63
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    .line 64
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mMsisdnTryCount:I

    .line 65
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    .line 66
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    .line 71
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 72
    return-void
.end method


# virtual methods
.method protected endAutoConfig(Z)V
    .locals 6
    .param p1, "result"    # Z

    .line 221
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endAutoConfig: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    .line 223
    .local v0, "validRcsDisabledState":Z
    const/16 v1, 0x34

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    if-ltz v4, :cond_1

    if-nez v0, :cond_1

    .line 224
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-interface {v4, v1, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    goto :goto_2

    .line 225
    :cond_1
    if-nez p1, :cond_3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    if-ltz v4, :cond_3

    if-nez v0, :cond_3

    .line 226
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-interface {v4, v1, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->notifyAutoConfigurationListener(IZ)V

    .line 229
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setLastErrorCode(I)V

    .line 232
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setCompleted(Z)V

    .line 233
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 234
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    .line 235
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mStartForce:Z

    .line 236
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sIsConfigOngoing:Z

    .line 237
    return-void
.end method

.method protected executeAutoConfig()V
    .locals 3

    .line 216
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "executeAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->work()V

    .line 218
    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 3

    .line 283
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "getHttpResponse"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 289
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMobileRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 293
    .local v0, "response":Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 294
    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .param p1, "type"    # I

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 551
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 542
    :pswitch_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 519
    :pswitch_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 459
    :pswitch_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 504
    :pswitch_3
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 468
    :pswitch_4
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 397
    :pswitch_5
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 380
    :pswitch_6
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object v0

    .line 358
    :pswitch_7
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

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
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AutoConfig: finish"

    const-string v2, " newVersion: "

    const-string v3, "oldVersion: "

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_7

    const-string v6, "mIsMobileConfigCompleted: "

    const/4 v7, 0x4

    if-eq v0, v4, :cond_4

    if-eq v0, v7, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 164
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "defaultmsgappinuse"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 148
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string/jumbo v2, "sms default application is changed to samsung"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setVersion(I)V

    .line 150
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setRcsState(Ljava/lang/String;)V

    .line 151
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setRcsDisabledState(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setValidity(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->cancelValidityTimer()V

    .line 154
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setNextAutoconfigTime(J)V

    goto/16 :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string/jumbo v2, "sms default application is changed to non-samsung"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 158
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->removeMessages(I)V

    .line 159
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sendEmptyMessage(I)Z

    .line 161
    goto/16 :goto_0

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_3

    .line 129
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 133
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->changeOpMode(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->endAutoConfig(Z)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 138
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 142
    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->removeMessages(I)V

    .line 109
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_5

    .line 110
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 114
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->executeAutoConfig()V

    .line 115
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    .line 117
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->endAutoConfig(Z)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 124
    goto/16 :goto_0

    .line 79
    :cond_6
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mStartForce:Z

    .line 82
    :cond_7
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sIsConfigOngoing:Z

    if-eqz v0, :cond_8

    .line 83
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto/16 :goto_0

    .line 86
    :cond_8
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sIsConfigOngoing:Z

    .line 87
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutoConfig: start, mStartForce: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mStartForce:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mModuleHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->initAutoConfig()V

    .line 91
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->scheduleAutoconfigForInterop(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->executeAutoConfig()V

    .line 96
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    .line 97
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->endAutoConfig(Z)V

    .line 98
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 100
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 104
    nop

    .line 166
    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 8
    .param p1, "current"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->addEventLog(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setLastErrorCode(I)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getLastErrorCode()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_6

    const/16 v2, 0x193

    const/16 v3, 0x8

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f7

    const/4 v4, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1ff

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 306
    :cond_0
    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 308
    goto/16 :goto_1

    .line 310
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The token isn\'t valid: m511ErrCount: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setToken(Ljava/lang/String;)V

    .line 312
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    if-ge v1, v4, :cond_2

    .line 313
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    .line 314
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "retry after 10 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setValidityTimer(I)V

    .line 316
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setNextAutoconfigTime(J)V

    .line 318
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 319
    goto/16 :goto_1

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getretryAfterTime()J

    move-result-wide v1

    .line 333
    .local v1, "retryAfter":J
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m503ErrCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " retryAfterTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    if-ge v5, v4, :cond_4

    .line 335
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    .line 336
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 337
    long-to-int v4, v1

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setValidityTimer(I)V

    .line 338
    long-to-int v4, v1

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setNextAutoconfigTime(J)V

    .line 340
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 341
    goto :goto_1

    .line 326
    .end local v1    # "retryAfter":J
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "set version to zero"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 329
    goto :goto_1

    .line 344
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    .line 345
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    .line 349
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    goto :goto_1

    .line 322
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 323
    nop

    .line 351
    :goto_1
    return-object v0
.end method

.method protected initAutoConfig()V
    .locals 3

    .line 205
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mNetwork:Landroid/net/Network;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 208
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->checkWifiConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsWifiConnected:Z

    .line 210
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    .line 211
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    .line 212
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mMsisdnTryCount:I

    .line 213
    return-void
.end method

.method protected scheduleAutoconfigForInterop(I)Z
    .locals 9
    .param p1, "currentVersion"    # I

    .line 169
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string/jumbo v2, "scheduleAutoconfigForJibe"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->needScheduleAutoconfig(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v2, "needScheduleAutoconfig: false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v1

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mStartForce:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->cancelValidityTimer()V

    .line 176
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v1, "force autoconfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 179
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    goto/16 :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextAutoconfigTime()J

    move-result-wide v3

    .line 185
    .local v3, "nextAutoconfigTime":J
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextAutoconfigTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 188
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 189
    .local v5, "remainValidity":I
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remainValidity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-gtz v5, :cond_3

    .line 192
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v6, "need autoconfig"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v2

    .line 195
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-lez v2, :cond_4

    .line 196
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 197
    const v2, 0x13020300

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",VNE:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": autoconfig schedule: after "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->addEventLog(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setValidityTimer(I)V

    .line 201
    :cond_4
    return v1

    .line 180
    .end local v0    # "current":Ljava/util/Date;
    .end local v3    # "nextAutoconfigTime":J
    .end local v5    # "remainValidity":I
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 181
    return v1
.end method

.method work()V
    .locals 9

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 242
    .local v1, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v2, 0x14

    .line 244
    .local v2, "count":I
    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 246
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

    .line 276
    :goto_1
    goto/16 :goto_3

    .line 268
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 272
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sleep(J)V

    .line 274
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 275
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 265
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 266
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 267
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 253
    :catch_2
    move-exception v4

    .line 254
    .local v4, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "message":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnknownStatusException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v6, "body and cookie are null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 257
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    goto :goto_2

    .line 259
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 2 sec and retry"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sleep(J)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 263
    :goto_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v4    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    .end local v5    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 247
    :catch_3
    move-exception v3

    .line 248
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 249
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->sleep(J)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 252
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 277
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 279
    :cond_2
    return-void
.end method
