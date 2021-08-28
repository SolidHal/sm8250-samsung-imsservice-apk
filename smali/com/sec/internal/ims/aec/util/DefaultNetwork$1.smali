.class Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DefaultNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/aec/util/DefaultNetwork;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 45
    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$000(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 47
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    .local v1, "isConnected":Z
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$100(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAvailable: connected ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$200(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "isConnected":Z
    :cond_1
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 56
    if-eqz p1, :cond_1

    .line 57
    if-eqz p2, :cond_0

    const/16 v0, 0xc

    .line 58
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 59
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, "isOnline":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$100(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesChanged: online ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$200(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    .end local v0    # "isOnline":Z
    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->access$100(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLost"

    invoke-static {v0, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
