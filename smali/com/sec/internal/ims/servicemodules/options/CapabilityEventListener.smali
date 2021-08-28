.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;
.super Ljava/lang/Object;
.source "CapabilityEventListener.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityEventListener"


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 22
    return-void
.end method


# virtual methods
.method public onCapabilityAndAvailabilityPublished(II)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyEABServiceAdvertiseResult(II)V

    .line 95
    return-void
.end method

.method public onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V
    .locals 5
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "pidf"    # Ljava/lang/String;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 26
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "b":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "URIS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    const-string v1, "PIDF"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "FEATURES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 32
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 33
    return-void
.end method

.method public onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 10
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p3, "pidf"    # Ljava/lang/String;
    .param p4, "event"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v0, "paidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPAssertedIdSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v1, "b":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "URIS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    const-string v2, "PIDF"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v2

    const-string v4, "FEATURES"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getLastSeen()I

    move-result v2

    const-string v3, "LASTSEEN"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    const-string v3, "PHONEID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getExtFeature()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTFEATURE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getIsTokenUsed()Z

    move-result v2

    const-string v3, "ISTOKENUSED"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v2, "PAID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 50
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isResponse()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v5

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v8

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getExtFeature()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->prepareResponse(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onMediaReady(ZZI)V
    .locals 5
    .param p1, "ready"    # Z
    .param p2, "isPresence"    # Z
    .param p3, "phoneId"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaReady: ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPresence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityEventListener"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    .line 60
    .local v0, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    .line 64
    .local v1, "mCapabilityControl":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;
    if-eqz v1, :cond_1

    invoke-interface {v1, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v3, 0x3

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 68
    :cond_1
    return-void
.end method

.method public onPollingRequested(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "phoneId"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPollingRequested: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityEventListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 84
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer()V

    .line 90
    :cond_1
    :goto_0
    return-void
.end method
