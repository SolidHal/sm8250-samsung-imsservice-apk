.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.source "TelephonyAdapterPrimaryDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 21
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;->registerSmsReceiver()V

    .line 22
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;->initState()V

    .line 23
    return-void
.end method
