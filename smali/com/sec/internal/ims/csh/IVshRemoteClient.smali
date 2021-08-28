.class public interface abstract Lcom/sec/internal/ims/csh/IVshRemoteClient;
.super Ljava/lang/Object;
.source "IVshRemoteClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;,
        Lcom/sec/internal/ims/csh/IVshRemoteClient$Default;
    }
.end annotation


# virtual methods
.method public abstract closeVshSource(JLandroid/view/Surface;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openVshSource(JLandroid/view/Surface;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOrientationListenerType(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
