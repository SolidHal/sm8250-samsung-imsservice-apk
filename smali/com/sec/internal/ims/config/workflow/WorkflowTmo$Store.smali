.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;
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
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 203
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

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

    .line 206
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method
