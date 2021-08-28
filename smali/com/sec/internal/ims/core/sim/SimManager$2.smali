.class Lcom/sec/internal/ims/core/sim/SimManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 1529
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1532
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    .line 1537
    .local v1, "defaultPhoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 1538
    .local v2, "subId":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DDS change intent received: defaultPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SimManager"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1539
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 1541
    .end local v1    # "defaultPhoneId":I
    .end local v2    # "subId":I
    :cond_0
    return-void
.end method
