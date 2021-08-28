.class public interface abstract Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
.super Ljava/lang/Object;
.source "INsdNetworkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;,
        Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
