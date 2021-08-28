.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;
.super Ljava/lang/Object;
.source "WorkflowTmo.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    move-object v0, v1

    .line 155
    nop

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mStartForce:Z

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    move-object v0, v1

    .line 165
    :cond_2
    return-object v0
.end method
