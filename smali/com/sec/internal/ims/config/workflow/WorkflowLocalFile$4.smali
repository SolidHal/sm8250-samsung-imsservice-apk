.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
.source "WorkflowLocalFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    .line 152
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mLastErrorCodeNonRemote:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->setLastErrorCode(I)V

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mPhoneId:I

    const-string v2, "all workflow finished"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method
