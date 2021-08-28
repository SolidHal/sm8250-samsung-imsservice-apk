.class public Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;
.super Lcom/sec/ims/openapi/IOpenApiService$Stub;
.source "OpenApiService.java"


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 30
    invoke-direct {p0}, Lcom/sec/ims/openapi/IOpenApiService$Stub;-><init>()V

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 32
    return-void
.end method


# virtual methods
.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 65
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

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 53
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

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 77
    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    .line 42
    return-void
.end method

.method public sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .locals 1
    .param p1, "impu"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "sipMessage"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->sendSip(Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z

    move-result v0

    return v0
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .locals 1
    .param p1, "featureTags"    # [Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->setFeatureTags([Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteIP"    # [Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->setupMediaPath([Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    .line 71
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

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 59
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

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 83
    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    .line 47
    return-void
.end method
