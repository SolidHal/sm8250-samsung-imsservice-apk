.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowLocalFilefromSDcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

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

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 72
    .local v0, "userAccept":Z
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mStartForce:Z

    :goto_0
    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mStartForce:Z

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1
.end method
