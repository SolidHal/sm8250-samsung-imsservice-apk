.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IWorkflow;
.super Ljava/lang/Object;
.source "IWorkflow.java"


# static fields
.field public static final ACTIVE_AUTOCONFIG_VERSION:I = 0x1

.field public static final DEFAULT_ERROR_CODE:I = 0x3db

.field public static final DISABLE_AUTOCONFIG_VERSION:I = -0x2

.field public static final DISABLE_PERMANENTLY_AUTOCONFIG_VERSION:I = -0x1

.field public static final DISABLE_TEMPORARY_AUTOCONFIG_VERSION:I = 0x0

.field public static final DORMANT_AUTOCONFIG_VERSION:I = -0x3


# virtual methods
.method public changeOpMode(Z)V
    .locals 0
    .param p1, "isRcsEnabled"    # Z

    .line 66
    return-void
.end method

.method public checkNetworkConnectivity()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public abstract cleanup()V
.end method

.method public clearAutoConfigStorage()V
    .locals 0

    .line 40
    return-void
.end method

.method public clearToken()V
    .locals 0

    .line 46
    return-void
.end method

.method public abstract closeStorage()V
.end method

.method public dump()V
    .locals 0

    .line 88
    return-void
.end method

.method public abstract forceAutoConfig(Z)V
.end method

.method public abstract forceAutoConfigNeedResetConfig(Z)V
.end method

.method public getLastErrorCode()I
    .locals 1

    .line 56
    const/16 v0, 0x3db

    return v0
.end method

.method public abstract handleMSISDNDialog()V
.end method

.method public abstract init()V
.end method

.method public isConfigOngoing()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onBootCompleted()V
    .locals 0

    .line 85
    return-void
.end method

.method public abstract onDefaultSmsPackageChanged()V
.end method

.method public reInitIfNeeded()V
    .locals 0

    .line 43
    return-void
.end method

.method public abstract read(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 60
    return-void
.end method

.method public removeValidToken()V
    .locals 0

    .line 49
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 72
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public abstract startAutoConfig(Z)V
.end method

.method public abstract startAutoConfigDualsim(Z)V
.end method

.method public startCurrConfig()V
    .locals 0

    .line 75
    return-void
.end method

.method public stopWorkFlow()V
    .locals 0

    .line 82
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 63
    return-void
.end method
