.class public Lcom/sec/internal/ims/util/DeviceOrientationStatus;
.super Ljava/lang/Object;
.source "DeviceOrientationStatus.java"


# static fields
.field private static final FLIPPED_LANDSCAPE:I = 0x3

.field private static final LANDSCAPE:I = 0x1

.field private static final PORTRAIT:I = 0x0

.field private static final REVERSE_PORTRAIT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    nop

    .line 27
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 28
    .local v0, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 29
    .local v1, "ori":I
    invoke-static {v1}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v2

    return-object v2
.end method

.method public static translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 1
    .param p0, "value"    # I

    .line 33
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0

    .line 37
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0

    .line 39
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0

    .line 35
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object v0
.end method
