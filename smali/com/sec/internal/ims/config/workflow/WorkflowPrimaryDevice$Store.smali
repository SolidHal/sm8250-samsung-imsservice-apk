.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;

    .line 472
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "userAccept":Z
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserMessage(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 477
    .local v1, "msg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "workingConfigurationAvailable":Z
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$2;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/4 v5, 0x6

    if-eq v3, v5, :cond_0

    const/4 v5, 0x7

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    const/4 v2, 0x1

    .line 492
    nop

    .line 497
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getVersion()I

    move-result v3

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v6, v5, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getVersion(Ljava/util/Map;)I

    move-result v5

    const/4 v6, 0x0

    if-eq v3, v5, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v6

    .line 498
    .local v3, "versionChange":Z
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v7, v5, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getVersion(Ljava/util/Map;)I

    move-result v5

    if-ge v5, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    .line 499
    .local v4, "isDisablingConfigResponse":Z
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-nez v4, :cond_4

    .line 500
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Previously working configuration available for this IMSI. Don\'t display T&C."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 502
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAcceptWithDialog(Ljava/util/Map;)Z

    move-result v0

    .line 505
    .end local v2    # "workingConfigurationAvailable":Z
    .end local v3    # "versionChange":Z
    .end local v4    # "isDisablingConfigResponse":Z
    :cond_5
    :goto_3
    move v2, v0

    .line 506
    .local v2, "tcpopupinput":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v3, v0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 507
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v3, v4, :cond_6

    .line 508
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->getValidity()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setValidityTimer(I)V

    .line 510
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setTcUserAccept(I)V

    .line 511
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v3
.end method
