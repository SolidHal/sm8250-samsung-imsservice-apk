.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceService;
.super Lcom/sec/ims/presence/IPresenceService$Stub;
.source "PresenceService.java"


# instance fields
.field mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 1
    .param p1, "capex"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 25
    invoke-direct {p0}, Lcom/sec/ims/presence/IPresenceService$Stub;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 26
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 27
    return-void
.end method


# virtual methods
.method public getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 32
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 38
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 44
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    return-object v1
.end method
