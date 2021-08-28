.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "PresenceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceModule"

.field static final NAME:Ljava/lang/String;


# instance fields
.field mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

.field protected mModuleHandler:Landroid/os/Handler;

.field private mPhoneCount:I

.field private mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

.field private mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceRegiInfoUpdater:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

.field private final mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

.field private mServiceTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeRetryList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUriToSubscribe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 157
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 140
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    .line 159
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 160
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-direct {v2, p2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 163
    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    .line 164
    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    .line 166
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    new-instance v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 167
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 169
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    .line 170
    .local v0, "presenceReceiver":Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 174
    new-instance v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    .line 175
    .local v3, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 176
    new-instance v4, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v4, v2}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 177
    new-instance v4, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 178
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 179
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 173
    .end local v3    # "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "phoneId":I
    :cond_0
    const-string/jumbo v2, "power"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 183
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, "PresenceModule"

    if-eqz v2, :cond_1

    .line 184
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    invoke-virtual {v4, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 188
    :cond_1
    const-string v1, "created"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .line 1479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1480
    return-void

    .line 1483
    :cond_0
    monitor-enter v0

    .line 1484
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1485
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(I)V

    .line 1486
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendEmptyMessageDelayed(IJ)Z

    .line 1487
    monitor-exit v0

    .line 1488
    return-void

    .line 1487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private buildPresenceInfoForThirdParty(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1819
    const-string v0, "PresenceModule"

    const-string v1, "buildPresenceInfoForThirdParty"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v0

    .line 1822
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    monitor-exit v0

    return-void

    .line 1826
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 1827
    .local v2, "st":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1828
    .end local v2    # "st":Lcom/sec/ims/presence/ServiceTuple;
    goto :goto_0

    .line 1829
    :cond_1
    monitor-exit v0

    .line 1830
    return-void

    .line 1829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 6
    .param p1, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 1652
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1653
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExpBackOffRetry: EXP_BACKOFF_RETRY count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1655
    const-wide/16 v3, 0x0

    .line 1660
    .local v3, "expBackoffRetryTimer":J
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v5, :cond_1

    .line 1661
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 1662
    const-string v1, "handleExpBackOffRetry: notifying polling failure"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1663
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1665
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getListSubscribeExpBackOffRetryTime(II)J

    move-result-wide v3

    goto :goto_0

    .line 1666
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_2

    .line 1667
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getSubscribeExpBackOffRetryTime(II)J

    move-result-wide v3

    .line 1669
    :cond_2
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3

    .line 1670
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1671
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startSubscribeRetryTimer(JLjava/lang/String;I)V

    goto :goto_1

    .line 1673
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1675
    :goto_1
    return-void
.end method

.method private initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 2
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "statusCode"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 1188
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 1189
    iput v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1191
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, v0, :cond_1

    .line 1192
    iput v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1194
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, v0, :cond_2

    .line 1195
    iput v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1197
    :cond_2
    return-object p1
.end method

.method private notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 5
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "statusCode"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .param p3, "response"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
    .param p4, "phoneId"    # I

    .line 1320
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    .line 1321
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1322
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 1323
    .local v1, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v1, :cond_2

    .line 1324
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p2, v2, :cond_1

    .line 1325
    iget-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    if-nez v2, :cond_0

    .line 1326
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    .line 1327
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    .line 1329
    :cond_0
    const-string v2, "PresenceModule"

    const-string v3, "notifyPublishError: maintain last IMS registration"

    invoke-static {v2, p4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1330
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    .line 1333
    :cond_1
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getSipError()I

    move-result v3

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    .line 1337
    .end local v0    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v1    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_2
    :goto_0
    return-void
.end method

.method private onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 1758
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityAndAvailabilityPublished(II)V

    .line 1759
    return-void
.end method

.method private onPublishDisableMode(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1314
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1317
    :cond_0
    return-void
.end method

.method private onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 11
    .param p1, "response"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
    .param p2, "phoneId"    # I

    .line 1086
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1087
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1088
    .local v1, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1089
    const-string v3, "PresenceModule"

    if-nez v0, :cond_0

    .line 1090
    const-string v2, "onPublishFailed: mnoStrategy is null."

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1091
    return-void

    .line 1094
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    .line 1095
    .local v4, "errorReason":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v6

    .line 1097
    .local v6, "statusCode":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPublishFailed - statusCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, p2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1098
    const v7, 0x12090004

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->ordinal()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->ordinal()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getSipError()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1098
    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1101
    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    .line 1103
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    if-eq v4, v7, :cond_1

    .line 1104
    const-string v7, "onPublishFailed - remain etag for Kor"

    invoke-static {v3, p2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v7, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 1109
    :goto_0
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_2

    .line 1110
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v7, v2}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 1112
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const-wide/16 v7, 0x3e8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1175
    :pswitch_0
    const-string v2, "onPublishFailed: need to perform IMS re-registration"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1176
    goto/16 :goto_1

    .line 1169
    :pswitch_1
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1170
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    .line 1171
    goto/16 :goto_1

    .line 1164
    :pswitch_2
    const-string v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1165
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    mul-long/2addr v2, v7

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1166
    goto :goto_1

    .line 1157
    :pswitch_3
    const-string v2, "onPublishFailed: vzw default case... "

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1158
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishDisableMode(I)V

    .line 1159
    goto :goto_1

    .line 1153
    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V

    .line 1154
    goto :goto_1

    .line 1149
    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    .line 1150
    goto :goto_1

    .line 1144
    :pswitch_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v2

    mul-long/2addr v2, v7

    invoke-direct {p0, v2, v3, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 1145
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1146
    goto :goto_1

    .line 1132
    :pswitch_7
    invoke-direct {p0, v1, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1133
    goto :goto_1

    .line 1137
    :cond_3
    :pswitch_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryTime()I

    move-result v2

    if-lez v2, :cond_4

    .line 1138
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryTime()I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v2, v7, v8}, Lcom/sec/ims/presence/PresenceInfo;->setMinExpires(J)V

    .line 1140
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1141
    goto :goto_1

    .line 1128
    :pswitch_9
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    .line 1129
    goto :goto_1

    .line 1123
    :pswitch_a
    const-string v2, "onPublishFailed: PRESENCE_NOT_FOUND"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1124
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1125
    goto :goto_1

    .line 1119
    :pswitch_b
    const-string v2, "onPublishFailed: PRESENCE_AT_NOT_REGISTERED"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1120
    goto :goto_1

    .line 1114
    :pswitch_c
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    .line 1115
    nop

    .line 1182
    :goto_1
    invoke-direct {p0, v1, v6, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1184
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getSipError()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)Z

    .line 1185
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V
    .locals 7
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "isRefresh"    # Z
    .param p3, "phoneId"    # I

    .line 1222
    if-nez p2, :cond_1

    .line 1223
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1225
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.ril.svlte1x"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1226
    .local v0, "isSVLTEDevice":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishNoResponse: count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSVLTE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1228
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-static {p3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v3

    .line 1229
    .local v3, "NoResponseRetryTimer":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 1230
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {p0, v1, v2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1232
    :cond_0
    const-string v1, "onPublishNoResponse: retry time end for NoResponse... "

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1235
    .end local v0    # "isSVLTEDevice":Z
    .end local v3    # "NoResponseRetryTimer":J
    :cond_1
    :goto_0
    return-void
.end method

.method private onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 3
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "phoneId"    # I

    .line 1301
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishNotProvisioned: NOT_PROVISIONED count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PresenceModule"

    invoke-static {v2, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1305
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1308
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1309
    const/4 v0, 0x0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1311
    :cond_0
    return-void
.end method

.method private onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 8
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "phoneId"    # I

    .line 1201
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishRequestTimeout: PRESENCE_REQUEST_TIMEOUT count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1205
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v2

    .line 1207
    .local v2, "RequestTimeoutRetryTimer":J
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1209
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_1

    .line 1210
    mul-long/2addr v6, v2

    invoke-direct {p0, v6, v7, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1212
    :cond_1
    const-string v0, "onPublishRequestTimeout: starting error retry ... "

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    mul-long/2addr v0, v6

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    .line 1218
    :cond_2
    :goto_0
    return-void
.end method

.method private onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z
    .locals 5
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p3, "phoneId"    # I

    .line 1238
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishRequireFull: oldError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1241
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1242
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    const-string v0, "onPublishRequireFull: wait for the publish timer expiry"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1245
    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {p0, v1, v2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1247
    return v0

    .line 1249
    :cond_1
    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1250
    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1253
    :cond_2
    return v2
.end method

.method private onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 5
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "retryAfter"    # J
    .param p4, "phoneId"    # I

    .line 1257
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_0

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPublishRetryAfter: retry publish after "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PresenceModule"

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1259
    mul-long/2addr v1, p2

    invoke-direct {p0, v1, v2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v3

    mul-long/2addr v3, v1

    long-to-double v0, v3

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v3

    mul-long/2addr v3, v1

    invoke-direct {p0, v3, v4, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1267
    :goto_0
    return-void
.end method

.method private onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 10
    .param p1, "presInfo"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .param p2, "retryAfter"    # J
    .param p4, "phoneId"    # I

    .line 1270
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-string v3, "PresenceModule"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    .line 1271
    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPublishRetryExpBackoff: Use retryAfter, Retry publish after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1273
    mul-long/2addr v1, p2

    invoke-direct {p0, v1, v2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1274
    const/4 v0, 0x0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1275
    return-void

    .line 1279
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPublishRetryExpBackoff: EXP_BACKOFF_RETRY count = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1283
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-static {p4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v6

    .line 1285
    .local v6, "expBackoffRetryTimer":J
    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1287
    :cond_1
    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 1288
    mul-long/2addr v1, v6

    invoke-direct {p0, v1, v2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1290
    :cond_2
    const-string v0, "onPublishRetryExpBackoff: starting error retry ... "

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_3

    .line 1293
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v8

    mul-long/2addr v8, v1

    invoke-direct {p0, v8, v9, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    .line 1298
    :cond_3
    :goto_0
    return-void
.end method

.method private onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 10
    .param p1, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "response"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 1560
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1561
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1562
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const-string v2, "PresenceModule"

    if-nez v1, :cond_0

    .line 1563
    const-string/jumbo v3, "onSubscribeFailed: mnoStrategy is null."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1564
    return-void

    .line 1567
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1568
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    .line 1567
    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 1570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSubscribeFailed - statusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1572
    new-instance v3, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    .line 1573
    .local v3, "info":Lcom/sec/ims/presence/PresenceInfo;
    new-instance v4, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1574
    invoke-virtual {v3, v5}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    .line 1576
    sget-object v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v6, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_7

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6

    const/4 v7, 0x3

    if-eq v4, v7, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    const/4 v7, 0x6

    const/16 v9, 0x8

    if-eq v4, v7, :cond_1

    if-eq v4, v9, :cond_3

    const/16 v5, 0xb

    if-eq v4, v5, :cond_4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_8

    goto/16 :goto_0

    .line 1618
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v4, :cond_2

    .line 1619
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_2

    .line 1620
    invoke-interface {v2, v5, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1623
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1624
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 1625
    invoke-virtual {p0, v9, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1626
    goto/16 :goto_0

    .line 1580
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1581
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 1582
    goto/16 :goto_0

    .line 1587
    :cond_4
    invoke-virtual {v3}, Lcom/sec/ims/presence/PresenceInfo;->clearService()V

    .line 1588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSubscribeFailed - PRESENCE_NO_SUBSCRIBE: code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1588
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1590
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    const-string v4, "isbot"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1592
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_0

    .line 1594
    :cond_5
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1596
    goto :goto_0

    .line 1629
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 1630
    goto :goto_0

    .line 1599
    :cond_7
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_8

    .line 1600
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1601
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1602
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1603
    const-string/jumbo v4, "trigger OMA sync for 403 not provisioned"

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1604
    goto :goto_0

    .line 1608
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_9

    .line 1609
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1611
    :cond_9
    const-string/jumbo v4, "onSubscribeFailed: for 403 forbidden response"

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1612
    nop

    .line 1636
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_a

    .line 1637
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 1638
    .local v2, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 1639
    .local v4, "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v4, :cond_a

    .line 1640
    new-instance v5, Lcom/sec/ims/util/SipError;

    .line 1641
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v7

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 1640
    invoke-interface {v4, v6, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    .line 1645
    .end local v2    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v4    # "regGov":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_a
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 1647
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v4

    invoke-static {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPSubInfoToHQM(Landroid/content/Context;II)Z

    .line 1648
    const v2, 0x12090005

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v6, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1649
    return-void
.end method

.method private processConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method private processDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method private processDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$grPx3CvQYu37QlCfep7c8sm-Xog;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$grPx3CvQYu37QlCfep7c8sm-Xog;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private processRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$_sR-TiHIntLWgu7oGrWuQbF5YGc;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$_sR-TiHIntLWgu7oGrWuQbF5YGc;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method private resetPublishErrorHandling(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1882
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1883
    .local v0, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    .line 1884
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1885
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1886
    return-void
.end method

.method private setBadEventProgress(ZI)V
    .locals 2
    .param p1, "mode"    # Z
    .param p2, "phoneId"    # I

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBadEventProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    .line 1835
    return-void
.end method

.method private setServiceVersion()V
    .locals 4

    .line 1722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1723
    .local v0, "svMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 1724
    .local v1, "botMsg":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string/jumbo v3, "xbotmessage"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->updateServiceVersion(ILjava/util/HashMap;)V

    .line 1726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServiceVersion: xbotmessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return-void
.end method

.method private startBadEventTimer(JZI)V
    .locals 5
    .param p1, "millis"    # J
    .param p3, "needSaveTime"    # Z
    .param p4, "phoneId"    # I

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBadEventTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1342
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    const-string/jumbo v0, "startBadEventTimer: BadEvent in progress"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1344
    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1348
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 1351
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1355
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    .line 1358
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v2, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1360
    const/4 v1, 0x1

    invoke-direct {p0, v1, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 1361
    if-eqz p3, :cond_2

    .line 1362
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 1365
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private startPublishTimer(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v0, "startPublishTimer: PublishTimer is already running. Stopping it."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    .line 578
    .local v2, "delay":J
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v2

    .line 582
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPublishTimer: PublishTimer "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    .line 591
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v2

    invoke-static {v1, v4, v5, v6}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 592
    return-void
.end method

.method private startRetryPublishTimer(JI)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "phoneId"    # I

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetryPublishTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1397
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 1399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 1403
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1404
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v3, p1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    .line 1406
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "sim_slot_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1409
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    .line 1412
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v3, v4, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1415
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1416
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1419
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private startSubscribeRetryTimer(JLjava/lang/String;I)V
    .locals 6
    .param p1, "millis"    # J
    .param p3, "subscriptionId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSubscribeRetryTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1435
    .local v0, "subscribeRetryIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1437
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:subscriptionid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1444
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1445
    const-string v3, "KEY_SUBSCRIPTION_ID"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    const-string v3, "KEY_PHONE_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1448
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1451
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1452
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    return-void
.end method

.method private stopBadEventTimer(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1371
    const-string/jumbo v0, "stopBadEventTimer: BadEventExitTimer is not running."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1372
    return-void

    .line 1375
    :cond_0
    const-string/jumbo v0, "stopBadEventTimer"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    .line 1380
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 1381
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 1382
    return-void
.end method

.method private stopPublishTimer(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 596
    const-string/jumbo v0, "stopPublishTimer: PublishTimer is not running."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 597
    return-void

    .line 599
    :cond_0
    const-string/jumbo v0, "stopPublishTimer:"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    .line 603
    return-void
.end method

.method private stopRetryPublishTimer(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1423
    const-string/jumbo v0, "stopRetryPublishTimer: mRetryPublishIntent is null."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1424
    return-void

    .line 1426
    :cond_0
    const-string/jumbo v0, "stopRetryPublishTimer"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    .line 1430
    return-void
.end method

.method private stopSubscribeRetryTimer(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1457
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1459
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1461
    .local v2, "subscriptionId":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v3

    .line 1462
    .local v3, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1463
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1464
    .local v4, "subscribeRetryIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1465
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1466
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1468
    .end local v2    # "subscriptionId":Ljava/lang/String;
    .end local v3    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .end local v4    # "subscribeRetryIntent":Landroid/app/PendingIntent;
    :cond_0
    goto :goto_0

    .line 1469
    :cond_1
    const-string v2, "PresenceModule"

    const-string/jumbo v3, "stopSubscribeRetryTimer"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1470
    return-void
.end method

.method private subscribe(Ljava/util/List;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)V
    .locals 17
    .param p2, "isAnonymousFetch"    # Z
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "I)V"
        }
    .end annotation

    .line 673
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v11, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: uri list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "PresenceModule"

    invoke-static {v9, v11, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: request type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v3, :cond_0

    .line 681
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(I)V

    .line 682
    invoke-direct {v0, v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 685
    :cond_0
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 686
    return-void

    .line 689
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v11}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 691
    .local v12, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 692
    .local v13, "urisToSubscribe":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 693
    .local v14, "urisNotToSubscribe":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/sec/ims/util/ImsUri;

    .line 694
    .local v15, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->hasSubscription(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 695
    const-string/jumbo v3, "subscribe: subscription has been already sent"

    invoke-static {v9, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: subscribed uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v11, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 697
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    goto :goto_0

    .line 700
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "list_sub_uri_translation"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 701
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v11}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v4

    invoke-virtual {v0, v15, v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v5

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move-object v3, v15

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    goto :goto_1

    .line 702
    :cond_3
    move-object v3, v15

    .line 700
    :goto_1
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v15    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 705
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 706
    invoke-interface {v1, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 709
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 710
    const-string/jumbo v3, "subscribe: no URI to subscribe."

    invoke-static {v9, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 711
    return-void

    .line 714
    :cond_6
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    move-object v15, v3

    .line 715
    .local v15, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v15, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUriAll(Ljava/util/List;)V

    .line 716
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 717
    invoke-virtual {v15, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    .line 718
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setSingleFetch(Z)V

    .line 719
    invoke-virtual {v15, v11}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 721
    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_7

    .line 722
    invoke-virtual {v15, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addDropUriAll(Ljava/util/List;)V

    .line 724
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 726
    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 728
    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_8

    .line 729
    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v16

    .line 730
    .local v16, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 731
    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v8

    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v9

    .line 730
    move-object v4, v13

    move/from16 v5, p2

    move/from16 v10, p4

    invoke-interface/range {v3 .. v10}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    .line 733
    .end local v16    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_8
    return-void
.end method

.method private updateFeatures(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "presence"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 284
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEnabledFeatures:[J

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isSocialPresenceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method checkModuleReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1734
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PresenceModule"

    if-nez v0, :cond_0

    .line 1735
    const-string v0, "checkModuleReady: module not running"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1736
    return v1

    .line 1739
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1740
    const-string v0, "checkModuleReady: not ready to request"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1741
    return v1

    .line 1744
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1745
    const-string v0, "checkModuleReady: mnoStrategy is null."

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1746
    return v1

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-nez v0, :cond_3

    .line 1750
    const-string v0, "checkModuleReady: mUriGenerator is null"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    return v1

    .line 1754
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method clearWakeLock()Z
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1492
    return v1

    .line 1495
    :cond_0
    monitor-enter v0

    .line 1496
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1497
    monitor-exit v0

    return v1

    .line 1499
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1500
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(I)V

    .line 1501
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deRegisterService(Ljava/util/List;I)V
    .locals 9
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1783
    .local p1, "serviceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deRegisterService: serviceIdList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1785
    const/4 v0, 0x0

    .line 1787
    .local v0, "isRemoved":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1788
    .local v2, "s":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1789
    .local v4, "list":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 1790
    .local v5, "serviceId":Ljava/lang/String;
    aget-object v3, v4, v3

    .line 1791
    .local v3, "version":Ljava/lang/String;
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v6

    .line 1793
    .local v6, "tuple":Lcom/sec/ims/presence/ServiceTuple;
    if-eqz v6, :cond_0

    .line 1794
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter v7

    .line 1795
    :try_start_0
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v8, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v8, v6}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1796
    monitor-exit v7

    .line 1797
    const/4 v0, 0x1

    goto :goto_1

    .line 1796
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1799
    :cond_0
    const-string v7, "PresenceModule"

    const-string v8, "deRegisterService: not a valid service tuple"

    invoke-static {v7, p2, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1801
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "serviceId":Ljava/lang/String;
    .end local v6    # "tuple":Lcom/sec/ims/presence/ServiceTuple;
    :goto_1
    goto :goto_0

    .line 1803
    :cond_1
    if-eqz v0, :cond_2

    .line 1804
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1805
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1807
    :cond_2
    return-void
.end method

.method public dump()V
    .locals 4

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1900
    const-string v0, "Publish History: "

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1902
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    .line 1903
    .local v2, "config":Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    if-eqz v2, :cond_0

    .line 1904
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    .end local v2    # "config":Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    :cond_0
    goto :goto_0

    .line 1907
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1908
    return-void
.end method

.method public getBadEventProgress(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1838
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return v0
.end method

.method public getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "phoneId"    # I

    .line 607
    const-string v0, "PresenceModule"

    const-string v1, "getOwnPresenceInfo"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    return-object v0
.end method

.method public getParalysed(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return v0
.end method

.method getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    return-object v0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 619
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 618
    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    return-object v0
.end method

.method getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 1
    .param p1, "phoneId"    # I

    .line 856
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    return-object v0
.end method

.method public getRegiInfoUpdater(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1889
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 193
    const-string/jumbo v0, "presence"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFeature(I)J
    .locals 2
    .param p1, "phoneId"    # I

    .line 1864
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEnabledFeatures:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1731
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1712
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1713
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 1714
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: unknown event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 206
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 207
    const-string v0, "PresenceModule"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    .line 210
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 216
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadPublishTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 218
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadBadEventTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "phoneId":I
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 222
    .local v0, "moduleThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method public isOwnCapPublished()Z
    .locals 2

    .line 1842
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 1843
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    return v1
.end method

.method public isReadyToRequest(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 410
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 411
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-nez v0, :cond_0

    .line 412
    const-string v1, "PresenceModule"

    const-string v2, "isReadyToRequest: mnoStrategy null"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    return v1

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isPresenceReadyToRequest(ZZ)Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$processConfigured$0$PresenceModule(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 265
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 266
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    const-string v1, "PresenceModule"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "presence"

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 271
    .local v2, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigured: mno = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 275
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkAndClearPresencePreferences(Ljava/lang/String;I)V

    .line 278
    return-void

    .line 267
    .end local v2    # "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    :cond_1
    :goto_0
    const-string/jumbo v2, "processConfigured: no Presence support."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    return-void
.end method

.method public synthetic lambda$processDeregistered$3$PresenceModule(Lcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 376
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 377
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 378
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processDeregistered: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 386
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 387
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 388
    .local v3, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 389
    iget-object v5, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_0

    .line 390
    iget-object v5, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 392
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 394
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v2, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 395
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 396
    return-void
.end method

.method public synthetic lambda$processDeregistering$2$PresenceModule(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 351
    if-eqz p1, :cond_1

    .line 352
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "processDeregistering:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 354
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    .line 364
    .end local v0    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    return-void
.end method

.method public synthetic lambda$processRegistered$1$PresenceModule(Lcom/sec/ims/ImsRegistration;)V
    .locals 9
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 302
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 303
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 304
    .local v1, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processRegistered: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 308
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 309
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_0

    .line 311
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 313
    :cond_0
    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 314
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processRegistered: profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    .line 325
    .local v4, "impus":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 326
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 327
    .local v3, "impu":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 329
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    const-string/jumbo v6, "use_sipuri_for_urigenerator"

    invoke-interface {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/NameAddr;

    .line 331
    .local v6, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v7

    sget-object v8, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v7, v8, :cond_1

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 333
    goto :goto_1

    .line 335
    .end local v6    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_1
    goto :goto_0

    .line 337
    .end local v3    # "impu":Lcom/sec/ims/util/ImsUri;
    :cond_2
    :goto_1
    goto :goto_2

    .line 338
    :cond_3
    const-string/jumbo v5, "processRegistered: impus is empty !!!"

    invoke-static {v3, v0, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    :goto_2
    return-void
.end method

.method public loadThirdPartyServiceTuples(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    .line 1810
    .local p1, "tupleList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    const-string v0, "PresenceModule"

    const-string v1, "loadThirdPartyServiceTuples"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/ServiceTuple;

    .line 1812
    .local v1, "st":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v2

    .line 1813
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1814
    monitor-exit v2

    .line 1815
    .end local v1    # "st":Lcom/sec/ims/presence/ServiceTuple;
    goto :goto_0

    .line 1814
    .restart local v1    # "st":Lcom/sec/ims/presence/ServiceTuple;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1816
    .end local v1    # "st":Lcom/sec/ims/presence/ServiceTuple;
    :cond_0
    return-void
.end method

.method onBadEventTimeout(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1385
    const-string v0, "PresenceModule"

    const-string v1, "onBadEventTimeout: "

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1388
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1390
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    :cond_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 258
    const-string v0, "PresenceModule"

    const-string v1, "onConfigured:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processConfigured(I)V

    .line 260
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 369
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 370
    const-string v0, "PresenceModule"

    const-string v1, "onDeregistered:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 372
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 345
    const-string v0, "PresenceModule"

    const-string v1, "onDeregistering:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 347
    return-void
.end method

.method onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 18
    .param p1, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p2, "phoneId"    # I

    .line 879
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v15, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewPresenceInformation: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v15, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    return-void

    .line 885
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v1, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v3, "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object/from16 v16, v4

    .line 890
    .local v16, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v14

    .line 891
    .local v14, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    if-nez v14, :cond_2

    .line 892
    const-string v4, "onNewPresenceInformation: failed to fetch subscription"

    invoke-static {v2, v15, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 893
    return-void

    .line 897
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v4

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v4, v5, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 898
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 899
    .local v4, "sUri":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 904
    .end local v4    # "sUri":Lcom/sec/ims/util/ImsUri;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    .line 905
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 912
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v4, v15}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    .line 913
    .local v4, "cachedInfo":Lcom/sec/ims/presence/PresenceInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 914
    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 917
    .end local v4    # "cachedInfo":Lcom/sec/ims/presence/PresenceInfo;
    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 918
    invoke-static/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 921
    :cond_5
    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 922
    invoke-static/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_6
    :goto_1
    move-object/from16 v17, v1

    move-object v13, v3

    goto :goto_2

    .line 925
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    .line 926
    move-object v3, v1

    move-object/from16 v17, v1

    move-object v13, v3

    .line 930
    .end local v1    # "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v3    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v13, "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v17, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :goto_2
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_9

    .line 931
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 932
    .local v3, "telUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v14, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->containsDropUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 933
    invoke-virtual {v14, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->removeDropUri(Lcom/sec/ims/util/ImsUri;)V

    .line 935
    .end local v3    # "telUri":Lcom/sec/ims/util/ImsUri;
    :cond_8
    goto :goto_3

    .line 939
    :cond_9
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v3, :cond_a

    .line 940
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isLongLivedSubscription()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->checkLazySubscription(Lcom/sec/ims/util/ImsUri;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 941
    const-string v1, "onNewPresenceInformation: lazy subscription not in order"

    invoke-static {v2, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewPresenceInformation: delayed uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v15, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 943
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v15, v8, v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 944
    return-void

    .line 948
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V

    .line 950
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v1

    .line 951
    .local v1, "features":J
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 952
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 951
    invoke-static {v7, v3, v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/ims/util/ImsUri;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v3

    .line 953
    .local v3, "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v8, :cond_b

    .line 954
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v4

    move-object v9, v13

    move-wide v10, v1

    move-object v12, v3

    move-object v5, v13

    .end local v13    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local v5, "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object v13, v4

    move-object v4, v14

    .end local v14    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .local v4, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    move/from16 v14, p2

    invoke-interface/range {v8 .. v14}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    goto :goto_4

    .line 953
    .end local v4    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .end local v5    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v13    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v14    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_b
    move-object v5, v13

    move-object v4, v14

    .line 956
    .end local v13    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v14    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .restart local v4    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .restart local v5    # "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :goto_4
    return-void
.end method

.method onNewWatcherInformation(Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 12
    .param p1, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p2, "phoneId"    # I

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewWatcherInformation: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-nez v0, :cond_0

    .line 962
    const-string v0, "onNewWatcherInformation: mUriGenerator is null"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 963
    return-void

    .line 966
    :cond_0
    const/4 v0, 0x0

    .line 967
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 969
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v1

    .line 972
    .local v1, "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    if-eqz v1, :cond_2

    .line 973
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 976
    .end local v1    # "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 977
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    move-object v3, v0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V

    .line 979
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 980
    .local v1, "telUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v9

    .line 981
    .local v9, "features":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 982
    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 981
    invoke-static {p1, v1, v9, v10, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/ims/util/ImsUri;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v11

    .line 984
    .local v11, "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_3

    .line 985
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v7

    move-object v3, v0

    move-wide v4, v9

    move-object v6, v11

    move v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    .line 989
    .end local v1    # "telUri":Lcom/sec/ims/util/ImsUri;
    .end local v9    # "features":J
    .end local v11    # "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    :cond_3
    return-void
.end method

.method onPeriodicPublish(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1473
    const-string v0, "PresenceModule"

    const-string v1, "onPeriodicPublish:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 1475
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    .line 1476
    return-void
.end method

.method onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .locals 10
    .param p1, "response"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    .param p2, "phoneId"    # I

    .line 992
    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    .line 993
    const-string v1, "onPublishComplete: response is null"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 994
    return-void

    .line 996
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishComplete: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publish - completed, response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 998
    const v1, 0x12090003

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1002
    .local v1, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1004
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 1005
    const/4 v2, 0x0

    .line 1006
    .local v2, "isRefreshPublish":Z
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1007
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 1008
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1009
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 1013
    instance-of v5, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v5, :cond_1

    .line 1014
    move-object v5, p1

    check-cast v5, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1015
    .local v5, "publishResponse":Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEtag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " getExpiresTimer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1015
    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1019
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishETag(Ljava/lang/String;JI)V

    .line 1020
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v2

    .line 1021
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPublishComplete(), isRefresh : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1025
    .end local v5    # "publishResponse":Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
    :cond_1
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1026
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1027
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1028
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1033
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_2

    .line 1034
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1036
    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1038
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1039
    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1048
    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_4

    .line 1049
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v5

    invoke-interface {v4, v5, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 1051
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1052
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1053
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;>;"
    const-string v5, "onPublishComplete, pending subscription"

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1054
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1055
    const/16 v5, 0x8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1057
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->clearPendingSubscription()V

    .line 1060
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;>;"
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_8

    .line 1062
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPublishComplete,start PublishTimer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1063
    invoke-virtual {v5, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1064
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    .line 1066
    .end local v2    # "isRefreshPublish":Z
    :cond_8
    goto :goto_2

    .line 1067
    :cond_9
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_a

    .line 1068
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1071
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_b

    .line 1072
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    .line 1075
    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1076
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1077
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "RCPC"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1079
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "RCPF"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1081
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "overwrite_mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string v3, "DRCS"

    invoke-static {p2, v2, v3, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1083
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 295
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 296
    const-string v0, "PresenceModule"

    const-string v1, "onRegistered:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 298
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 200
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onServiceSwitched:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    .line 202
    return-void
.end method

.method public onSimChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 401
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onSimChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->clearPresenceInfo(I)V

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 406
    return-void
.end method

.method onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 9
    .param p1, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "response"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 1510
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1511
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeComplete: Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1513
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1515
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1516
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-nez v1, :cond_0

    .line 1517
    const-string/jumbo v3, "onSubscribeComplete: mnoStrategy is null."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1518
    return-void

    .line 1521
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1522
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1523
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v3

    .line 1526
    .local v3, "expires":I
    if-lez v3, :cond_3

    .line 1527
    invoke-virtual {p1, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1528
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v5, v6, :cond_2

    .line 1529
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v5, :cond_2

    .line 1530
    const-string/jumbo v5, "onSubscribeComplete: recover polling"

    invoke-static {v2, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1531
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-interface {v5, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1534
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_4

    .line 1535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSubscribeComplete: subscription will be terminated after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1536
    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {p0, v2, v5, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1542
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1546
    .end local v3    # "expires":I
    :cond_4
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1547
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1548
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    const/16 v5, 0x193

    if-eq v3, v5, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    const/16 v5, 0x194

    if-ne v3, v5, :cond_6

    :cond_5
    goto :goto_1

    .line 1551
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "RCSF"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1549
    :cond_7
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "RCSC"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "overwrite_mode"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string v4, "DRCS"

    invoke-static {v0, v3, v4, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1556
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->cleanExpiredSubscription()V

    .line 1557
    return-void
.end method

.method onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)V
    .locals 3
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p2, "phoneId"    # I

    .line 1678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    monitor-enter v0

    .line 1679
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Ljava/util/List;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)V

    .line 1680
    monitor-exit v0

    .line 1681
    return-void

    .line 1680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useAnonymousFetch()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V

    .line 1507
    return-void
.end method

.method onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 18
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 1684
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1686
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 1687
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    .line 1688
    .local v11, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v7

    .line 1689
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v10

    .line 1688
    move-object v4, v2

    invoke-interface/range {v3 .. v10}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    .line 1690
    .end local v11    # "profile":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_0

    .line 1691
    :cond_0
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/sec/ims/util/ImsUri;

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 1692
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v17

    .line 1691
    invoke-interface/range {v12 .. v17}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    .line 1694
    :goto_0
    return-void
.end method

.method onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 9
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 1847
    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    .line 1848
    const-string/jumbo v1, "onSubscriptionTerminated: subscription is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-void

    .line 1851
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1852
    .local v1, "dropUris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getDropUris()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1853
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscriptionTerminated: update capabilities for dropped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uris"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_1

    .line 1856
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v4, v0

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v8

    move-object v3, v1

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    .line 1859
    :cond_1
    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 19
    .param p1, "info"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p2, "phoneId"    # I

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    .line 737
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isRunning()Z

    move-result v4

    const-string v5, "PresenceModule"

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 745
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "publish: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 747
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 748
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 750
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 751
    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v7, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 752
    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v9

    .line 750
    invoke-interface {v3, v7, v8, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v7

    .line 753
    .local v7, "throttleRetry":J
    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    .line 754
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4, v7, v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 755
    return-void

    .line 758
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkIfValidEtag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "valid etag, setting to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    const-string v4, "not valid etag"

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 763
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    .line 766
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v1}, Lcom/sec/ims/presence/PresenceInfo;->update(Lcom/sec/ims/presence/PresenceInfo;)V

    .line 768
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 769
    .local v4, "current":Ljava/util/Date;
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v11, v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v13

    cmp-long v11, v13, v9

    if-eqz v11, :cond_3

    .line 770
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v13, v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 771
    invoke-virtual {v11, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long/2addr v13, v15

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 772
    .local v13, "remainBadEventTimer":J
    cmp-long v11, v13, v9

    if-lez v11, :cond_3

    .line 773
    const-string/jumbo v11, "publish: restart BadEventTimer"

    invoke-static {v5, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 774
    invoke-direct {v0, v13, v14, v12, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 778
    .end local v13    # "remainBadEventTimer":J
    :cond_3
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getTdelayPublish()J

    move-result-wide v13

    invoke-interface {v3, v13, v14}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isTdelay(J)J

    move-result-wide v13

    .line 779
    .local v13, "retry":J
    cmp-long v9, v13, v9

    if-eqz v9, :cond_4

    .line 780
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "publish: retry after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v2, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 781
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v13, v14}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 782
    return-void

    .line 785
    :cond_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v5}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 786
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v5, v6}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 787
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-wide v15, v13

    .end local v13    # "retry":J
    .local v15, "retry":J
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 788
    invoke-virtual {v1, v6}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    goto :goto_1

    .line 790
    .end local v15    # "retry":J
    .restart local v13    # "retry":J
    :cond_5
    move-wide v15, v13

    .end local v13    # "retry":J
    .restart local v15    # "retry":J
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 792
    invoke-virtual {v1, v6}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 795
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setServiceVersion()V

    .line 798
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v1, v6, v2}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V

    .line 800
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v5, :cond_6

    .line 801
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 803
    :cond_6
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "Publish - sent"

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 804
    const v5, 0x12090001

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",PUB-SENT"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 805
    return-void

    .line 738
    .end local v4    # "current":Ljava/util/Date;
    .end local v7    # "throttleRetry":J
    .end local v15    # "retry":J
    :cond_7
    :goto_2
    const-string/jumbo v4, "publish: not ready to publish"

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_8

    .line 740
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 742
    :cond_8
    return-void
.end method

.method public readConfig(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1698
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1699
    const-string/jumbo v0, "readConfig: not ready"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1700
    return-void

    .line 1703
    :cond_0
    const-string/jumbo v0, "readConfig"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->load()V

    .line 1706
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1707
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRetryPublishTimer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 1708
    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 499
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 500
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerService: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1764
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v0

    .line 1765
    .local v0, "tuple":Lcom/sec/ims/presence/ServiceTuple;
    if-eqz v0, :cond_1

    .line 1766
    const-string v1, "PresenceModule"

    const-string/jumbo v2, "registerService: valid service tuple"

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1767
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-nez v1, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1770
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter v1

    .line 1771
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2, v0}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1772
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1774
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1772
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1777
    :cond_1
    const-string v1, "PresenceModule"

    const-string v2, "advertise: not a valid service tuple, do nothing.."

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1779
    :goto_0
    return-void
.end method

.method public removePresenceCache(Ljava/util/List;I)V
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

    .line 1878
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->removePresenceCache(Ljava/util/List;I)V

    .line 1879
    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I
    .locals 5
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "I)I"
        }
    .end annotation

    .line 504
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: list requestType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 506
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 507
    const-string v0, "PresenceModule"

    const-string/jumbo v2, "requestCapabilityExchange: PUBLISH is not completed. bail."

    invoke-static {v0, p3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    return v1

    .line 510
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    return v1

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 517
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 518
    .local v2, "requested":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 519
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 521
    .end local v2    # "requested":I
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 523
    .restart local v2    # "requested":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 525
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriToSubscribe:Ljava/util/List;

    invoke-virtual {v3, v4, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->loadPresenceStorage(Ljava/util/List;I)V

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    .line 528
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return v2

    .line 526
    .end local v2    # "requested":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "callback"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p4, "isAlwaysForce"    # Z
    .param p5, "myFeatures"    # J
    .param p7, "phoneId"    # I
    .param p8, "extFeature"    # Ljava/lang/String;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p7, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilityExchange: requestType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAlwaysForce: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p7, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    invoke-virtual {p0, p7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const-string/jumbo v0, "requestCapabilityExchange: PUBLISH is not completed. bail."

    invoke-static {v1, p7, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 545
    .local v0, "isKoreaRcsOperator":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    const/4 v0, 0x1

    .line 550
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 551
    invoke-virtual {v2, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 554
    const-string/jumbo v2, "requestCapabilityExchange: adding uri to RCS list"

    invoke-static {v1, p7, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_2
    const/4 v1, 0x5

    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    invoke-direct {v2, p1, p3, p4, p7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 563
    :goto_0
    if-eqz p2, :cond_3

    .line 565
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    .line 567
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public reset(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1869
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1870
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 1871
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 1872
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 1873
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 1874
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 16
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 420
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    return-void

    .line 424
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnCapabilities: features "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PresenceModule"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OwnCapabilities - set, features = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 426
    const/high16 v4, 0x12090000

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",SET:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 428
    new-instance v4, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v4, v3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 430
    .local v4, "newPresenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 431
    .local v6, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v6, :cond_1

    .line 432
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->changeServiceDescription()V

    .line 435
    :cond_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 437
    .local v7, "presInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    invoke-static/range {p1 .. p2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTupleList(J)Ljava/util/List;

    move-result-object v8

    .line 438
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/ims/presence/ServiceTuple;

    .line 439
    .local v10, "s":Lcom/sec/ims/presence/ServiceTuple;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setOwnCapabilities: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v3, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object v11, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v12, v10, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v11

    .line 443
    .local v11, "tuple":Lcom/sec/ims/presence/ServiceTuple;
    if-eqz v11, :cond_2

    .line 444
    iget-object v12, v11, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    iput-object v12, v10, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_2

    .line 446
    :cond_2
    iget-object v12, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v12}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 447
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v13, v10, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v12, v13, v14, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadRandomTupleId(JI)Ljava/lang/String;

    move-result-object v12

    .line 448
    .local v12, "savedId":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 449
    iput-object v12, v10, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_1

    .line 451
    :cond_3
    const/16 v13, 0xa

    const/4 v14, 0x5

    invoke-static {v14, v13}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 452
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v14, v10, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    iget-object v1, v10, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v1, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveRandomTupleId(JLjava/lang/String;I)V

    .line 454
    .end local v12    # "savedId":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 455
    :cond_4
    const/16 v13, 0xa

    const/4 v14, 0x5

    invoke-static {v14, v13}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 458
    .end local v10    # "s":Lcom/sec/ims/presence/ServiceTuple;
    .end local v11    # "tuple":Lcom/sec/ims/presence/ServiceTuple;
    :goto_2
    move-wide/from16 v1, p1

    goto :goto_0

    .line 460
    :cond_5
    invoke-virtual {v4, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 461
    invoke-virtual {v4, v8}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 462
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 463
    iput-object v4, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 465
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->buildPresenceInfoForThirdParty(I)V

    .line 467
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v1, :cond_6

    .line 468
    return-void

    .line 471
    :cond_6
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 473
    .local v1, "impu":Lcom/sec/ims/util/ImsUri;
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setOwnCapabilities: uri"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v9}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 477
    const-string/jumbo v2, "setOwnCapabilities: paralysed"

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 478
    return-void

    .line 481
    :cond_7
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_9

    .line 482
    iget-boolean v2, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    if-nez v2, :cond_8

    .line 483
    const-string/jumbo v2, "setOwnCapabilities: retry timer is running"

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    return-void

    .line 486
    :cond_8
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object v9, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPublishErrRetryTimer()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize PublishErrRetry: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    :cond_9
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x1

    if-ne v2, v5, :cond_a

    .line 492
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v9, 0x1f4

    invoke-virtual {v0, v2, v9, v10}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 494
    :cond_a
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 496
    :goto_3
    return-void
.end method

.method public setParalysed(ZI)V
    .locals 2
    .param p1, "mode"    # Z
    .param p2, "phoneId"    # I

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParalysed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    .line 871
    return-void
.end method

.method public setRegiInfoUpdater(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "info"    # Z

    .line 1893
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    return-void
.end method

.method public start()V
    .locals 3

    .line 228
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 229
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 5

    .line 238
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 239
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "stop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 244
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v1, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 245
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 246
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 247
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 248
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 251
    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessage(Landroid/os/Message;)Z

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "phoneId":I
    :cond_1
    return-void
.end method

.method public subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V
    .locals 13
    .param p1, "request"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;
    .param p2, "isAnonymousFetch"    # Z

    .line 624
    iget v6, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    .line 625
    .local v6, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribe: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    return-void

    .line 632
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    const/4 v2, 0x1

    invoke-static {v0, v2, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    .line 633
    .local v0, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    if-nez v0, :cond_1

    .line 634
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 635
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUri(Lcom/sec/ims/util/ImsUri;)V

    .line 636
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    .line 637
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 638
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    move-object v7, v0

    goto :goto_2

    .line 640
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v11, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v11, v2

    .line 642
    .local v11, "isAvailFetch":Z
    :goto_1
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 643
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottleSubscribe()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long v9, v2, v8

    iget-boolean v12, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    .line 642
    move-object v8, v0

    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 645
    const-string/jumbo v2, "subscribe: single fetch has been already sent"

    invoke-static {v1, v6, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subscribe: throttled uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 647
    return-void

    .line 649
    :cond_4
    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 650
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 651
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    move-object v7, v0

    .line 654
    .end local v0    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .end local v11    # "isAvailFetch":Z
    .local v7, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :goto_2
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J

    move-result-wide v8

    .line 655
    .local v8, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_5

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: delayed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 658
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v8, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    return-void

    .line 662
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v0, v1, :cond_6

    .line 663
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addLazySubscription(Lcom/sec/ims/util/ImsUri;)V

    .line 666
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v1

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    .line 667
    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 666
    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 668
    .local v10, "uriToRequest":Lcom/sec/ims/util/ImsUri;
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    move-object v1, v10

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    .line 669
    return-void
.end method

.method public unpublish(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .line 809
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "unpublish: "

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 811
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 812
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 813
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(ILjava/lang/Object;)V

    .line 815
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 816
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 818
    .local v2, "moduleInfo":Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->unpublish(I)V

    .line 822
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    .line 823
    const-string/jumbo v3, "unpublish: remain etag for Kor"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    iget-wide v6, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    .line 825
    iget-wide v6, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iput-wide v6, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_1

    .line 827
    :cond_1
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_4

    .line 828
    if-eqz v1, :cond_5

    .line 829
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 830
    .local v3, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 831
    .local v6, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {v3, v6, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 832
    const-string/jumbo v7, "unpublish: PDN already disconnected"

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 833
    iget-wide v7, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long v0, v7, v4

    if-lez v0, :cond_3

    .line 834
    iget-wide v7, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iput-wide v7, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 839
    .end local v3    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v6    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_3
    :goto_0
    goto :goto_1

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 844
    :cond_5
    :goto_1
    iget-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v0, :cond_6

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "UnPublish"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 846
    const v0, 0x12090002

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",UNPUB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 848
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 850
    iget-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_7

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 853
    :cond_7
    return-void
.end method
