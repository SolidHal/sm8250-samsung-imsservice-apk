.class public Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "ImsStatusServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsStatusServiceModule"


# instance fields
.field private mVolteService:Lcom/sec/ims/volte2/IVolteService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/ims/volte2/IVolteService;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "volteService"    # Lcom/sec/ims/volte2/IVolteService;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 42
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    .line 43
    return-void
.end method


# virtual methods
.method public getCallCount()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCallCount(I)[I

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "mmtel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 0
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 68
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 69
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 64
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 59
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 60
    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 95
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 55
    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 101
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 89
    :cond_0
    return-void
.end method
