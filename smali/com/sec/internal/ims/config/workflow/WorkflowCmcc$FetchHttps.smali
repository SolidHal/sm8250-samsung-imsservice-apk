.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowCmcc.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 355
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 359
    .local v0, "subId":I
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttps() mPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchHttps() fake server, use http mPhoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpCMCC()V

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchHttps() auto config server, use http mPhoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsCMCC()V

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vers"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "IMSI"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "IMEI"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "terminal_model"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "default_sms_app"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "provisioning_version"

    const-string v4, "5.0"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMobileNetwork:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpResult:I

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_5

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "msisdn"

    if-nez v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v5, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SMS_port"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_vendor"

    const-string v4, "SEC"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    sget-object v5, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "terminal_sw_version"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStartForce:Z

    if-eqz v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "0"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_7

    .line 402
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DORMANT mode. use backup version :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersionBackup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->addEventLog(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 409
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_a

    .line 410
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200 OK received. try parsing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$600(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 412
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isWiFiAutoConfig is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 414
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_8

    .line 415
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 416
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WifiManager.setWifiEnabled: true"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->addEventLog(Ljava/lang/String;)V

    .line 419
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-static {v2, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$602(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Z)Z

    .line 421
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_9
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1

    .line 422
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_b

    .line 423
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1

    .line 424
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_c

    .line 429
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v5, v6, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 426
    :cond_c
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RCS configuration server is unreachable. retry max times"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v1, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v2, "RCS configuration server is unreachable"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
