.class public Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerWrapper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;


# static fields
.field private static final EXPECTED_NUMBER_OF_SIM_SLOTS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceAvailabilityEventListenerWrapper"


# instance fields
.field mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mProfileList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 2
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 40
    return-void
.end method

.method private attach(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "rcsProfile"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "listener":Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;
    invoke-static {p2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ServiceAvailabilityEventListenerWrapper"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 62
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 63
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attaching ServiceAvailabilityEventListenerUp phoneId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 66
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/internal/ims/util/UriGenerator;)V

    move-object v0, v1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attaching ServiceAvailabilityEventListenerBasic phoneId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerBasic;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerBasic;-><init>()V

    move-object v0, v1

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method


# virtual methods
.method public attachServiceAvailabilityEventListener(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rcsProfile"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attach(ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_1
    return-void
.end method

.method public detachServiceAvailabilityEventListener(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 5
    .param p1, "ownIdentity"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "timestamp"    # Ljava/util/Date;

    .line 95
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "phoneId":I
    const-string v1, "!"

    const-string v2, "ServiceAvailabilityEventListenerWrapper"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceAvailabilityUpdate: failed to find phoneId for ownIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;->onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceAvailabilityUpdate: ServiceAvailability listener is not attached for ownIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void
.end method

.method public updateServiceAvailabilityEventListener(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    .line 88
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attach(ILjava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
