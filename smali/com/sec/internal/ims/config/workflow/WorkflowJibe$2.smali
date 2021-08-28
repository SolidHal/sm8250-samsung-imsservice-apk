.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 507
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    .line 525
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->init()V

    .line 526
    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 512
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileNetwork:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-nez v1, :cond_0

    .line 514
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMobileNetwork: false, try FetchHttps step"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 518
    :cond_0
    return-object v0
.end method
