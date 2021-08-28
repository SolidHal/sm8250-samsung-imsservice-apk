.class public interface abstract Lcom/samsung/android/cmcnsd/INsdService;
.super Ljava/lang/Object;
.source "INsdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/INsdService$Stub;,
        Lcom/samsung/android/cmcnsd/INsdService$Default;
    }
.end annotation


# virtual methods
.method public abstract acquireNetwork(ILcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseNetwork(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendNetworkMessage(ILjava/lang/String;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
