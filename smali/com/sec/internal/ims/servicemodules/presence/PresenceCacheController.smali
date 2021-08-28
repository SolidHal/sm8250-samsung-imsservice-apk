.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;
.super Ljava/lang/Object;
.source "PresenceCacheController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceCacheController"


# instance fields
.field private final mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 0
    .param p1, "presenceModule"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 20
    return-void
.end method


# virtual methods
.method clearPresenceInfo(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 45
    const-string v0, "PresenceCacheController"

    const-string v1, "clearPresenceInfo"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->clear()V

    .line 47
    return-void
.end method

.method getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPresenceInfo: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCacheController"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    return-object v0
.end method

.method getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sec/ims/presence/PresenceInfo;"
        }
    .end annotation

    .line 28
    .local p2, "normalizedNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPresenceInfoByContactId: contactId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCacheController"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 36
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    return-object v1

    .line 31
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method loadPresenceStorage(Ljava/util/List;I)V
    .locals 5
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 99
    .local p1, "teluris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 100
    .local v0, "piMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPresenceStorage: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " presenceInfo from DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceCacheController"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 103
    .local v2, "teluri":Lcom/sec/ims/util/ImsUri;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/PresenceInfo;

    .line 104
    .local v3, "pi":Lcom/sec/ims/presence/PresenceInfo;
    if-nez v3, :cond_0

    .line 106
    new-instance v4, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v4, p2}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    move-object v3, v4

    .line 107
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->add(Lcom/sec/ims/presence/PresenceInfo;)V

    .line 110
    .end local v2    # "teluri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "pi":Lcom/sec/ims/presence/PresenceInfo;
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 112
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 114
    .restart local v2    # "teluri":Lcom/sec/ims/util/ImsUri;
    new-instance v3, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v3, p2}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 115
    .restart local v3    # "pi":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->add(Lcom/sec/ims/presence/PresenceInfo;)V

    .line 117
    .end local v2    # "teluri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "pi":Lcom/sec/ims/presence/PresenceInfo;
    goto :goto_1

    .line 119
    :cond_3
    :goto_2
    return-void
.end method

.method removePresenceCache(Ljava/util/List;I)V
    .locals 1
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 40
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->remove(Ljava/util/List;)V

    .line 41
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->removeSubscription(Ljava/util/List;)V

    .line 42
    return-void
.end method

.method updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V
    .locals 7
    .param p2, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p3, "capabilityDiscoveryModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .param p4, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            "I)V"
        }
    .end annotation

    .line 51
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePresenceDatabase: uris "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCacheController"

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    move-object v0, p2

    .line 58
    .local v0, "newInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 59
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 61
    .local v3, "telUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    invoke-virtual {p0, v3, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    new-instance v4, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p5}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    move-object v0, v4

    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 67
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    invoke-interface {p3, p5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 73
    invoke-interface {p3, p5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 74
    .local v4, "cap":Lcom/sec/ims/options/Capabilities;
    if-eqz v4, :cond_3

    .line 75
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "contactId":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 77
    invoke-virtual {v0, v5}, Lcom/sec/ims/presence/PresenceInfo;->setContactId(Ljava/lang/String;)V

    .line 83
    .end local v4    # "cap":Lcom/sec/ims/options/Capabilities;
    .end local v5    # "contactId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    .line 84
    .local v4, "cacheInfo":Lcom/sec/ims/presence/PresenceInfo;
    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    .line 88
    :cond_4
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 94
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v5, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-virtual {v5, v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->update(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;)V

    .line 95
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "telUri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "cacheInfo":Lcom/sec/ims/presence/PresenceInfo;
    goto :goto_0

    .line 96
    :cond_5
    return-void

    .line 52
    .end local v0    # "newInfo":Lcom/sec/ims/presence/PresenceInfo;
    :cond_6
    :goto_2
    return-void
.end method
