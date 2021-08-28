.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;
.super Ljava/lang/Object;
.source "WorkflowCmcc.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 514
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

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

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersion(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "version is 0. need to be retry"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setValidityTimer(I)V

    .line 521
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 525
    .local v0, "userAccept":Z
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 526
    if-nez v0, :cond_1

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->enableRcs(Z)V

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v2, v3, :cond_2

    .line 530
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getValidity()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setValidityTimer(I)V

    .line 532
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v2
.end method
