.class public Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Default;
.super Ljava/lang/Object;
.source "INsdNetworkCallback.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/INsdNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
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
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .param p2, "message"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 0
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
