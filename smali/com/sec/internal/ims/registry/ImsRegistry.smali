.class public Lcom/sec/internal/ims/registry/ImsRegistry;
.super Ljava/lang/Object;
.source "ImsRegistry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mIsReady:Z

.field private static sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/registry/ImsRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableRcsByPhoneId(ZI)V
    .locals 4
    .param p0, "enable"    # Z
    .param p1, "phoneId"    # I

    .line 211
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRcsByPhoneId RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 1

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    return-object v0
.end method

.method public static getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public static getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 1
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "aux"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCallCount(I)[I
    .locals 4
    .param p0, "phoneId"    # I

    .line 244
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallCount RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public static getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 1

    .line 63
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 1

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p0, "fields"    # [Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 1

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 1

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    return-object v0
.end method

.method public static getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 1

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 1

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 1

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 1

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    return-object v0
.end method

.method private static getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 1

    .line 50
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method public static getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 1

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .line 137
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .param p0, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 1

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v0

    return-object v0
.end method

.method public static getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 1

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    return-object v0
.end method

.method public static getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 59
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsPolicyManager()Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .locals 1

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsProfileType(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .line 202
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsProfileType RemoteException return empty String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, ""

    return-object v1
.end method

.method public static getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 124
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "defVal"    # [Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p0, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 45
    sput-object p0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    .line 47
    return-void
.end method

.method public static isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "dm"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 235
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRcsEnabledByPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return v0
.end method

.method public static isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "rat"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 219
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceEnabledByPhoneId RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    return v1
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4
    .param p0, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    .line 166
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerImsRegistrationListener RemoteException do nothing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 1
    .param p0, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p1, "broadcast"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 133
    return-void
.end method

.method public static setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "dm"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 239
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setRttMode(II)V
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "mode"    # I

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    .line 162
    return-void
.end method

.method public static startAutoConfig(ZLandroid/os/Message;)V
    .locals 1
    .param p0, "force"    # Z
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 189
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    .line 190
    return-void
.end method

.method public static triggerAutoConfigurationForApp(I)V
    .locals 4
    .param p0, "phoneId"    # I

    .line 228
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAutoConfigurationForApp RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramwork()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 174
    return-void
.end method
