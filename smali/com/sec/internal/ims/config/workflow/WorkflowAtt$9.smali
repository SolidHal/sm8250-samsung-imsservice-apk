.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 319
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 323
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 324
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getValidity()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setValidityTimer(I)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setVersionFromServer(I)V

    .line 328
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$402(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)Z

    .line 329
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1
.end method
