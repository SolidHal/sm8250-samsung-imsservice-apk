.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
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

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "local filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "localconfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->addEventLog(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mPhoneId:I

    const-string/jumbo v4, "utf-8"

    invoke-static {v1, v3, v2, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getResourcesFromFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setXml(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
