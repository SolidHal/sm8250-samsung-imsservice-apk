.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
.super Ljava/lang/Object;
.source "IRegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final ID_SIM2_OFFSET:I = 0x3e8

.field public static final LOG_TAG:Ljava/lang/String; = "RegiMgr"


# direct methods
.method public static getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "rat"    # I

    .line 58
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getDeregTimeout(I)I

    move-result v0

    .line 59
    .local v0, "deregistrationTimer":I
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Under 1000 Deregi Timer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v0, 0xfa0

    .line 64
    :cond_0
    return v0
.end method

.method public static getFormattedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "deviceId"    # Ljava/lang/String;

    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFormattedDeviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v1, "null!"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object p0
.end method

.method public static getRegistrationInfoId(II)I
    .locals 1
    .param p0, "profileId"    # I
    .param p1, "phoneId"    # I

    .line 34
    mul-int/lit16 v0, p1, 0x3e8

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public abstract addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
.end method

.method public abstract blockVoWifiRegisterOnRoaminByCsfbError(II)V
.end method

.method public abstract bootCompleted()V
.end method

.method public abstract deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V
.end method

.method public abstract deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V
.end method

.method public abstract deregisterProfile(II)V
.end method

.method public abstract deregisterProfile(IIZ)V
.end method

.method public abstract deregisterProfile(Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract doPendingUpdateRegistration()V
.end method

.method public abstract findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I
.end method

.method public abstract forceNotifyToApp(I)V
.end method

.method public abstract getCmcLineSlotIndex()I
.end method

.method public abstract getCsfbSupported(I)Z
.end method

.method public abstract getCurrentNetwork(I)I
.end method

.method public abstract getCurrentNetworkByPhoneId(I)I
.end method

.method public abstract getCurrentPcscf(I)[Ljava/lang/String;
.end method

.method public abstract getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
.end method

.method public abstract getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
.end method

.method public abstract getImsiByUserAgentHandle(I)Ljava/lang/String;
.end method

.method public abstract getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
.end method

.method public abstract getPendingRegistration(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "IZI)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTelephonyCallStatus(I)I
.end method

.method public abstract getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract hasOmaDmFinished()Z
.end method

.method public abstract isCmcRegistered(I)I
.end method

.method public abstract isEmergencyCallProhibited(I)Z
.end method

.method public abstract isEpdnRequestPending(I)Z
.end method

.method public abstract isInvite403DisabledService(I)Z
.end method

.method public abstract isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z
.end method

.method public abstract isRcsRegistered(I)Z
.end method

.method public abstract isSelfActivationRequired(I)Z
.end method

.method public abstract isSuspended(I)Z
.end method

.method public abstract isVoWiFiSupported(I)Z
.end method

.method public abstract moveNextPcscf(ILandroid/os/Message;)V
.end method

.method public abstract notifyRCSAllowedChangedbyMDM()V
.end method

.method public abstract notifyRomaingSettingsChanged(II)V
.end method

.method public abstract onDmConfigurationComplete()V
.end method

.method public abstract refreshAuEmergencyProfile(I)V
.end method

.method public abstract registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
.end method

.method public abstract registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I
.end method

.method public abstract releaseThrottleByAcs(I)V
.end method

.method public abstract releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract requestTryRegister(I)V
.end method

.method public abstract requestTryRegsiter(IJ)V
.end method

.method public abstract sendDeregister(I)V
.end method

.method public abstract sendDeregister(II)V
.end method

.method public abstract sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
.end method

.method public abstract sendDummyDnsQuery()V
.end method

.method public abstract sendReRegister(II)V
.end method

.method public abstract setInvite403DisableService(ZI)V
.end method

.method public abstract setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V
.end method

.method public abstract setRttMode(IZ)V
.end method

.method public abstract setSSACPolicy(IZ)V
.end method

.method public abstract setSilentLogEnabled(Z)V
.end method

.method public abstract setThirdPartyFeatureTags([Ljava/lang/String;)V
.end method

.method public abstract setTtyMode(II)V
.end method

.method public abstract startEmergencyRegistration(ILandroid/os/Message;)V
.end method

.method public abstract stopEmergencyPdnOnly(I)V
.end method

.method public abstract stopEmergencyRegistration(I)V
.end method

.method public abstract stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract suspendRegister(ZI)V
.end method

.method public abstract suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
.end method

.method public abstract unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract updateChatService(I)V
.end method

.method public abstract updatePcoInfo(ILjava/lang/String;I)V
.end method

.method public abstract updateRegistrationBySSAC(IZ)V
.end method

.method public abstract updateTelephonyCallStatus(II)V
.end method
