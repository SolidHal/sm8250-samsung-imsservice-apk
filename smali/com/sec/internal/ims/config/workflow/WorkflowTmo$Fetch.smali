.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;
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
    name = "Fetch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 169
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "Fetch:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$100(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->access$200(Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
