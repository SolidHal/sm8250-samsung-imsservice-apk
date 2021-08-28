.class public Lcom/sec/internal/ims/core/handler/MiscHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "MiscHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 23
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 24
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    .line 30
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/MiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public registerForXqMtripEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public unregisterForEcholocateEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public unregisterForXqMtripEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 50
    return-void
.end method
