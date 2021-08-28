.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;
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
    name = "Finish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 535
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setLastErrorCode(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setRcsByUser(Z)V

    .line 542
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "all workflow is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    return-object v0
.end method
