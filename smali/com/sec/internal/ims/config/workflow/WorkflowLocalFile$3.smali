.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
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

    .line 142
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
