.class Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorSpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSpr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSpr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.sprint.wfc.HRADRESET_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mIsPermanentStopped:Z

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->resetRetry()V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->stopRetryTimer()V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSpr$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSpr;

    iget v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorSpr;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 102
    :cond_0
    return-void
.end method
