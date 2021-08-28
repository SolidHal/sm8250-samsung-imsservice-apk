.class public interface abstract Lcom/sec/internal/interfaces/google/IImsNotifier;
.super Ljava/lang/Object;
.source "IImsNotifier.java"


# virtual methods
.method public abstract notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
.end method

.method public abstract onCdpnInfo(ILjava/lang/String;I)V
.end method

.method public abstract onDialogEvent(Lcom/sec/ims/DialogEvent;)V
.end method

.method public abstract onIncomingCall(II)V
.end method

.method public abstract onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
.end method

.method public abstract onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
.end method

.method public abstract onP2pRegCompleteEvent()V
.end method
