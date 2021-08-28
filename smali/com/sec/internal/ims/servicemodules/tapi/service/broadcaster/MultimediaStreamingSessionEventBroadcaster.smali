.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;
.super Ljava/lang/Object;
.source "MultimediaStreamingSessionEventBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IMultimediaStreamingSessionEventBroadcaster;


# instance fields
.field private final mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    .line 41
    return-void
.end method


# virtual methods
.method public addMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 45
    return-void
.end method

.method public broadcastInvitation(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rtpSessionInvite"    # Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public broadcastPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "content"    # [B

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 54
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 54
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 63
    return-void
.end method

.method public broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 68
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 77
    return-void
.end method

.method public removeMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 50
    return-void
.end method
