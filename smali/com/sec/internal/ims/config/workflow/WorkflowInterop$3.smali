.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowInterop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    .line 397
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

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

    .line 400
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method

.method protected setHttps()V
    .locals 8

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 409
    .local v0, "subId":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMSI"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMEI"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 413
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->isSmsAppDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    .line 414
    :cond_0
    const-string v2, "2"

    .line 412
    :goto_0
    const-string v3, "default_sms_app"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mMobileNetwork:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_4

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "msisdn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "msisdn"

    if-nez v2, :cond_2

    .line 419
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "use msisdn from telephony"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "usermsisdn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 424
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "use msisdn from sharedInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SMS_port"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const v3, 0x13020301

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",OSP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "token"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "usermsisdn":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_vendor"

    const-string v3, "SEC"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "terminal_model"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    .line 436
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x1

    .line 435
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "terminal_sw_version"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "client_vendor"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCSAndr-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_version"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "rcs_version"

    const-string v3, "7.0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "rcs_profile"

    const-string v3, "UP_2.0-b1"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "provisioning_version"

    const-string v3, "4.0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setRcsState(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getRcsState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rcs_state"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mStartForce:Z

    const-string/jumbo v2, "vers"

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getRcsState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 448
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mStartForce: true, vers: 0"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v3, :cond_6

    .line 452
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use backup version in case of dormant, vers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersionBackup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_6
    return-void
.end method
