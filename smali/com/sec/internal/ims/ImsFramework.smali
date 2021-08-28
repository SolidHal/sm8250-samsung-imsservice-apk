.class public Lcom/sec/internal/ims/ImsFramework;
.super Ljava/lang/Object;
.source "ImsFramework.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# instance fields
.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0
    .param p1, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 39
    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 40
    return-void
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V

    .line 191
    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    return-object v0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "aux"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # Z

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallCount(I)[I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    return-object v0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    return-object v0
.end method

.method public getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 1
    .param p1, "phoneId"    # I

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object v0

    return-object v0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    return-object v0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # I

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "handle"    # I

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v0

    return-object v0
.end method

.method public getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    return-object v0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    return-object v0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # [Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "dm"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public notifyImsReady(ZI)V
    .locals 1
    .param p1, "readiness"    # Z
    .param p2, "phoneId"    # I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 215
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

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 155
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 122
    return-void
.end method

.method public sendDeregister(II)V
    .locals 1
    .param p1, "cause"    # I
    .param p2, "phoneId"    # I

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "dm"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setIsimLoaded()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setIsimLoaded()V

    return-void
.end method

.method public setRttMode(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    .line 151
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "force"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    .line 175
    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 1
    .param p1, "suspend"    # Z
    .param p2, "phoneId"    # I

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->suspendRegister(ZI)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V

    .line 199
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

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 159
    return-void
.end method
