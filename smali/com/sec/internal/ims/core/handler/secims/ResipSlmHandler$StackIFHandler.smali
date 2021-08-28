.class final Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;
.super Landroid/os/Handler;
.source "ResipSlmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StackIFHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 159
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStackResponseHandler.handleMessage(): unhandled event - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$500(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    .line 157
    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    .line 154
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$300(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 151
    goto :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    .line 145
    goto :goto_0

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    .line 148
    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->access$000(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    .line 142
    nop

    .line 161
    :goto_0
    return-void
.end method
