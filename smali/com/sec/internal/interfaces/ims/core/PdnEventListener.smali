.class public interface abstract Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
.super Ljava/lang/Object;
.source "PdnEventListener.java"


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 8
    return-void
.end method

.method public onDisconnected(IZ)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "isPdnUp"    # Z

    .line 10
    return-void
.end method

.method public onLocalIpChanged(IZ)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "isStackedIpChanged"    # Z

    .line 14
    return-void
.end method

.method public onNetworkRequestFail()V
    .locals 0

    .line 24
    return-void
.end method

.method public onPcscfAddressChanged(ILjava/util/List;)V
    .locals 0
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p2, "pcscf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onResumed(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 18
    return-void
.end method

.method public onResumedBySnapshot(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 22
    return-void
.end method

.method public onSuspended(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 12
    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 20
    return-void
.end method
