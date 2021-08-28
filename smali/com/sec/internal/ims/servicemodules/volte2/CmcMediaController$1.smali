.class Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;
.super Landroid/os/Handler;
.source "CmcMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 76
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 82
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 83
    .local v1, "extStreamId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 84
    .local v2, "intStreamId":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_RETRY_CREATE_RELAY_CHANNEL extStreamId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " intStreamId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$200(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 86
    .local v3, "extRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$200(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 87
    .local v4, "intRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 88
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$300(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 89
    .local v5, "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$300(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    .line 90
    .local v6, "intSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$400(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 92
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$500(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object v7

    invoke-interface {v7, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result v7

    .line 93
    .local v7, "relayChannel":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    .line 94
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v9, :cond_2

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v8, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    .line 95
    .local v8, "relayDirection":I
    :goto_1
    const v9, 0x70000005

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 96
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$500(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 97
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 98
    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 99
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start Pending RelayChannel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " with direction "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 100
    .end local v8    # "relayDirection":I
    goto :goto_2

    .line 101
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to create relay channel mRelayChannel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v5    # "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v6    # "intSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v7    # "relayChannel":I
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$700(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)V

    .line 106
    goto :goto_3

    .line 78
    .end local v1    # "extStreamId":I
    .end local v2    # "intStreamId":I
    .end local v3    # "extRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .end local v4    # "intRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 79
    nop

    .line 111
    :goto_3
    return-void
.end method
