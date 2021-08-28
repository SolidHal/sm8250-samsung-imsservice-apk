.class Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;
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

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
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

    .line 38
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 47
    :cond_2
    :goto_0
    return-void
.end method
