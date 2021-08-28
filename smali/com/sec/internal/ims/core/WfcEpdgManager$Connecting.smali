.class Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    .line 518
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 521
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Connecting] connecting epdg service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2000(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2100(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2002(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/epdg/EpdgManager$ConnectionListener;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1400(Lcom/sec/internal/ims/core/WfcEpdgManager;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgManager;->startService(Landroid/content/Intent;)V

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->connectService()V

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 528
    return-void
.end method

.method public exit()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->removeMessages(I)V

    .line 573
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 532
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Connecting] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1600(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 558
    :pswitch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EPDG disconnect in [Connecting] state, may be crash has happenened, need to recover.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 560
    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 555
    goto :goto_0

    .line 550
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Connecting] TRY_EPDG_CONNECT already in progress "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto :goto_0

    .line 545
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 546
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1800(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 547
    goto :goto_0

    .line 540
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 541
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1700(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 542
    goto :goto_0

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 537
    nop

    .line 567
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
