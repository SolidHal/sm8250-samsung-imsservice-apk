.class Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    .line 458
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 461
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Disconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1400(Lcom/sec/internal/ims/core/WfcEpdgManager;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->removeMessages(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 467
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 471
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Disconnected] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1600(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 498
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1402(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 510
    :pswitch_2
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ON_EPDG_DISCONNECTED IN ReadyToConnect INVALID EVENT "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 505
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPDG CONNECTED in disconnected state, STRANGE, please check..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 507
    goto :goto_1

    .line 501
    :goto_0
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 502
    goto :goto_1

    .line 490
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1800(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 482
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 483
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1700(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 476
    :pswitch_7
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 514
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
