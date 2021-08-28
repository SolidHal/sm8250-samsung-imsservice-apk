.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
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

    .line 519
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

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

    .line 522
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 524
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getVersion(Ljava/util/Map;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 525
    .local v1, "versionChange":Z
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "versionChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    .line 528
    .local v2, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 530
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    return-object v3

    .line 532
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 534
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v3, v5, :cond_2

    .line 535
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getValidity()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->setValidityTimer(I)V

    .line 537
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    return-object v3
.end method
