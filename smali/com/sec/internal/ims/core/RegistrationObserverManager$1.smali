.class Lcom/sec/internal/ims/core/RegistrationObserverManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 92
    const-string/jumbo v0, "onoff"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, "onoff":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "silentLog is changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->setSilentLogEnabled()V

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setSilentLogEnabled(Z)V

    .line 96
    return-void
.end method
