.class public Lcom/sec/internal/helper/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field refH:Ljava/lang/ref/WeakReference;

.field userObj:Ljava/lang/Object;

.field what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/helper/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 27
    iput p2, p0, Lcom/sec/internal/helper/Registrant;->what:I

    .line 28
    iput-object p3, p0, Lcom/sec/internal/helper/Registrant;->userObj:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/Registrant;->userObj:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sec/internal/helper/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 44
    invoke-virtual {p0}, Lcom/sec/internal/helper/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 46
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/sec/internal/helper/Registrant;->clear()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 51
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/sec/internal/helper/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 53
    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    iget-object v3, p0, Lcom/sec/internal/helper/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method
