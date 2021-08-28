.class Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;
.super Landroid/os/Handler;
.source "CmcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 840
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 841
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 842
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 862
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onCmcDeviceChanged()V

    .line 863
    goto :goto_0

    .line 858
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->access$300(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    .line 859
    goto :goto_0

    .line 855
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->access$200(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    .line 856
    goto :goto_0

    .line 849
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->access$000(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    .line 850
    goto :goto_0

    .line 852
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->access$100(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V

    .line 853
    nop

    .line 867
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
