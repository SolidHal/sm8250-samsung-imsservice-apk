.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowBell.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    .line 132
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 135
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vers"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->isSmsAppDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 141
    :goto_0
    const-string v3, "default_sms_app"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mMobileNetwork:Z

    const-string v1, "msisdn"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v3, 0x1ff

    if-ne v0, v3, :cond_4

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMS_port"

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getToken()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "token"

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v3, "terminal_vendor"

    const-string v4, "SEC"

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "terminal_sw_version"

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mStartForce:Z

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v3, :cond_6

    .line 164
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DORMANT mode. use backup version :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getVersionBackup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->addEventLog(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_7

    .line 172
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string v1, "200 OK received. try parsing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_a

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 176
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no msisdn. try to get user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->addEventLog(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "user didn\'t enter msisdn finish process"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v1

    .line 185
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v1

    .line 190
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 191
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "wrong MSISDN from USER. try again after AUTO_CONFIG_RETRY_INTERVAL."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->setValidityTimer(I)V

    .line 193
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
