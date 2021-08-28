.class public Lcom/sec/internal/ims/config/workflow/WorkflowUp;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mIsReceicedXml:Z

.field protected mIsheaderEnrichment:Z

.field protected mMsisdnTimer:Landroid/os/CountDownTimer;

.field protected mNewVersion:I

.field protected mOldVersion:I

.field protected mSmsPort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 67
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnTimer:Landroid/os/CountDownTimer;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    .line 57
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mOldVersion:I

    .line 58
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mNewVersion:I

    .line 60
    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    .line 61
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    .line 62
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    .line 64
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsheaderEnrichment:Z

    .line 69
    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getMsisdnWithDialog()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method

.method private getMsisdnWithDialog()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5

    .line 323
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMobileNetwork:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 324
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Retry counter for msisdn reached. Abort."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 327
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no msisdn, try to get user"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "user didn\'t enter msisdn finish process"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v2

    .line 342
    :cond_3
    const-string/jumbo v2, "skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 344
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "user enter skip msisdn."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnMsguiDisplay(Ljava/lang/String;)V

    .line 346
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v2, "sendIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string v3, "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getIsNeeded()Z

    move-result v3

    const-string v4, "isNeeded"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 350
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    invoke-direct {v3, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v3

    .line 352
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 354
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v2
.end method


# virtual methods
.method protected checkAndUpdateData(Ljava/util/Map;)V
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

    .line 213
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Update of client configuration control parameters"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getValidity(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setValidity(I)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setToken(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->addEventLog(Ljava/lang/String;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 137
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 132
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "show MSISDN dialog,"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sendEmptyMessage(I)Z

    .line 134
    goto/16 :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    const-string v4, "defaultmsgappinuse"

    invoke-static {v0, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 117
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sms default application is changed to samsung"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setVersion(I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setRcsState(Ljava/lang/String;)V

    .line 120
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setRcsDisabledState(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setValidity(I)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->cancelValidityTimer()V

    .line 123
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setNextAutoconfigTime(J)V

    goto/16 :goto_0

    .line 125
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sms default application is changed to non-samsung"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sendEmptyMessage(I)Z

    .line 129
    goto/16 :goto_0

    .line 77
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    .line 80
    :cond_4
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sIsConfigOngoing:Z

    if-eqz v0, :cond_5

    .line 81
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto/16 :goto_0

    .line 84
    :cond_5
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sIsConfigOngoing:Z

    .line 85
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    const-string v4, "AutoConfig: start"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    .line 87
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnTimer(Landroid/os/CountDownTimer;)V

    .line 88
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mModuleHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 89
    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    .line 90
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    .line 91
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setInternalErrRetryCount(I)V

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mOldVersion:I

    .line 96
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->needScheduleAutoconfig(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mOldVersion:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->scheduleAutoconfig(I)V

    .line 99
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mNewVersion:I

    .line 100
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mOldVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newVersion: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mNewVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    const-string v4, "AutoConfig: finish"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setCompleted(Z)V

    .line 103
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsReceicedXml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    if-eqz v1, :cond_7

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->cancelMsisdnTimer(Landroid/os/CountDownTimer;Z)V

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsReceicedXml:Z

    .line 108
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mModuleHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mOldVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mNewVersion:I

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 111
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sIsConfigOngoing:Z

    .line 112
    nop

    .line 139
    :goto_0
    return-void
.end method

.method protected isDataFullUpdateNeeded(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 187
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 192
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const-string/jumbo v1, "root/application/1/services/ChatAuth"

    .line 193
    .local v1, "chatAuthPath":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "chatAuth":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startForce = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isRcsByUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/SharedInfo;->isRcsByUser()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", rcsState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion(Ljava/util/Map;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 198
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->isRcsByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-array v3, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v6

    .line 199
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion(Ljava/util/Map;)I

    move-result v3

    if-lez v3, :cond_3

    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 200
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-array v3, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v6

    .line 201
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    :cond_2
    return v6

    .line 204
    :cond_3
    return v7
.end method

.method protected setDisableRcsByUserOpMode()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisableRcsByUserOpMode()V

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setRcsByUser(Z)V

    .line 227
    return-void
.end method

.method protected setEnableRcsByUserOpMode()V
    .locals 3

    .line 231
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setEnableRcsByUserOpMode()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setRcsByUser(Z)V

    .line 235
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 236
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    .line 237
    return-void
.end method

.method protected setSharedInfoWithAuthParamForUp()V
    .locals 5

    .line 412
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMobileNetwork:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsheaderEnrichment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_3

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "msisdn"

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    .line 415
    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {v3, v4}, Lcom/sec/internal/helper/ImsCallUtil;->validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 421
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v2

    .line 420
    const-string/jumbo v3, "sms_dest_port"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMS_port"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_3
    return-void
.end method

.method protected setSharedInfoWithParamForUp()V
    .locals 9

    .line 358
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 359
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mLastErrorCode:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->shallUsePreviousCookie(ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsWithPreviousCookies()V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->changeConfigProxyUriForHttp()V

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpProxyDefault()V

    .line 368
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v1

    .line 369
    .local v1, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setRcsState(Ljava/lang/String;)V

    .line 372
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setRcsDisabledState(Ljava/lang/String;)V

    .line 374
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 375
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vers"

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "terminal_model"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v3, "terminal_vendor"

    const-string v5, "SEC"

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromCarrierVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "terminal_sw_version"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "IMSI"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "IMEI"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->isSmsAppDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "1"

    goto :goto_1

    .line 383
    :cond_3
    const-string v3, "2"

    .line 382
    :goto_1
    const-string v5, "default_sms_app"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v5, "rcs_version"

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "rcs_up_profile"

    invoke-static {v2, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "rcsProfile":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rcsProfile read and used : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v5, "rcs_profile"

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsProvisioningVersion:Ljava/lang/String;

    const-string/jumbo v6, "provisioning_version"

    invoke-virtual {v3, v6, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsProvisioningVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->doesUpRcsProfileMatchProvisioningVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 390
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provisioning version <-> RCS profile mismatch. Rcs profile is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Provisioning version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsProvisioningVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_4
    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 394
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mRcsAppList:Ljava/util/List;

    const-string/jumbo v6, "||"

    invoke-static {v6, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app"

    invoke-virtual {v3, v6, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setRcsState(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rcs_state"

    invoke-virtual {v3, v6, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setSharedInfoWithAuthParamForUp()V

    .line 399
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mStartForce:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    .line 400
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_7

    .line 401
    :cond_6
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mStartForce: true, vers: 0"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v3, v5, :cond_8

    .line 405
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "use backup version in case of dormant, vers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersionBackup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 409
    return-void
.end method

.method work()V
    .locals 8

    .line 143
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    .line 144
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v2, 0x14

    .line 146
    .local v2, "count":I
    :goto_0
    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    .line 148
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 180
    :goto_1
    goto/16 :goto_2

    .line 172
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 174
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

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

    .line 176
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sleep(J)V

    .line 178
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v4

    .line 179
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v5, "finish workflow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v4

    .line 171
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 155
    :catch_2
    move-exception v3

    .line 156
    .local v3, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "message":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v5, "body and cookie are null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    invoke-direct {v5, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v5

    .line 160
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    goto/16 :goto_1

    .line 162
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 2 sec and retry"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sleep(J)V

    .line 164
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v5, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v5

    .line 165
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    goto/16 :goto_1

    .line 149
    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    .end local v4    # "message":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 150
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

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

    .line 151
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->sleep(J)V

    .line 153
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    move-object v0, v4

    .line 154
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 181
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 183
    :cond_2
    return-void
.end method
