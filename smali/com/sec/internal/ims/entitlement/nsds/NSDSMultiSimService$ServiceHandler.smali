.class public final Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;
.super Landroid/os/Handler;
.source "NSDSMultiSimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 63
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/16 v1, 0x13

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_6

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$1000(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;I)V

    .line 99
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$900(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;I)V

    .line 96
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$700(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 90
    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$600(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 87
    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$800(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 93
    goto :goto_0

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$100(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 72
    goto :goto_0

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$1100(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 102
    goto :goto_0

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$500(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 84
    goto :goto_0

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$200(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    .line 75
    goto :goto_0

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$400(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 81
    goto :goto_0

    .line 77
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$300(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V

    .line 78
    nop

    .line 106
    :goto_0
    return-void
.end method
