.class public Lcom/samsung/android/cmcnsd/INsdService$Default;
.super Ljava/lang/Object;
.source "INsdService.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/INsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/INsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireNetwork(ILcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    .locals 1
    .param p1, "hashCode"    # I
    .param p2, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .locals 1
    .param p1, "hashCode"    # I
    .param p2, "callback"    # Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public releaseNetwork(I)V
    .locals 0
    .param p1, "hashCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public sendNetworkMessage(ILjava/lang/String;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)Z
    .locals 1
    .param p1, "hashCode"    # I
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .param p4, "message"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
