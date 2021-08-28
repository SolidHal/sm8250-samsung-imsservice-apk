.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 453
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method

.method protected setHttps()V
    .locals 9

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->changeConfigProxyUriForHttp()V

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpProxyDefault()V

    .line 467
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchHttps: NetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Identity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    .line 468
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SipUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 469
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSipUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 472
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    const-string/jumbo v2, "vers"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 478
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->isSmsAppDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    .line 479
    :cond_1
    const-string v1, "2"

    .line 477
    :goto_0
    const-string v3, "default_sms_app"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mMobileNetwork:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_7

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v3, "IMSI_"

    const-string v4, "msisdn"

    if-nez v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 485
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v5, "FetchHttps: MSISDN is null, using the PAU"

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "imsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    const-string v7, "msisdn_from_pau"

    invoke-static {v5, v6, v7, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "pauFromSP":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": pauFromSP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 489
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pauFromSP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const v6, 0x13020502

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "PAU_FROM_SP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 491
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 492
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v5    # "pauFromSP":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMS_port"

    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "validrcsconfig"

    invoke-static {v4, v5, v6, v3, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "lasttoken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 506
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "use last valid token"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move-object v0, v1

    .line 510
    .end local v1    # "lasttoken":Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v3, "token"

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .end local v0    # "token":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v3, "SEC"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    .line 516
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x1

    .line 515
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v3, "rcs_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "rcs_profile"

    const-string v3, "UP_1.0"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "provisioning_version"

    const-string v3, "2.0"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setRcsState(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getRcsState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "rcs_state"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mStartForce:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 525
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mStartForce: true, vers: 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_9

    .line 530
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use backup version in case of dormant, vers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 531
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_9
    return-void
.end method
