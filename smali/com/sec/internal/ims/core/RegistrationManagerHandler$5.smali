.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 302
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ims.hvolte.MODE_SWITCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const/4 v0, 0x0

    .line 309
    .local v0, "needReregi":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 310
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    :cond_0
    const-string v1, "modeType"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 312
    .local v1, "dsacMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DsacEventReceiver, dsac Mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr-Handler"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getVolteAllowedWithDsac()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setVolteAllowedWithDsac(Z)V

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getVolteAllowedWithDsac()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setVolteAllowedWithDsac(Z)V

    .line 319
    const/4 v0, 0x1

    .line 322
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 323
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x92

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    .end local v0    # "needReregi":Z
    .end local v1    # "dsacMode":I
    :cond_3
    return-void
.end method
