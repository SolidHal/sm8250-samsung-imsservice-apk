.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;
.super Lcom/sec/ims/options/ICapabilityService$Stub;
.source "CapabilityDiscoveryService.java"


# instance fields
.field private mQueuedCapabilityListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/options/ICapabilityServiceEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityService$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public addFakeCapabilityInfo(Ljava/util/List;ZI)V
    .locals 1
    .param p2, "feature"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    .line 130
    :cond_0
    return-void
.end method

.method public deRegisterService(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    .local p1, "serviceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deRegisterService(Ljava/util/List;)V

    .line 150
    :cond_0
    return-void
.end method

.method public getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, p1, v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    aget-object v1, v1, p2

    .line 94
    invoke-virtual {v0, p1, v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0
.end method

.method public getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "id"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0
.end method

.method public getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0
.end method

.method public getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p2, "refreshType"    # I
    .param p3, "feature"    # I
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;III)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    aget-object v2, v1, p2

    int-to-long v3, p3

    move-object v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0
.end method

.method public getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isOwnInfoPublished()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOwnInfoPublished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setServiceModule(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 5
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    .line 42
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    :cond_1
    return-void
.end method

.method public setUserActivity(ZI)V
    .locals 1
    .param p1, "isActive"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setUserActive(ZI)V

    .line 157
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    :goto_0
    return-void
.end method
