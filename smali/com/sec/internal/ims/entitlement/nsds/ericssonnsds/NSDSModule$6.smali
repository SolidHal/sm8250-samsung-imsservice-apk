.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;
.super Landroid/content/BroadcastReceiver;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsAppFlowReceiver()V
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

    .line 484
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: app flow result arrived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 490
    .local v0, "slotid":I
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlotId isn\'t matched about intent"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "completed"

    const-string v5, "activate_after_oos"

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$200(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    const-string v7, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 499
    const-string/jumbo v2, "sim_deactivation_cause"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 501
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2102(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_1

    .line 504
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2200(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$200(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 510
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 511
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 512
    const-string v2, "event_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 513
    .local v2, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: entitlement push notification arrived "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz v2, :cond_5

    .line 515
    const-string v6, "ENTMT_UPDATE"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 516
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    .line 517
    :cond_4
    const-string v6, "E911_ADDR_UPDATE"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 518
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    .line 521
    .end local v2    # "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :goto_0
    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 522
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2400(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENTITLEMENT_CHECK_COMPLETED Success["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v7, "request_status"

    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "], Response["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string/jumbo v7, "orig_error_code"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], VoLTE["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v7, "service_volte"

    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "], VoWiFi["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string/jumbo v7, "service_vowifi"

    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2600(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    .line 531
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->removeMessages(I)V

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->removeMessages(I)V

    .line 534
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 535
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 536
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$2700(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    goto :goto_1

    .line 537
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.nsds.action.DEVICE_PUSH_TOKEN_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 538
    const-string v1, "device_push_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "token":Ljava/lang/String;
    const-string v2, "gcm_sender_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "senderId":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v6, v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    .line 541
    invoke-static {v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 540
    const-string v8, "broadcastToAndsfApp"

    invoke-virtual {v6, v2, v1, v8, v7}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "senderId":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 546
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$200(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$300(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "autoActivate":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 549
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[ATT_AutoOn] onReceive: start VoWIFI Toggle AutoOn"

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const-string/jumbo v4, "retry_count"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$702(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)I

    .line 551
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleVoWifToggleOnEvent()V

    .line 552
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$6;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$700(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$800(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V

    .line 555
    .end local v1    # "autoActivate":Ljava/lang/String;
    :cond_a
    return-void
.end method
