.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;
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

    .line 259
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 262
    sget-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/UserEventController;->getCurrentUserId()I

    move-result v0

    .line 264
    .local v0, "currentUserId":I
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v1

    .line 265
    .local v1, "newUserId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/UserEventController;->getCurrentUserId()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/UserEventController;->setCurrentUserId(I)V

    .line 268
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$Environment;->initForCurrentUser()V

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 273
    .end local v0    # "currentUserId":I
    .end local v1    # "newUserId":I
    :cond_0
    return-void
.end method
