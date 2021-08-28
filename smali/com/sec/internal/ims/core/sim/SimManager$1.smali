.class Lcom/sec/internal/ims/core/sim/SimManager$1;
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

    .line 1481
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1486
    .local v1, "iccState":Ljava/lang/String;
    const-string/jumbo v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1487
    .local v2, "subId":I
    const-string/jumbo v3, "phone"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1489
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimSimIntentReceiver: received action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v6}, Lcom/sec/internal/ims/core/sim/SimManager;->access$400(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SimManager"

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1491
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$400(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    const-string v5, "com.android.intent.isim_refresh"

    const-string v7, "android.intent.action.ISIM_LOADED"

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    if-gez v4, :cond_2

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_2

    .line 1492
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1493
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1494
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneId mismatch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void

    .line 1500
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$402(Lcom/sec/internal/ims/core/sim/SimManager;I)I

    .line 1503
    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    .line 1504
    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1506
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phoneId mismatch : ACTION_SIM_STATE_CHANGED, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1507
    return-void

    .line 1509
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v4, v8, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1510
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1511
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 1512
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phoneId mismatch : ACTION_SIM_ISIM_LOADED, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1513
    return-void

    .line 1515
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string v5, "ISIM_LOADED"

    invoke-virtual {v4, v8, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1516
    :cond_6
    const-string v4, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1517
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1518
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1519
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1520
    return-void

    .line 1522
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1523
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->sendEmptyMessage(I)Z

    .line 1526
    :cond_9
    :goto_0
    return-void
.end method
