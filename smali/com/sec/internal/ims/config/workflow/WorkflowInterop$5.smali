.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
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

    .line 468
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 6

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "otp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsType(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "otpSmsType":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "otpSmsType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mAuthTryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAuthHiddenTryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",OST:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13020302

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 489
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    if-ge v2, v3, :cond_0

    .line 491
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    .line 492
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_0
    const-string v2, "binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 495
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_1
    :goto_0
    return-object v0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "Authorize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 474
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    .line 478
    :cond_0
    return-object v0
.end method
