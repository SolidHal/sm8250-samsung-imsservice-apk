.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finish"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 326
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->access$702(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;I)I

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->access$1302(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;I)I

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->clearHttpStore()V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->sendMessage(Landroid/os/Message;)Z

    .line 337
    const/4 v1, 0x0

    return-object v1
.end method
