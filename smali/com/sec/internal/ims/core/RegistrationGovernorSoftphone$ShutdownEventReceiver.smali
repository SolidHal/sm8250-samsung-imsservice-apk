.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSoftphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShutdownEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mIsPermanentStopped:Z

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 108
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 113
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 114
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleep exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnSoftp"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 125
    :cond_1
    return-void
.end method
