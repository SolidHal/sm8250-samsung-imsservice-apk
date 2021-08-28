.class Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorLatin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorLatin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorLatin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnLatin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "Try register after setupwizard is completed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.messaging.action.REQUEST_RCS_REGISTRATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "Try register when user trigger rcs registration on MSG app"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorLatin$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorLatin;

    iget v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorLatin;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 77
    :cond_1
    :goto_0
    return-void
.end method
