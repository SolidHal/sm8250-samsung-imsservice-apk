.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 195
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 254
    if-eqz p1, :cond_0

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to decrypt the data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object p1

    .line 260
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    nop

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method

.method protected setHttps()V
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 214
    .local v0, "isIpmeSwitchOn":Z
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIpmeSwitchOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersionFromServer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rcs_state"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v4, "rcs_version"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "client_vendor"

    const-string v4, "SEC"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCSAndr-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "client_version"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isSmsAppDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_2

    :cond_2
    const-string v2, "2"

    :goto_2
    const-string v4, "default_sms_app"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersionFromServer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "vers"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v2

    const-string v5, "IMSI"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "provisioning_version"

    const-string v5, "2.0"

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_VENDOR:Ljava/lang/String;

    const-string/jumbo v5, "terminal_vendor"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v5, "terminal_model"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const-string/jumbo v5, "terminal_sw_version"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v2

    const-string v5, "IMEI"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "token"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "msisdn"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_4

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 235
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v5, "SMS_port"

    invoke-virtual {v1, v5, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mStartForce:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 241
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 242
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_6

    .line 246
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANT mode. use backup version :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 247
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_6
    return-void
.end method
