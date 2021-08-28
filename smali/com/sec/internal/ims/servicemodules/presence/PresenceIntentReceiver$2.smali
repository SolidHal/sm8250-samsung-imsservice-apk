.class Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "PresenceIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "KEY_SUBSCRIPTION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "subscriptionId":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "KEY_PHONE_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "phoneId":I
    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v2

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v3

    const/16 v4, 0x8

    .line 62
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v5

    .line 61
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .end local v0    # "subscriptionId":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_0
    return-void
.end method
