.class Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;
.super Landroid/os/Handler;
.source "IpcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecChannelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$000(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_SEC_CHANNEL_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSecChannelProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v2, v2, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "IpcDispatcher"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v2, v2, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$100(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$200(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 70
    :cond_1
    :goto_0
    return-void
.end method
