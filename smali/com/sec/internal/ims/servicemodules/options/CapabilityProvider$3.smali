.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 964
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1302(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)Z

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiStateListener.onAvailable(): mIsWifiConnected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1300(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1302(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)Z

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiStateListener.onAvailable(): mIsWifiConnected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1300(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method
