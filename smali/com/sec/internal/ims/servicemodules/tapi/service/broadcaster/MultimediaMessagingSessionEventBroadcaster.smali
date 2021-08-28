.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;
.super Ljava/lang/Object;
.source "MultimediaMessagingSessionEventBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IMultimediaMessagingSessionEventBroadcaster;


# instance fields
.field private final mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    .line 39
    return-void
.end method


# virtual methods
.method public addMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 43
    return-void
.end method

.method public broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "message"    # [B

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 52
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    const-string v3, ""

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 61
    return-void
.end method

.method public broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "message"    # [B
    .param p4, "contentType"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 66
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    return-void
.end method

.method public broadcastMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 93
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 102
    return-void
.end method

.method public broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 80
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 89
    return-void
.end method

.method public removeMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->mMultimediaMessagingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 48
    return-void
.end method
