.class Lcom/samsung/android/cmcnsd/CmcNsdManager$2;
.super Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;
.source "CmcNsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/CmcNsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/cmcnsd/CmcNsdManager;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 3
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiApConnectionChanged() network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-nez p1, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$500(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getTransport()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$600(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    .line 164
    return-void
.end method

.method public onWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V
    .locals 3
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .param p2, "message"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiApNetworkMessageReceived() cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$800(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V

    .line 181
    return-void
.end method

.method public onWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 3
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiDirectConnectionChanged() network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez p1, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$500(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getTransport()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$2;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$700(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    .line 175
    return-void
.end method
