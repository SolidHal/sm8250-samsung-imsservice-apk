.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowAtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->registerResetTokenIntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    .line 689
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 692
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->mPhoneId:I

    const-string v2, "onReceive: token expired 24hrs after no_more_retry state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->access$600(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->removeToken()I

    .line 697
    :cond_0
    return-void
.end method
