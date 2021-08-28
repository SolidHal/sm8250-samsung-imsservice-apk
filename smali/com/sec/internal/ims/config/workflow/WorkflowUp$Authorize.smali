.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Authorize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 446
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

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

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "otp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "prevOtp":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getExistingOtp()Ljava/lang/String;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    if-ge v2, v3, :cond_3

    .line 455
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    .line 456
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getExistingPortOtp()Ljava/lang/String;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    .line 461
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    .line 462
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object v0

    .line 463
    if-nez v0, :cond_3

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setValidityTimer(I)V

    .line 469
    :cond_3
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 470
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "otp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 473
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v3

    .line 475
    :cond_4
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "otp: null, go to finish state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v3
.end method
