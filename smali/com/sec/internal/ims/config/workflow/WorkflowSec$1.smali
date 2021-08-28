.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.status.regist_reject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    .line 83
    const-string v1, "CAUSE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowSec;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$102(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)I

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mModuleHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->REJECT_LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getStorageState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 87
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    const-string v1, "StorageAdapter\'s state is idle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->access$200(Lcom/sec/internal/ims/config/workflow/WorkflowSec;Ljava/lang/Boolean;)V

    .line 94
    :cond_2
    :goto_0
    return-void
.end method
