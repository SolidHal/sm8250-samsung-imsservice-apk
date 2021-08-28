.class public Lcom/sec/internal/ims/util/ChatbotUriUtil;
.super Ljava/lang/Object;
.source "ChatbotUriUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/util/ChatbotUriUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/ChatbotUriUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    return v0
.end method

.method public static hasChatbotUri(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 66
    .local p0, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method public static hasChatbotUri(Ljava/util/Collection;I)Z
    .locals 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)Z"
        }
    .end annotation

    .line 43
    .local p0, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz p0, :cond_4

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "capModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 49
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 50
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-static {v2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isKnownBotServiceId(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    .line 56
    .local v3, "capabilities":Lcom/sec/ims/options/Capabilities;
    if-eqz v3, :cond_2

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v3, v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    return v4

    .line 60
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "capabilities":Lcom/sec/ims/options/Capabilities;
    :cond_2
    goto :goto_0

    .line 51
    .restart local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_3
    :goto_1
    return v4

    .line 62
    .end local v0    # "capModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z
    .locals 10
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 70
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 71
    return v0

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 75
    .local v1, "isBotServiceId":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    .local v2, "isSipUriType":Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v3

    .line 76
    const-string v5, "bot_service_id_prefix_list"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "botServiceIdPrefixList":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 82
    .local v8, "idPrefix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 83
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 84
    goto :goto_2

    .line 81
    .end local v8    # "idPrefix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 89
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    :cond_4
    return v0
.end method

.method public static isChatbotUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 1
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p1, "phoneId"    # I

    .line 29
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method public static isKnownBotServiceId(Lcom/sec/ims/util/ImsUri;)Z
    .locals 2
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 97
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeUriParameters(Lcom/sec/ims/util/ImsUri;)V
    .locals 2
    .param p0, "imsUri"    # Lcom/sec/ims/util/ImsUri;

    .line 101
    if-nez p0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    .line 106
    .local v0, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->isSipURI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/SipUri;->removeParameters()V

    .line 108
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/SipUri;->removeHeaders()V

    .line 110
    :cond_1
    return-void
.end method

.method public static updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V
    .locals 20
    .param p0, "phoneId"    # I
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "isChatbotRole"    # Z

    .line 114
    move/from16 v0, p0

    const/4 v1, 0x0

    .line 115
    .local v1, "capModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 119
    :cond_0
    if-eqz v1, :cond_3

    .line 120
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 122
    .local v2, "capabilities":Lcom/sec/ims/options/Capabilities;
    if-eqz v2, :cond_4

    .line 123
    if-eqz p2, :cond_1

    .line 124
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    goto :goto_0

    .line 126
    :cond_1
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/options/Capabilities;->removeFeature(J)V

    .line 128
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/util/ChatbotUriUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addChatbotCapability : capabilities"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, ""

    .line 131
    .local v4, "extFeature":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_2
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    .line 136
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v12

    .line 137
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v13

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v15

    .line 138
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getIsTokenUsed()Z

    move-result v17

    .line 139
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getExpCapInfoExpiry()I

    move-result v19

    .line 135
    move-object/from16 v18, v4

    invoke-virtual/range {v5 .. v19}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJZLjava/lang/String;JLjava/util/Date;Ljava/util/List;ZLjava/lang/String;I)Z

    goto :goto_1

    .line 119
    .end local v2    # "capabilities":Lcom/sec/ims/options/Capabilities;
    .end local v4    # "extFeature":Ljava/lang/String;
    :cond_3
    move-object/from16 v3, p1

    .line 142
    :cond_4
    :goto_1
    return-void
.end method
