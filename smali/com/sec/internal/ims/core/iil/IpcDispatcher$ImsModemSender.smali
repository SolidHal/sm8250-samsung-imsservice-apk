.class Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;
.super Landroid/os/Handler;
.source "IpcDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsModemSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 240
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 241
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 248
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 250
    .local v0, "data":[B
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$200(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v1

    .line 254
    .local v1, "secChannelProxy":Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    if-eqz v1, :cond_1

    .line 256
    :try_start_0
    const-string v2, "IpcDispatcher"

    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->access$000(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)I

    move-result v3

    const-string v4, "ImsModemSender(): send"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->send(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const-string/jumbo v4, "send"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleSecChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 267
    .end local v1    # "secChannelProxy":Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 245
    return-void
.end method
