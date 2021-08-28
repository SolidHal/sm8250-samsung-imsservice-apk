.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
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

    .line 601
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 604
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 607
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion(Ljava/util/Map;)I

    move-result v1

    .line 608
    .local v1, "newVersion":I
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getVersion()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 609
    .local v2, "versionChange":Z
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "versionChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez v1, :cond_1

    .line 611
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    check-cast v3, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->VERSION_ZERO:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    .line 615
    .local v3, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 616
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 617
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v4

    return-object v4

    .line 619
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 620
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v4, v6, :cond_3

    .line 621
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getValidity()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->setValidityTimer(I)V

    .line 623
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v4

    return-object v4
.end method
