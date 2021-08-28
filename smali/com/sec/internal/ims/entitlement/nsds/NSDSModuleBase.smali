.class public abstract Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
.super Landroid/os/Handler;
.source "NSDSModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase$InitialState;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 13
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    return-void
.end method


# virtual methods
.method public activateSimDevice(II)V
    .locals 0
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 50
    return-void
.end method

.method public deactivateSimDevice(I)V
    .locals 0
    .param p1, "deactivationCause"    # I

    .line 53
    return-void
.end method

.method public dump()V
    .locals 0

    .line 71
    return-void
.end method

.method public handleVoWifToggleOffEvent()V
    .locals 0

    .line 62
    return-void
.end method

.method public handleVoWifToggleOnEvent()V
    .locals 0

    .line 59
    return-void
.end method

.method public initForDeviceReady()V
    .locals 0

    .line 23
    return-void
.end method

.method public onDeviceReady()V
    .locals 0

    .line 26
    return-void
.end method

.method public onSimNotAvailable()V
    .locals 0

    .line 20
    return-void
.end method

.method public onSimReady(Z)V
    .locals 0
    .param p1, "isSwapped"    # Z

    .line 17
    return-void
.end method

.method public queueGcmTokenRetrieval()V
    .locals 0

    .line 35
    return-void
.end method

.method public queuePushTokenUpdateInEntitlementServer()V
    .locals 0

    .line 38
    return-void
.end method

.method public queueRefreshDeviceAndServiceInfo(II)V
    .locals 0
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 47
    return-void
.end method

.method public queueRefreshDeviceConfig(I)V
    .locals 0
    .param p1, "retyCount"    # I

    .line 32
    return-void
.end method

.method public registerEventMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 41
    return-void
.end method

.method public retrieveAkaToken(II)V
    .locals 0
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 68
    return-void
.end method

.method public unregisterEventMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 44
    return-void
.end method

.method public updateE911Address()V
    .locals 0

    .line 56
    return-void
.end method

.method public updateEntitlementUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 65
    return-void
.end method
