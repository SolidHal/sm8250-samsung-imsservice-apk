.class public interface abstract Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;
.super Ljava/lang/Object;
.source "IOptionsServiceInterface.java"


# virtual methods
.method public abstract registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
.end method

.method public abstract requestSendCmcCheckMsg(IILjava/lang/String;)V
.end method

.method public abstract sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V
.end method

.method public abstract setOwnCapabilities(JI)V
.end method

.method public abstract updateCmcExtCallCount(II)I
.end method
