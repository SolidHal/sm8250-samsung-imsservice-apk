.class public Lcom/sec/internal/ims/core/SlotBasedConfig;
.super Ljava/lang/Object;
.source "SlotBasedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    }
.end annotation


# static fields
.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/SlotBasedConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCdmaAvailableForVoice:Z

.field private mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageExceeded:Z

.field private mEntitlementNsds:Z

.field private mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

.field private mInviteRejected:Z

.field private mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

.field private mNotifiedImsNotAvailable:Z

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileListExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRTTMode:Z

.field private mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field private mRegistrationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

.field private mSSACPolicy:Z

.field private mSimMobilityActivation:Z

.field private mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendRegiWhileIrat:Z

.field private mTTYMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    .line 40
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 68
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clear()V

    .line 69
    return-void
.end method

.method public static getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;
    .locals 3
    .param p0, "phoneId"    # I

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/SlotBasedConfig;

    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    new-instance v0, Lcom/sec/internal/ims/core/SlotBasedConfig;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;-><init>()V

    .line 78
    .local v0, "config":Lcom/sec/internal/ims/core/SlotBasedConfig;
    sget-object v1, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object v0

    .line 76
    .end local v0    # "config":Lcom/sec/internal/ims/core/SlotBasedConfig;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public activeSimMobility(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    .line 229
    return-void
.end method

.method addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V
    .locals 2
    .param p1, "profileId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public addImsRegistration(ILcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "profileId"    # I
    .param p2, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method addProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public clear()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->clear()V

    .line 92
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 94
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    .line 95
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    .line 99
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEntitlementNsds:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    .line 103
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    .line 106
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 107
    return-void
.end method

.method clearProfiles()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    return-void
.end method

.method createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regMgr"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 115
    new-instance v6, Lcom/sec/internal/ims/core/ImsIconManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/ImsIconManager;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    iput-object v6, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    .line 116
    return-void
.end method

.method enableSsac(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return-void
.end method

.method getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method getEntitlementNsds()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEntitlementNsds:Z

    return v0
.end method

.method getExtendedProfiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    return-object v0
.end method

.method getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-object v0
.end method

.method getImsRegistrationListeners()Landroid/os/RemoteCallbackList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public getImsRegistrations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    return-object v0
.end method

.method public getRTTMode()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    return v0
.end method

.method getRcsVolteSingleRegistration()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object v0
.end method

.method public getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-object v0
.end method

.method getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method getTTYMode()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    return v0
.end method

.method isCdmaAvailableForVoice()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    return v0
.end method

.method isDataUsageExceeded()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return v0
.end method

.method isInviteRejected()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    return v0
.end method

.method public isNotifiedImsNotAvailable()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    return v0
.end method

.method public isSimMobilityActivated()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    return v0
.end method

.method isSsacEnabled()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return v0
.end method

.method isSuspendedWhileIrat()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return v0
.end method

.method removeExtendedProfile(I)V
    .locals 2
    .param p1, "profileId"    # I

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method setCdmaAvailableForVoice(Z)V
    .locals 0
    .param p1, "available"    # Z

    .line 212
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    .line 213
    return-void
.end method

.method setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "registrationListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    .line 164
    return-void
.end method

.method setDataUsageExceed(Z)V
    .locals 0
    .param p1, "limited"    # Z

    .line 245
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return-void
.end method

.method public setEntitlementNsds(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isEntitled"    # Ljava/lang/Boolean;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEntitlementNsds:Z

    .line 225
    return-void
.end method

.method setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "registrationListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/IImsRegistrationListener;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    .line 156
    return-void
.end method

.method setInviteReject(Z)V
    .locals 0
    .param p1, "rejected"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    .line 205
    return-void
.end method

.method setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 0
    .param p1, "networkEvent"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 180
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 181
    return-void
.end method

.method public setNotifiedImsNotAvailable(Z)V
    .locals 0
    .param p1, "notifiedImsNotAvailable"    # Z

    .line 252
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    .line 253
    return-void
.end method

.method public setRTTMode(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "rttMode"    # Ljava/lang/Boolean;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    .line 197
    return-void
.end method

.method setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V
    .locals 0
    .param p1, "registrationType"    # Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 260
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 261
    return-void
.end method

.method setSimMobilityStatusListeners(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "SimMobilityStatusListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ISimMobilityStatusListener;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    .line 173
    return-void
.end method

.method setSuspendWhileIrat(Z)V
    .locals 0
    .param p1, "suspend"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return-void
.end method

.method setTTYMode(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "ttyMode"    # Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    .line 189
    return-void
.end method
