.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
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

    .line 417
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    .line 423
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 424
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 426
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v3, "getNextWorkflow: mStorage is not ready"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    const v1, 0x13020504

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",STOR_NR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": getNextWorkflow: mStorage is not ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->addEventLog(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mMobileNetwork:Z

    if-nez v1, :cond_1

    .line 432
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMobileNetwork: false, try FetchHttps step"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 437
    :cond_1
    return-object v0
.end method
