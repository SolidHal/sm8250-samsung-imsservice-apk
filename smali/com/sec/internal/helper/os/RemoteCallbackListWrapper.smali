.class public Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
.super Landroid/os/RemoteCallbackList;
.source "RemoteCallbackListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mBroadcastLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    .local p0, "this":Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;, "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper<TT;>;"
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->mBroadcastLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;, "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper<TT;>;"
    .local p1, "broadcaster":Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;, "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster<TT;>;"
    iget-object v0, p0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 31
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;->broadcast(Landroid/os/IInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_1

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 29
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->finishBroadcast()V

    .line 37
    .end local v1    # "size":I
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
