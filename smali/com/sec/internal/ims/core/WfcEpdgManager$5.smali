.class Lcom/sec/internal/ims/core/WfcEpdgManager$5;
.super Landroid/content/BroadcastReceiver;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 829
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$5;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 832
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent received."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v1, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 835
    const-string v1, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    const-string v1, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$5;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 836
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$5;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(I)V

    .line 840
    :cond_2
    :goto_1
    return-void
.end method
