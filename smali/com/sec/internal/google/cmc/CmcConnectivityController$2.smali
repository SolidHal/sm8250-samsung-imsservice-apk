.class Lcom/sec/internal/google/cmc/CmcConnectivityController$2;
.super Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
.source "CmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 167
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)V
    .locals 3
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 170
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable: cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onConnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 5
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 175
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getInterfaceNameList()Ljava/util/ArrayList;

    move-result-object v4

    .line 177
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$400(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$500(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnected(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V
    .locals 5
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 186
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getInterfaceNameList()Ljava/util/ArrayList;

    move-result-object v4

    .line 188
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$400(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$500(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V

    .line 193
    :cond_1
    :goto_0
    return-void
.end method
