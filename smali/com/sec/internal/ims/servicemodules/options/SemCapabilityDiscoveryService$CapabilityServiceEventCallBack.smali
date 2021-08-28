.class Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "SemCapabilityDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityServiceEventCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 192
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 194
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 3
    .param p2, "capa"    # Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .line 209
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->access$000(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object v0

    .line 210
    .local v0, "semUri":Lcom/samsung/android/ims/util/SemImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->access$100(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v1

    .line 212
    .local v1, "semCapa":Lcom/samsung/android/ims/options/SemCapabilities;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz v2, :cond_0

    .line 214
    :try_start_0
    invoke-interface {v2, v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilityAndAvailabilityPublished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
