.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$3;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.config.workflow.general_error_max_retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->onGeneralErrorRetryTimerExpired()V

    .line 213
    :cond_0
    return-void
.end method
