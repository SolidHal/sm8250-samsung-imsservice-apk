.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
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

    .line 358
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

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

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    .line 375
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->init()V

    .line 376
    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 363
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mMobileNetwork:Z

    if-nez v1, :cond_0

    .line 365
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMobileNetwork: false, try FetchHttps step"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 369
    :cond_0
    return-object v0
.end method
