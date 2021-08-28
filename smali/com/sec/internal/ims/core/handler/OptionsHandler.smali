.class public abstract Lcom/sec/internal/ims/core/handler/OptionsHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "OptionsHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 24
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/OptionsHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "phoneId"    # I
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public requestSendCmcCheckMsg(IILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "regId"    # I
    .param p3, "uriStr"    # Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 0
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 50
    return-void
.end method
