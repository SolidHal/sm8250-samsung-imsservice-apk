.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;
.source "MultimediaSessionServiceConfigurationImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;


# instance fields
.field private mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V
    .locals 0
    .param p1, "sessionModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 40
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 42
    return-void
.end method

.method public static getInstance(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;
    .locals 1
    .param p0, "sessionModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 45
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    .line 49
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->multimediaSessionServiceConfigurationImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method public getInactivityTimeout()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getInactivityTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageMaxLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getMaxMsrpLengthForExtensions()I

    move-result v0

    return v0
.end method

.method public getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getInactivityTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->isServiceActivated(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
