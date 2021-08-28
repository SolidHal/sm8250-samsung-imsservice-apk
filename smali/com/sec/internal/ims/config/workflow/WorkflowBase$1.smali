.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 181
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->checkRcsSwitchEur()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive: validity period expired. but RCS is switch off. it should perform when switch on."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 188
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.config.workflow.validity_timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$102(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->EXPIRE_VALIDITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModuleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/16 v2, 0x11

    iget v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: validity period expired. start config, mMobileNetwork = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    return-void
.end method
