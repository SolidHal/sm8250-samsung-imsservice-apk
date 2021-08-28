.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$2;
.super Landroid/content/BroadcastReceiver;
.source "SimManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$000()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    .line 212
    .local v1, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 214
    .local v2, "subId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDS change intent received: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManagerFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    .line 216
    .local v3, "currentDefaultPhoneId":I
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ltz v2, :cond_1

    if-eq v3, v1, :cond_1

    .line 217
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$300()I

    move-result v5

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->setDefaultPhoneId(I)V

    .line 224
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$302(I)I

    .line 225
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$500()Lcom/sec/internal/helper/RegistrantList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 218
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current default subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 229
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    .end local v3    # "currentDefaultPhoneId":I
    :cond_2
    :goto_1
    return-void
.end method
