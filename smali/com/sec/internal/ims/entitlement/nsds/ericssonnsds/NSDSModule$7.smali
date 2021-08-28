.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;
.super Landroid/content/BroadcastReceiver;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsEventQueueReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    .line 592
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: event has been requested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "retry_count"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 598
    .local v0, "retryCount":I
    const-string v2, "device_event_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 599
    .local v2, "deviceEventType":I
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 601
    .local v3, "slotid":I
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SlotId isn\'t matched about intent"

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void

    .line 606
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.REFRESH_TOKEN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueGcmTokenRetrieval()V

    goto/16 :goto_0

    .line 608
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.ACTION_REFRESH_DEVICE_INFO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 609
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueRefreshDeviceAndServiceInfo(II)V

    goto/16 :goto_0

    .line 610
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.ACTION_SIM_DEVICE_ACTIVATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2800(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;II)V

    goto/16 :goto_0

    .line 612
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 614
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getReadyForUseMsisdns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 615
    .local v4, "prevReadyForUseMsisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: ACTION_CHECK_REG_STATE timeout. prevRegMsisdns: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x2

    invoke-static {v5, v6, v1, v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2900(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/util/ArrayList;II)V

    .line 619
    .end local v4    # "prevReadyForUseMsisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.E911_AID_EXP_CHECK_TIMEOUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 620
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v5, 0x6

    invoke-static {v4, v5, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$3000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;II)V

    goto/16 :goto_0

    .line 622
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.vsim.ericssonnsds.SVC_PROVISION_CHECK_TIMEOUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 623
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    .line 625
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.sec.vsim.ericssonnsds.ACTION_SVC_PROVISION_CHECK_RETRY_TIMEOUT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 626
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 627
    .local v1, "mnoNsdsStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 628
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v5, 0xa

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$3100(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    .line 630
    .end local v1    # "mnoNsdsStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    :cond_7
    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.sec.vsim.ericssonnsds.ACTION_REFRESH_ENTITLEMENT_CHECK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 631
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.sec.vsim.ericssonnsds.ACTION_RETRY_ENTITLEMENT_CHECK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 632
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$200(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-static {v1, v5, v4}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$7;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    .line 635
    :cond_a
    :goto_0
    return-void
.end method
