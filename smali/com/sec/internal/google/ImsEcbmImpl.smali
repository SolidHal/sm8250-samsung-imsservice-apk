.class public Lcom/sec/internal/google/ImsEcbmImpl;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImpl.java"


# instance fields
.field private miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public enterEmergencyCallbackMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/sec/internal/google/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    .line 32
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sec/internal/google/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V

    .line 28
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/sec/internal/google/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 20
    return-void
.end method
