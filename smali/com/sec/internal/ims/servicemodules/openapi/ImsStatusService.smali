.class public Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;
.super Lcom/sec/ims/openapi/IImsStatusService$Stub;
.source "ImsStatusService.java"


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 27
    invoke-direct {p0}, Lcom/sec/ims/openapi/IImsStatusService$Stub;-><init>()V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    .line 29
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

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 35
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

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 47
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

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 41
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

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 53
    return-void
.end method
