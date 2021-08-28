.class Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;
.super Landroid/content/BroadcastReceiver;
.source "VolatileEucWorkflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onEucrVolatileTimeout()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$100(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$200(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$300(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$400(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: EUCR Volatile intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive: EUCR Volatile message timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->onEucrVolatileTimeout()V

    .line 72
    :cond_0
    return-void
.end method
