.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 217
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 246
    return-void
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->init()V

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 226
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$3;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    goto :goto_0

    .line 230
    .end local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 231
    .restart local v0    # "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    nop

    .line 240
    :goto_0
    return-object v0
.end method
