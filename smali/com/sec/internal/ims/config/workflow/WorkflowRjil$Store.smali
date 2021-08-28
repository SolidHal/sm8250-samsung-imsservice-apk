.class Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;
.super Ljava/lang/Object;
.source "WorkflowRjil.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;

    .line 257
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

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

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 261
    .local v0, "userAccept":Z
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 262
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->getValidity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->setValidityTimer(I)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->setTcUserAccept(I)V

    .line 266
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;Lcom/sec/internal/ims/config/workflow/WorkflowRjil$1;)V

    return-object v1
.end method
