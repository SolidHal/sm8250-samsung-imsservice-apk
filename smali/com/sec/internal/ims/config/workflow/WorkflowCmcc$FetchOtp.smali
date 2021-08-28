.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;
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
    name = "FetchOtp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 433
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "client_vendor"

    const-string v2, "SEC"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCSAndr-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "client_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v2, "terminal_model"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "terminal_sw_version"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTP"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 450
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v3, v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
