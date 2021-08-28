.class Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 123
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->receiveCapabilities(Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    .line 124
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V

    .line 115
    return-void
.end method
