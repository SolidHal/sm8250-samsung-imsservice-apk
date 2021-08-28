.class public Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;
.source "EmeiaUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 2
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")Z"
        }
    .end annotation

    .line 28
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v0

    .line 29
    .local v0, "ftMech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->isFtHttpRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->checkFtHttpCapability(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->checkUserAvailableOffline(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 36
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: do not change anything"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    return v2

    .line 37
    :cond_4
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    return v0
.end method

.method public updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 4
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->mPhoneId:I

    const-string/jumbo v2, "updateAvailableFeatures: capex is null."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    return-wide p2

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p4, v0, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long p2, v0

    goto :goto_0

    .line 60
    :cond_1
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long p2, v0

    .line 64
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaUPStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAvailableFeatures:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mAvailableFeatures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    return-wide p2
.end method
