.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;
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
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 509
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

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

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 513
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    .line 515
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v1

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 519
    .local v1, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 521
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v3

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v3

    .line 525
    .local v3, "userAccept":Z
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 526
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v4, v5, :cond_2

    .line 527
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getValidity()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setValidityTimer(I)V

    .line 529
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 530
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setTcUserAccept(I)V

    .line 531
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v4
.end method
