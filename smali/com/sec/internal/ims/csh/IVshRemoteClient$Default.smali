.class public Lcom/sec/internal/ims/csh/IVshRemoteClient$Default;
.super Ljava/lang/Object;
.source "IVshRemoteClient.java"

# interfaces
.implements Lcom/sec/internal/ims/csh/IVshRemoteClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/csh/IVshRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeVshSource(JLandroid/view/Surface;Z)I
    .locals 1
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "endShare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public openVshSource(JLandroid/view/Surface;IIII)I
    .locals 1
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientationListenerType(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method
