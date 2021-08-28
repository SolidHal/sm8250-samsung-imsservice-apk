.class public Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vers"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC7254(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "rjil_token"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMnc()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sim_mode"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCSAndJIO-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "client_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "default_sms_app"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mMobileNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_3

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "msisdn":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msisdn"

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMS_port"

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v3, "SEC"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromCarrierVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mStartForce:Z

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_5

    .line 179
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANT mode. use backup version :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 186
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "200 OK received. try parsing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    return-object v0

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 189
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "403 received. Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    return-object v0

    .line 192
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " http status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
