.class public Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
.super Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;
.source "SemCapabilityDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
    }
.end annotation


# instance fields
.field private mCapServiceEventCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;",
            "Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mQueuedCapabilityListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
    .param p1, "x1"    # Lcom/sec/ims/util/ImsUri;

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemImsUri(Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
    .param p1, "x1"    # Lcom/sec/ims/options/Capabilities;

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0
.end method

.method private buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 3
    .param p1, "capa"    # Lcom/sec/ims/options/Capabilities;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilities;->getBuilder()Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setIsAvailable(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setFeature(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setAvailableFeatures(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setIsExpired(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setLegacyLatching(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setTimestamp(Ljava/util/Date;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setExtFeature(Ljava/util/List;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getBotServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->build()Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    .line 162
    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSemCapabilitiesList([Lcom/sec/ims/options/Capabilities;)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 5
    .param p1, "capaList"    # [Lcom/sec/ims/options/Capabilities;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "semCapList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    if-eqz p1, :cond_1

    .line 179
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 180
    .local v3, "capa":Lcom/sec/ims/options/Capabilities;
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v4

    .line 181
    .local v4, "semCapa":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v3    # "capa":Lcom/sec/ims/options/Capabilities;
    .end local v4    # "semCapa":Lcom/samsung/android/ims/options/SemCapabilities;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/ims/options/SemCapabilities;

    return-object v1

    .line 185
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private buildSemImsUri(Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri;

    invoke-direct {v0}, Lcom/samsung/android/ims/util/SemImsUri;-><init>()V

    .line 151
    .local v0, "semImsUri":Lcom/samsung/android/ims/util/SemImsUri;
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/util/SemImsUri;->setUser(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/util/SemImsUri;->setMsisdn(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri$UriType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/util/SemImsUri;->setUriType(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/util/SemImsUri;->setScheme(Ljava/lang/String;)V

    .line 155
    return-object v0

    .line 157
    .end local v0    # "semImsUri":Lcom/samsung/android/ims/util/SemImsUri;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 75
    .local v0, "imsUri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v1, v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    .line 76
    .local v1, "capabilities":Lcom/sec/ims/options/Capabilities;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v2

    return-object v2

    .line 78
    .end local v0    # "imsUri":Lcom/sec/ims/util/ImsUri;
    .end local v1    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 103
    .local v0, "capabilitiesList":[Lcom/sec/ims/options/Capabilities;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilitiesList([Lcom/sec/ims/options/Capabilities;)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v1

    return-object v1

    .line 105
    .end local v0    # "capabilitiesList":[Lcom/sec/ims/options/Capabilities;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "delay"    # Z
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_1

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "capabilities":Lcom/sec/ims/options/Capabilities;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 88
    invoke-virtual {v0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .end local v1    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .local v0, "capabilities":Lcom/sec/ims/options/Capabilities;
    goto :goto_0

    .line 90
    .end local v0    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .restart local v1    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 92
    .end local v1    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .restart local v0    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 65
    .local v0, "capabilities":Lcom/sec/ims/options/Capabilities;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "SemCapabilityDiscoveryService"

    const-string/jumbo v1, "registerListener : listener has already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;-><init>(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;)V

    .line 120
    .local v0, "capServiceEventCallback":Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    .line 126
    .end local v0    # "capServiceEventCallback":Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    return-void
.end method

.method public setServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)V
    .locals 4
    .param p1, "capabilityService"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

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

    .line 52
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 53
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener failed. RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCapabilityDiscoveryService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    .line 137
    .local v0, "capServiceEventCallback":Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    .line 138
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v0    # "capServiceEventCallback":Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    :goto_0
    return-void
.end method
