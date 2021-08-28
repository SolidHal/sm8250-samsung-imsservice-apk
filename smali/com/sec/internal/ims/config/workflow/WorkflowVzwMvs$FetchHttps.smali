.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowVzwMvs.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 1056
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

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

    .line 1059
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 1063
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttps: mCurrVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mStartForce:Z

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    goto :goto_2

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    .line 1070
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttps: update mCurrVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vers"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "provisioning_version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSI"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v2, "SEC"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSubId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "msisdn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1085
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "FetchHttps: use msisdn from telephony"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msisdn"

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMS_port"

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v3, "token"

    if-eqz v1, :cond_4

    .line 1091
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v5, "FetchHttps: rcstoken is empty"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchHttps: use apptoken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-static {v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->access$700(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1093
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-static {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->access$700(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1095
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v5, "FetchHttps: rcstoken is existed"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1096
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchHttps: use rcstoken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1097
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mCurrVersion:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->convertRcsStateWithSpecificParam(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "rcsState":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchHttps: rcsState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "rcs_state"

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v5, "rcs_version"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "rcs_profile"

    const-string v5, "UP_1.0"

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v4, "client_vendor"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCSAndr-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_version"

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsDefaultSmsAppInuse:Z

    if-eqz v3, :cond_5

    const-string v3, "1"

    goto :goto_4

    .line 1110
    :cond_5
    const-string v3, "2"

    .line 1109
    :goto_4
    const-string v4, "default_sms_app"

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 1113
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    .line 1114
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setLastErrorCode(I)V

    .line 1115
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchHttps: https response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1116
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7

    .line 1117
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1118
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v5, "FetchHttps: https response\'s body is existed"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Parse;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v2

    .line 1121
    :cond_6
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v3, "FetchHttps: there is no https response\'s body"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1122
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mHttpResponse:I

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_8

    .line 1123
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;

    invoke-direct {v3, v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v5, v6, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppTokenFor511Response;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    new-instance v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v6, v7, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    invoke-virtual {v2, v3, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    return-object v2

    .line 1125
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;

    invoke-direct {v3, v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    new-instance v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v6, v7, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    invoke-virtual {v2, v3, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    return-object v2
.end method
