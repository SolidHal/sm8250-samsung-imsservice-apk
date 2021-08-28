.class Lcom/sec/internal/google/cmc/CmcConnectivityController$1;
.super Ljava/lang/Object;
.source "CmcConnectivityController.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;


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

    .line 145
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound()V
    .locals 3

    .line 148
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBound()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addTransport(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v0

    .line 155
    .local v0, "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$100(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->registerNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)Z

    .line 156
    return-void
.end method

.method public onUnbound()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUnbound()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$100(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$300(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V

    .line 164
    return-void
.end method
