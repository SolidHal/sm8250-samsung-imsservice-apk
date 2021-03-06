.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;
.super Ljava/lang/Object;
.source "CapabilityServiceEventListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityServiceEventListener"


# instance fields
.field private mListenersList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/options/ICapabilityServiceEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 27
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "phoneId":I
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/util/ImsUri;I)V
    .locals 6
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "activeCallRemoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Lcom/sec/ims/util/ImsUri;",
            "I)V"
        }
    .end annotation

    .line 88
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 90
    .local v0, "eventListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/options/ICapabilityServiceEventListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 91
    .local v1, "length":I
    const-string v2, "CapabilityServiceEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCapabilitiesChanged: eventListener length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 94
    .local v3, "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    invoke-interface {v3, p1, p2}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "length":I
    .end local v2    # "index":I
    .end local v3    # "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    :cond_0
    goto :goto_1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_2

    .line 102
    :catch_1
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 106
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_2
    if-eqz p3, :cond_3

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 108
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAllServiceModules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 110
    .local v4, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    instance-of v5, v4, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;

    if-eqz v5, :cond_1

    .line 111
    move-object v5, v4

    check-cast v5, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onRemoteCapabilitiesChanged(Lcom/sec/ims/options/Capabilities;)V

    .line 113
    .end local v4    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_1
    goto :goto_4

    .line 115
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_3

    .line 117
    :cond_3
    return-void
.end method

.method public notifyEABServiceAdvertiseResult(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 123
    .local v0, "eventListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/options/ICapabilityServiceEventListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 124
    .local v1, "length":I
    const-string v2, "CapabilityServiceEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyEABServiceAdvertiseResult: eventListener length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 126
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 127
    .local v3, "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    invoke-interface {v3, p1}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onCapabilityAndAvailabilityPublished(I)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "index":I
    .end local v3    # "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "length":I
    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public notifyOwnCapabilitiesChanged(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 65
    const-string v0, "CapabilityServiceEventListener"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 67
    .local v1, "eventListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/options/ICapabilityServiceEventListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 68
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOwnCapabilitiesChanged: eventListener length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 70
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 71
    .local v4, "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " notifyOwnCapabilitiesChanged: listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-interface {v4}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "length":I
    .end local v3    # "index":I
    .end local v4    # "listener":Lcom/sec/ims/options/ICapabilityServiceEventListener;
    :cond_0
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    const-string v2, "notifyOwnCapabilitiesChanged: finishBroadcast()"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityServiceEventListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 35
    .local v0, "eventListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/options/ICapabilityServiceEventListener;>;"
    if-eqz v0, :cond_1

    .line 36
    monitor-enter v0

    .line 37
    if-eqz p1, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    invoke-interface {p1}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityServiceEventListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 53
    .local v0, "eventListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/options/ICapabilityServiceEventListener;>;"
    if-eqz v0, :cond_1

    .line 54
    monitor-enter v0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->mListenersList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    return-void
.end method
