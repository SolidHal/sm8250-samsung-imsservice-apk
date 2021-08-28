.class public abstract Lcom/sec/internal/ims/core/handler/RawSipHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "RawSipHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;


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
.method public openSipDialog(Z)V
    .locals 0
    .param p1, "isRequired"    # Z

    .line 41
    return-void
.end method

.method public registerForEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "regId"    # I
    .param p2, "sipMessage"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 32
    return-void
.end method
