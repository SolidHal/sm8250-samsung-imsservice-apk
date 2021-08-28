.class Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    .line 576
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 579
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Connected]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1402(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$800(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 582
    .local v1, "listener":Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;
    invoke-interface {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;->onEpdgServiceConnected()V

    .line 583
    .end local v1    # "listener":Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;
    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 588
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Connected] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1600(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0xc8

    const/4 v4, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 630
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1402(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 632
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->deferMessage(Landroid/os/Message;)V

    .line 634
    goto/16 :goto_0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 637
    goto/16 :goto_0

    .line 624
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPDG disconnect in [Connected] state, may be crash has happenened, need to recover.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 626
    goto :goto_0

    .line 620
    :pswitch_4
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Connected] ON_EPDG_CONNECTED already in connected state.... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    goto :goto_0

    .line 640
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1402(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 610
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->deferMessage(Landroid/os/Message;)V

    .line 612
    goto :goto_0

    .line 614
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 615
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v5, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1800(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 616
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 617
    goto :goto_0

    .line 596
    :pswitch_7
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->deferMessage(Landroid/os/Message;)V

    .line 598
    goto :goto_0

    .line 600
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 601
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v5, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1700(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 606
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 607
    goto :goto_0

    .line 592
    :pswitch_8
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 593
    nop

    .line 643
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
