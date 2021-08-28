.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
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

    .line 548
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 5

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "otp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsType(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "otpSmsType":Ljava/lang/String;
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 562
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$308(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    .line 563
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_0
    const-string v2, "binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$400(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 567
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$408(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    .line 568
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_1
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-object v0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v2, "Authorize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
