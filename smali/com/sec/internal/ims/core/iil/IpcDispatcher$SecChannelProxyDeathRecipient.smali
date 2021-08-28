.class final Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;
.super Ljava/lang/Object;
.source "IpcDispatcher.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecChannelProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 5
    .param p1, "cookie"    # J

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$300(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 77
    .local v1, "reg":Landroid/os/Registrant;
    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Disconnected from \'imsd\'"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 78
    .end local v1    # "reg":Landroid/os/Registrant;
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$000(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)I

    move-result v0

    const-string v1, "IpcDispatcher"

    const-string/jumbo v2, "serviceDied"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v0, v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v1, v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    const/4 v2, 0x1

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void
.end method
