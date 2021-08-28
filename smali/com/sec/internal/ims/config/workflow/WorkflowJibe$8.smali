.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 690
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 693
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 695
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getVersion(Ljava/util/Map;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 696
    .local v1, "versionChange":Z
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "versionChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    .line 699
    .local v2, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    .line 700
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 701
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    return-object v3

    .line 704
    :cond_1
    const/4 v4, 0x1

    .line 705
    .local v4, "userAccept":Z
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    .line 706
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 707
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v4

    .line 709
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v6, v4, v0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 710
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v6, v7, :cond_4

    .line 711
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getValidity()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setValidityTimer(I)V

    .line 713
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 714
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->setTcUserAccept(I)V

    .line 715
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    return-object v3
.end method
