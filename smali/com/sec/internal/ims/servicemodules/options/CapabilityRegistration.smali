.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;
.super Ljava/lang/Object;
.source "CapabilityRegistration.java"


# static fields
.field private static final LAST_SEEN_UNKNOWN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityRegistration"

.field private static final SET_OWN_CAPABILITIES_DELAY:I = 0x1f4


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0
    .param p1, "capabilityDiscoveryModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 46
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 47
    return-void
.end method

.method private callContactSync(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getBlockedInitialContactSyncBeforeRegi()Z

    move-result v0

    const-string v1, "CapabilityRegistration"

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "callContactSync : set the current time to skip the contact scan."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setLastRefreshTime(J)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setLastRefreshTime(J)V

    .line 270
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getIsBlockedContactChange()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 271
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getBlockedInitialContactSyncBeforeRegi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    :cond_2
    const-string v0, "callContactSync : call contact sync if the contact change is blocked."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 275
    :cond_3
    return-void
.end method

.method private fallbackToOptions(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "imsRegInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "phoneId"    # I

    .line 320
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "presence"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 321
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 322
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "CapabilityRegistration"

    const-string v1, "fallbackToOptions: Presence is not enabled in ImsProfile."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->setUsePresence(Z)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putCapabilityControlForOptionsModule(ILcom/sec/internal/ims/servicemodules/options/OptionsModule;)V

    .line 331
    :cond_1
    return-void
.end method

.method private loadUserLastActiveTimeStamp(Landroid/content/Context;I)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 221
    const-string v0, "capdiscovery"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "CapabilityRegistration"

    const-string v2, "load last seen active"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastseenactive_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "lastSeenUser":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUserLastActive(IJ)V

    .line 225
    return-void
.end method

.method private needPublish(Lcom/sec/ims/ImsRegistration;ILjava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;J)Z
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "phoneId"    # I
    .param p4, "mLastCapExResult"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "mOldFeature"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "J)Z"
        }
    .end annotation

    .line 153
    .local p3, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    const/4 v0, 0x1

    .line 154
    .local v0, "doPublish":Z
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    const-string/jumbo v1, "presence"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CapabilityRegistration"

    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 157
    const-string v1, "needPublish: do not publish, Presence is not registered."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p4, v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 160
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 161
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isOwnCapPublished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    .line 165
    .local v3, "newFeature":J
    cmp-long v1, p5, v3

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v3, v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOldFeature(JI)V

    .line 167
    const/4 v0, 0x1

    .line 168
    const-string v1, "needPublish: do publish, service list is same, but different Features.(KOR RCS only)"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x0

    .line 171
    const-string v1, "needPublish: do not publish, service list & feature list are same."

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .end local v3    # "newFeature":J
    :goto_0
    goto :goto_1

    .line 174
    :cond_4
    const/4 v0, 0x0

    .line 175
    const-string v1, "needPublish: do not publish, service list is same."

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    :cond_5
    :goto_1
    return v0
.end method

.method private processDeregistered(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method private publish(ZZILcom/sec/ims/ImsRegistration;)V
    .locals 6
    .param p1, "needUnpublish"    # Z
    .param p2, "needPublish"    # Z
    .param p3, "phoneId"    # I
    .param p4, "imsRegInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 228
    const-string v0, "CapabilityRegistration"

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 229
    const-string v2, "onRegistered : need unpublish, invoke presenceModule to trigger unpublish"

    invoke-static {v0, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    goto/16 :goto_0

    .line 234
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v2, "options"

    invoke-virtual {p4, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DSDS_DI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    :cond_1
    const-string v2, "onRegistered : need PUBLISH, expecting EVT_SET_OWN_CAPABILITIES(5) after this"

    invoke-static {v0, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getRegiInfoUpdater(I)Z

    move-result v0

    const-wide/16 v3, 0x1f4

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 242
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setRegiInfoUpdater(IZ)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x35

    .line 247
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 252
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    :cond_4
    :goto_0
    return-void
.end method

.method private setAvailablePhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 294
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 296
    .local v0, "mAvailablePhoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 298
    .end local v0    # "mAvailablePhoneId":I
    :cond_0
    move v0, p1

    .line 300
    .restart local v0    # "mAvailablePhoneId":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setAvailablePhoneId(I)V

    .line 301
    return-void
.end method

.method private setUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;I)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "imsRegInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "phoneId"    # I

    .line 304
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 305
    .local v0, "impu":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    .line 307
    .local v1, "mUriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_sipuri_for_urigenerator"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 309
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v4, v5, :cond_0

    .line 310
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    .line 311
    goto :goto_1

    .line 313
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 316
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 317
    return-void
.end method

.method private startPoll(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 280
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPoll(Ljava/util/Date;I)V

    .line 284
    :cond_0
    return-void
.end method

.method private triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "imsRegInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 287
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V

    .line 290
    :cond_0
    return-void
.end method

.method private updateOwnCapabilitiesOnRegi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "privateUserId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 185
    .local v0, "ownCap":Lcom/sec/ims/options/Capabilities;
    const-string v1, "enable_rcs_extensions"

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    const-string v3, "CapabilityRegistration"

    if-eqz v1, :cond_2

    .line 186
    const-string v1, "iari_app_association"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 188
    .local v4, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 189
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-string v8, ":"

    const-string v9, "%3A"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "extFeature":Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "default-tag"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    invoke-virtual {v0, v7}, Lcom/sec/ims/options/Capabilities;->addExtFeature(Ljava/lang/String;)V

    .line 193
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "extFeature":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOwnCapabilitiesOnRegi: extFeature = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 197
    invoke-virtual {v0, p2}, Lcom/sec/ims/options/Capabilities;->setNumber(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 199
    .local v2, "ownUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v2, :cond_4

    .line 200
    invoke-virtual {v0, v2}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_1

    .line 202
    .end local v2    # "ownUri":Lcom/sec/ims/util/ImsUri;
    :cond_3
    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v4

    if-ne v2, v4, :cond_4

    .line 203
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->extractMsisdnFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "impi":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/sec/ims/options/Capabilities;->setNumber(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 206
    .local v4, "ownUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v4, :cond_5

    .line 207
    invoke-virtual {v0, v4}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_2

    .line 202
    .end local v2    # "impi":Ljava/lang/String;
    .end local v4    # "ownUri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    :goto_1
    nop

    .line 210
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOwnCapabilitiesOnRegi: own number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOwnCapabilitiesOnRegi: own uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    :cond_6
    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 215
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 216
    invoke-virtual {v0, p4}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putOwnList(ILcom/sec/ims/options/Capabilities;)V

    .line 218
    return-void
.end method


# virtual methods
.method public synthetic lambda$processDeregistered$0$CapabilityRegistration(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "mImsRegInfoList"    # Ljava/util/Map;

    .line 121
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 122
    .local v0, "phoneId":I
    const-string v1, "CapabilityRegistration"

    const-string/jumbo v2, "processDeregistered"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const-string/jumbo v2, "processDeregistered: already deregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 130
    .local v2, "ownCap":Lcom/sec/ims/options/Capabilities;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 131
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v4, "processDeregistered: mIsConfiguredOnCapability sets as false."

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setIsConfiguredOnCapability(ZI)V

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeImsRegInfoList(I)V

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v3, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    .line 141
    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    return-void
.end method

.method onDeregistered(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    const-string v0, "CapabilityRegistration"

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->processDeregistered(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isRegistrationSupported(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x33

    .line 115
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_0
    return-void
.end method

.method onDeregistering(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 93
    .local v0, "phoneId":I
    const-string v1, "CapabilityRegistration"

    const-string v2, "onDeregistering"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOwnCapabilitiesChanged(I)V

    .line 101
    :cond_1
    return-void
.end method

.method onRegistered(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;J)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "mLastCapExResult"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "mOldFeature"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "J)V"
        }
    .end annotation

    .line 52
    .local p3, "mImsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    .line 53
    .local v7, "phoneId":I
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->setAvailablePhoneId(I)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistered: RAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Services = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityRegistration"

    invoke-static {v1, v7, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isRegistrationSupported(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "onRegistered: registration is not supported, return"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {p1, v7, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 64
    move-object v0, p0

    move-object v1, p2

    move v2, v7

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->needPublish(Lcom/sec/ims/ImsRegistration;ILjava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;J)Z

    move-result v0

    .line 65
    .local v0, "needPublish":Z
    invoke-static {v7}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    invoke-interface {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    .line 67
    .local v1, "needUnpublish":Z
    move-object v2, p2

    .line 68
    .local v2, "imsRegInfo":Lcom/sec/ims/ImsRegistration;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v7, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setImsRegInfoList(ILcom/sec/ims/ImsRegistration;)V

    .line 70
    invoke-direct {p0, p2, v2, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->setUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;I)V

    .line 72
    invoke-direct {p0, v2, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->fallbackToOptions(Lcom/sec/ims/ImsRegistration;I)V

    .line 74
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->updateOwnCapabilitiesOnRegi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    invoke-static {v7}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->startServiceBasedOnOmaDmNodes(I)V

    .line 78
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(I)V

    .line 80
    invoke-direct {p0, v1, v0, v7, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->publish(ZZILcom/sec/ims/ImsRegistration;)V

    .line 82
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->startPoll(I)V

    .line 84
    invoke-direct {p0, v7, p2, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V

    .line 86
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->loadUserLastActiveTimeStamp(Landroid/content/Context;I)V

    .line 88
    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->callContactSync(I)V

    .line 89
    return-void
.end method
