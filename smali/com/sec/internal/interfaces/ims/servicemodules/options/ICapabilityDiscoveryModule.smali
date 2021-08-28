.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
.super Ljava/lang/Object;
.source "ICapabilityDiscoveryModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract changeParalysed(ZI)V
.end method

.method public abstract clearCapabilitiesCache(I)V
.end method

.method public abstract exchangeCapabilitiesForVSH(IZ)V
.end method

.method public abstract exchangeCapabilitiesForVSHOnRegi(ZI)V
.end method

.method public abstract getCapabilities(Lcom/sec/ims/util/ImsUri;JI)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation
.end method

.method public abstract getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;I)[Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
.end method

.method public abstract getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
.end method

.method public abstract getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.end method

.method public abstract hasVideoOwnCapability(I)Z
.end method

.method public abstract isConfigured(I)Z
.end method

.method public abstract onPackageUpdated(Ljava/lang/String;)V
.end method

.method public abstract setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZI)Z
.end method

.method public abstract updateOwnCapabilities(I)V
.end method
