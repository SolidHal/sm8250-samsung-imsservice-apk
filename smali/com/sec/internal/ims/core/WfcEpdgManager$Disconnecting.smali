.class Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    .line 647
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 650
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Disconnecting]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1100(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1100(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v0

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$902(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z

    .line 654
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$600(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$EpdgListener;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/epdg/EpdgManager;->removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "phoneId":I
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->disconnectService()V

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->stopService()V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageDelayed(IJ)V

    .line 660
    return-void
.end method

.method public exit()V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->removeMessages(I)V

    .line 692
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 664
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Disconnecting] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$1600(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 673
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 674
    goto :goto_0

    .line 668
    :pswitch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVALID STATE ON EPDG CONNECTED IN DISCONNECTING STATE for EPDG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    goto :goto_0

    .line 682
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->deferMessage(Landroid/os/Message;)V

    .line 686
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
