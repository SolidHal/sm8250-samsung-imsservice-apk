.class Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompleteSetupWizardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 613
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 614
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 615
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 619
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 620
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 619
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    .line 621
    .local v0, "isSetupWizardCompleted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompleteSetupWizard updated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 624
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifySetupWizardCompleted()V

    .line 626
    :cond_1
    return-void
.end method
