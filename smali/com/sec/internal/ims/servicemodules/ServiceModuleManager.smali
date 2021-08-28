.class public Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
.super Landroid/os/Handler;
.source "ServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;
    }
.end annotation


# static fields
.field private static final EVT_CONFIG_CHANGED:I = 0x2

.field private static final EVT_IMS_SWITCH_UPDATED:I = 0x1

.field private static final EVT_SIM_READY:I = 0x3

.field private static final IMS_SETTINGS_UPDATED:Ljava/lang/String; = "android.intent.action.IMS_SETTINGS_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceModuleManager"

.field private static OBSERVE_DM_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static OBSERVE_PREFIX_DM_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoConfigCompletedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private final mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

.field private mConfigObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

.field mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

.field private final mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

.field mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

.field private mLastImsServiceSwitches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

.field mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

.field private mPendingCapabilitiesUpdate:[Z

.field mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSemBinder:Landroid/os/Binder;

.field private mServiceModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation
.end field

.field mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

.field private mStarted:Z

.field mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

.field mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

.field mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    .line 127
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "EAB_SETTING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "LVC_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "VOLTE_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_POLL_INTERVAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "SRC_THROTTLE_PUBLISH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "SUBSCRIBE_MAX_ENTRY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "AVAIL_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "POLL_LIST_SUB_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_TIMER_EXTEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "PUBLISH_ERR_RETRY_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    const-string v1, "CAP_DISCOVERY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/LVC_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_POLL_INTERVAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/SRC_THROTTLE_PUBLISH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/SUBSCRIBE_MAX_ENTRY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/AVAIL_CACHE_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_TIMER_EXTEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/PUBLISH_ERR_RETRY_TIMER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    const-string v1, "omadm/./3GPP_IMS/CAP_DISCOVERY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p5, "regMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p6, "handlerFactory"    # Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;",
            ")V"
        }
    .end annotation

    .line 206
    .local p4, "simManagers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 179
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    .line 186
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    .line 187
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    .line 188
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    .line 189
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    .line 208
    const-string v0, "ServiceModuleManager"

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 210
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    .line 211
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 212
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 213
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    .line 214
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createRcsServiceModulesAndStart(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 17
    .param p1, "regMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "phoneId"    # I

    .line 302
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v0, "vs"

    const-string/jumbo v4, "options"

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 303
    .local v5, "rcsServiceModules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;>;"
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    :try_start_0
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "rcs"

    invoke-static {v6, v7, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v6, v7

    .line 306
    .local v6, "isRcsSwitchEnabled":Z
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 307
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v6, :cond_f

    .line 308
    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v9, "presence"

    if-nez v8, :cond_1

    :try_start_1
    invoke-virtual {v2, v9}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 309
    :cond_1
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    if-nez v8, :cond_2

    .line 310
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 311
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    if-nez v8, :cond_3

    .line 316
    new-instance v8, Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    .line 317
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    const-string v8, "gls"

    invoke-virtual {v2, v8}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_5

    .line 322
    :cond_4
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    if-nez v8, :cond_5

    .line 323
    new-instance v8, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10, v11}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 324
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_5
    const-string v8, "euc"

    invoke-virtual {v2, v8}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 330
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    if-nez v8, :cond_6

    .line 331
    new-instance v8, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getEucHandler()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 332
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_6
    const-string v8, "is"

    invoke-virtual {v2, v8}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 338
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    if-nez v8, :cond_7

    .line 339
    new-instance v8, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getIshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 340
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_7
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 346
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    if-nez v8, :cond_8

    .line 347
    new-instance v8, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)V

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 348
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {v10, v11}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_8
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    if-nez v0, :cond_9

    .line 355
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    .line 356
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_9
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-nez v0, :cond_a

    .line 361
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v10}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 362
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_a
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-eqz v0, :cond_b

    .line 367
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move-object v10, v0

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/OptionsModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 369
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->setServiceModule(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 372
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->setServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)V

    .line 375
    :cond_b
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_c

    .line 376
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    new-instance v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {v4, v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_c
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    if-nez v0, :cond_d

    .line 381
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    .line 382
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 388
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v8

    if-nez v8, :cond_e

    .line 389
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_e
    goto :goto_1

    .line 394
    .end local v6    # "isRcsSwitchEnabled":Z
    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_f
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 395
    nop

    .line 397
    invoke-direct {v1, v5, v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->startRcsServiceModules(Ljava/util/List;I)V

    .line 398
    return-void

    .line 394
    :catchall_0
    move-exception v0

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 395
    throw v0
.end method

.method private getExtendedServices(I)Ljava/util/List;
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    nop

    .line 1088
    const-string/jumbo v0, "services"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "servicesFromGs":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1091
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1092
    .local v5, "service":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v5    # "service":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1095
    :cond_0
    return-object v1
.end method

.method private isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 10
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    .param p2, "phoneId"    # I
    .param p3, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1099
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1100
    .local v4, "service":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v5

    .line 1101
    .local v5, "isDmOn":Z
    const-string v7, "mmtel"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p3, :cond_0

    .line 1102
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_0

    .line 1103
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 1105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1103
    const-string v9, "omadm/./3GPP_IMS/VWF_ENABLED"

    invoke-static {v7, v9, v8, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    or-int/2addr v5, v7

    .line 1107
    :cond_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_1

    if-eqz v5, :cond_1

    .line 1108
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStartRequired: start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return v6

    .line 1099
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "isDmOn":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1113
    :cond_2
    return v2
.end method

.method private needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z
    .locals 3
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 512
    .local p2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 514
    .local v0, "dst":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not matched. Not notified to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceModuleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p2, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private onSimReady(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1005
    const-string v0, "ServiceModuleManager"

    const-string v1, "ServiceModuleManager : onSimReady"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1007
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimReady(I)V

    .line 1010
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 1011
    :cond_1
    return-void
.end method

.method private declared-synchronized startRcsServiceModules(Ljava/util/List;I)V
    .locals 4
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;I)V"
        }
    .end annotation

    .local p1, "rcsServiceModules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;>;"
    monitor-enter p0

    .line 431
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 432
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-direct {p0, v1, p2, v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 435
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    :cond_0
    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    check-cast v2, [Ljava/lang/String;

    .line 437
    invoke-static {v3, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 436
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 430
    .end local p1    # "rcsServiceModules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;>;"
    .end local p2    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cleanUpModules()V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1043
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1049
    nop

    .line 1050
    return-void

    .line 1048
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1049
    throw v0
.end method

.method public createIMSServiceModules()V
    .locals 13

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 253
    :try_start_0
    const-string v0, "ServiceModuleManager"

    const-string v1, "createIMSServiceModules"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceModule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    .line 259
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSmsHandler()Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 260
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v2, "smsip"

    new-instance v3, Lcom/sec/internal/ims/servicemodules/sms/SmsService;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 266
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v9

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v10

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    .line 267
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object v11

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-result-object v12

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 268
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 270
    .local v1, "volteService":Lcom/sec/internal/ims/servicemodules/volte2/VolteService;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v3, "mmtel"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;-><init>(Landroid/os/Looper;Lcom/sec/ims/volte2/IVolteService;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    .line 274
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v3, "ImsStatus"

    new-instance v4, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mHandlerFactory:Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    .line 279
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getRawSipHandler()Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 280
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    .line 282
    .local v2, "openApiService":Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string v4, "OpenApi"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 286
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v4, "ss"

    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/UtService;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtService;-><init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    const-string/jumbo v4, "options"

    new-instance v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    .line 293
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 294
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 297
    .end local v0    # "thread":Landroid/os/HandlerThread;
    .end local v1    # "volteService":Lcom/sec/internal/ims/servicemodules/volte2/VolteService;
    .end local v2    # "openApiService":Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    nop

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    throw v0
.end method

.method public dump()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 828
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->dump()V

    .line 831
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 832
    :cond_1
    return-void
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "aux"    # Ljava/lang/String;

    monitor-enter p0

    .line 480
    move-object v0, p1

    .line 482
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 483
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 485
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    :cond_0
    const-string v1, "ServiceModuleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBinder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mBinders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 479
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local p1    # "service":Ljava/lang/String;
    .end local p2    # "aux":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-object v0
.end method

.method public getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    return-object v0
.end method

.method public getEucModule()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mEucModule:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    return-object v0
.end method

.method public getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    return-object v0
.end method

.method public getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-object v0
.end method

.method public getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImageShareModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    return-object v0
.end method

.method public getImsStatusServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsStatusServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    return-object v0
.end method

.method public getOpenApiServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOpenApiServiceModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    return-object v0
.end method

.method public getOptionsModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    return-object v0
.end method

.method public getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object v0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSemBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 739
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    return-object v1

    .line 742
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 743
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    return-object v0
.end method

.method public getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSmsServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    return-object v0
.end method

.method public getTapiServiceManager()Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mTapiServiceManager:Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    return-object v0
.end method

.method public getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    return-object v0
.end method

.method public getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVideoShareModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    return-object v0
.end method

.method public getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 723
    const-string v0, "ServiceModuleManager"

    const-string v1, "handleIntent:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 726
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleIntent(Landroid/content/Intent;)V

    .line 729
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 730
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    const-string v0, "ON SIM READY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->onSimReady(I)V

    .line 1030
    goto :goto_0

    .line 1024
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->notifyConfigured(ZI)V

    .line 1025
    goto :goto_0

    .line 1019
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1020
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->onImsSwitchUpdated(I)V

    .line 1021
    nop

    .line 1034
    .end local v0    # "phoneId":I
    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ServiceModuleManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 219
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    .line 221
    .local v4, "phoneId":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v3, v6}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->sendMessage(Landroid/os/Message;)Z

    .line 222
    const-string v3, "SIM is ready subId:"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    .end local v4    # "phoneId":I
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 225
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_DM_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "content://com.samsung.rcs.dmconfigurationprovider/"

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 232
    .local v4, "dm":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    .end local v4    # "dm":Ljava/lang/String;
    goto :goto_1

    .line 236
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->OBSERVE_PREFIX_DM_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "prefix_dm":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    .end local v4    # "prefix_dm":Ljava/lang/String;
    goto :goto_2

    .line 241
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 242
    const-string v1, "Initializting ServiceModules."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->createIMSServiceModules()V

    .line 244
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->startIMSServiceModules()V

    goto :goto_3

    .line 246
    :cond_4
    const-string v1, "no phone skip Initializting ServiceModules."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_3
    return-void
.end method

.method public isLooperExist()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAutoConfigDone(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 842
    const-string v0, "ServiceModuleManager"

    const-string v1, "notifyAutoConfigDone"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    return-void
.end method

.method public notifyCallStateChanged(Ljava/util/List;I)V
    .locals 2
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;I)V"
        }
    .end annotation

    .line 835
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 836
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onCallStateChanged(ILjava/util/List;)V

    .line 837
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 838
    :cond_0
    return-void
.end method

.method public notifyConfigChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "dmUri"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConfigChanged: dmUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 659
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onImsConifgChanged(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    nop

    .line 666
    return-void

    .line 664
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    throw v0
.end method

.method public notifyConfigured(ZI)V
    .locals 4
    .param p1, "checkAutoConfig"    # Z
    .param p2, "phoneId"    # I

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConfigured: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    :cond_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 679
    .local v2, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-ne v2, v3, :cond_3

    .line 680
    goto :goto_0

    .line 682
    :cond_3
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v2    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 686
    nop

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v0, :cond_6

    .line 689
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    const-string v0, "notifyConfigured: CDM is running"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onConfigured(I)V

    goto :goto_1

    .line 693
    :cond_5
    const-string v0, "notifyConfigured: CDM is not running, trigger tryRegister"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v1}, Lcom/sec/ims/options/Capabilities;-><init>()V

    invoke-interface {v0, p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V

    .line 697
    :cond_6
    :goto_1
    return-void

    .line 685
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 686
    throw v0
.end method

.method public notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, "isNotified":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 610
    .local v2, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    const/4 v0, 0x1

    .line 614
    .end local v2    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    nop

    .line 619
    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    .line 622
    :cond_2
    return-void

    .line 616
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 617
    throw v1
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V
    .locals 10
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "errorCode"    # I

    .line 521
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 522
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 523
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsRegistration: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceModuleManager"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 526
    new-instance v2, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v2, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration;)V

    .line 527
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v4

    .line 528
    .local v4, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    if-eqz v4, :cond_0

    .line 529
    invoke-interface {v4, p2, p3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V

    .line 536
    :cond_0
    const/4 v5, 0x0

    if-nez p2, :cond_4

    .line 537
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 539
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 540
    .local v6, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 541
    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {v6, v2, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .end local v6    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 547
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 548
    goto/16 :goto_4

    .line 547
    :catchall_0
    move-exception v3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 548
    throw v3

    .line 550
    :cond_4
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v6

    .line 552
    .local v6, "deregisteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 553
    .local v8, "service":Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 554
    .end local v8    # "service":Ljava/lang/String;
    goto :goto_1

    .line 557
    :cond_5
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 558
    const-string v7, "RCS disabled : remove rcs services from deregi list"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    .line 560
    .local v9, "service":Ljava/lang/String;
    invoke-interface {v6, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 559
    .end local v9    # "service":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 564
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 566
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 567
    .local v7, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v8

    if-nez v8, :cond_7

    .line 568
    goto :goto_3

    .line 571
    :cond_7
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 572
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 573
    goto :goto_3

    .line 575
    :cond_8
    invoke-direct {p0, v7, v6}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 576
    invoke-virtual {v7, v2, p3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    .end local v7    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_9
    goto :goto_3

    .line 580
    :cond_a
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    nop

    .line 584
    .end local v6    # "deregisteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/ims/servicemodules/-$$Lambda$ByLF0vigF4DGnwqQtI1aS3uyLeQ;->INSTANCE:Lcom/sec/internal/ims/servicemodules/-$$Lambda$ByLF0vigF4DGnwqQtI1aS3uyLeQ;

    .line 585
    invoke-virtual {v3, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/ims/servicemodules/-$$Lambda$C16e9kxCNBgNe18grmjdCfeP1H8;->INSTANCE:Lcom/sec/internal/ims/servicemodules/-$$Lambda$C16e9kxCNBgNe18grmjdCfeP1H8;

    .line 586
    invoke-virtual {v3, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 587
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 588
    .local v3, "isDevMnoAus":Z
    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 589
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v5

    .line 591
    .local v5, "vsm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRunning()Z

    move-result v6

    if-nez v6, :cond_c

    .line 592
    if-eqz p2, :cond_b

    .line 593
    invoke-interface {v5, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_5

    .line 595
    :cond_b
    invoke-interface {v5, v2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 600
    .end local v5    # "vsm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    :cond_c
    :goto_5
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    .line 601
    return-void

    .line 580
    .end local v3    # "isDevMnoAus":Z
    .restart local v6    # "deregisteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    throw v3
.end method

.method public notifyImsSwitchUpdateToApp()V
    .locals 2

    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.IMS_SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 863
    return-void
.end method

.method public notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 714
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    new-instance v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v2, p1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 717
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    .line 720
    return-void
.end method

.method public notifyOmadmVolteConfigDone(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 848
    const-string v0, "ServiceModuleManager"

    const-string v1, "notifyOmadmVolteConfigDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "content://com.samsung.rcs.dmconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 854
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->sendMessage(Landroid/os/Message;)Z

    .line 855
    return-void
.end method

.method public notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/ImsRegistration;",
            ")V"
        }
    .end annotation

    .line 626
    .local p1, "deregServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 629
    .local v0, "isNotified":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 630
    .local v1, "deregRcsService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 631
    .local v5, "service":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 632
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v5    # "service":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 639
    .local v3, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    const/4 v0, 0x1

    .line 643
    .end local v3    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_2
    goto :goto_1

    .line 645
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    nop

    .line 648
    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    .line 651
    :cond_4
    return-void

    .line 645
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    throw v2
.end method

.method public notifyReRegistering(ILjava/util/Set;)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 496
    .local p2, "newServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 498
    :try_start_0
    const-string v0, "ServiceModuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify Ims Re-registration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 500
    .local v1, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onReRegistering(ILjava/util/Set;)V

    .line 503
    .end local v1    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_0
    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    nop

    .line 509
    return-void

    .line 507
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw v0
.end method

.method public notifySimChange(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 701
    const-string v0, "ServiceModuleManager"

    const-string v1, "notifySimChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 704
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 705
    .local v2, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCapabilityDiscoveryModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v3, :cond_1

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    :cond_0
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    .line 708
    .end local v2    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_1
    goto :goto_0

    .line 709
    :cond_2
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 22
    .param p1, "phoneId"    # I

    .line 867
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "ServiceModuleManager"

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 868
    .local v3, "snapShot":Landroid/content/ContentValues;
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 870
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsSwitchUpdated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 887
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcDeviceActivated()Z

    move-result v4

    .line 888
    .local v4, "isCmcActivated":Z
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 889
    .local v6, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v9

    if-nez v9, :cond_0

    .line 890
    goto :goto_0

    .line 893
    :cond_0
    const/4 v9, 0x1

    .line 894
    .local v9, "needStop":Z
    const/4 v10, 0x1

    .line 896
    .local v10, "needRemoveFeature":Z
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_1
    const-string v13, " module."

    if-ge v7, v12, :cond_9

    :try_start_1
    aget-object v14, v11, v7

    .line 897
    .local v14, "service":Ljava/lang/String;
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 898
    .local v15, "snapService":Ljava/lang/Integer;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-ne v8, v5, :cond_2

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 899
    invoke-static {v8, v14, v5, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readSwitch(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 900
    const/4 v9, 0x0

    .line 901
    const/4 v10, 0x0

    goto :goto_2

    .line 898
    :cond_1
    move-object/from16 v16, v5

    .line 904
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImsSwitchUpdated: CMC device: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v9, 0x0

    .line 908
    const/4 v5, 0x0

    move v10, v5

    .line 912
    :cond_3
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 913
    .local v8, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    move/from16 v17, v4

    .end local v4    # "isCmcActivated":Z
    .local v17, "isCmcActivated":Z
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 914
    move/from16 v4, v17

    goto :goto_3

    .line 917
    :cond_4
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v18

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 918
    .local v4, "lastSwitch":Landroid/content/ContentValues;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 919
    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 920
    .local v5, "lastService":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    move-object/from16 v18, v4

    .end local v4    # "lastSwitch":Landroid/content/ContentValues;
    .local v18, "lastSwitch":Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "lastService":Ljava/lang/Integer;
    .local v20, "lastService":Ljava/lang/Integer;
    if-ne v4, v5, :cond_7

    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsSwitchUpdated: opposite sim slot enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v9, 0x0

    goto :goto_4

    .line 920
    .end local v18    # "lastSwitch":Landroid/content/ContentValues;
    .end local v20    # "lastService":Ljava/lang/Integer;
    .restart local v4    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v5    # "lastService":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    .end local v4    # "lastSwitch":Landroid/content/ContentValues;
    .end local v5    # "lastService":Ljava/lang/Integer;
    .restart local v18    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v20    # "lastService":Ljava/lang/Integer;
    goto :goto_4

    .line 918
    .end local v18    # "lastSwitch":Landroid/content/ContentValues;
    .end local v20    # "lastService":Ljava/lang/Integer;
    .restart local v4    # "lastSwitch":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v18, v4

    .line 925
    .end local v4    # "lastSwitch":Landroid/content/ContentValues;
    .end local v8    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_7
    :goto_4
    move/from16 v4, v17

    move-object/from16 v5, v19

    goto :goto_3

    .line 912
    .end local v17    # "isCmcActivated":Z
    .local v4, "isCmcActivated":Z
    :cond_8
    move/from16 v17, v4

    .line 896
    .end local v4    # "isCmcActivated":Z
    .end local v14    # "service":Ljava/lang/String;
    .end local v15    # "snapService":Ljava/lang/Integer;
    .restart local v17    # "isCmcActivated":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_1

    .line 928
    .end local v17    # "isCmcActivated":Z
    .restart local v4    # "isCmcActivated":Z
    :cond_9
    move/from16 v17, v4

    move-object/from16 v16, v5

    .end local v4    # "isCmcActivated":Z
    .restart local v17    # "isCmcActivated":Z
    if-eqz v10, :cond_a

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsSwitchUpdated: Configuring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 933
    :cond_a
    if-eqz v9, :cond_b

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsSwitchUpdated: Stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 937
    .end local v6    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    .end local v9    # "needStop":Z
    .end local v10    # "needRemoveFeature":Z
    :cond_b
    move-object/from16 v5, v16

    move/from16 v4, v17

    goto/16 :goto_0

    .line 939
    .end local v17    # "isCmcActivated":Z
    .restart local v4    # "isCmcActivated":Z
    :cond_c
    move/from16 v17, v4

    .end local v4    # "isCmcActivated":Z
    .restart local v17    # "isCmcActivated":Z
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 941
    .local v4, "registrationManager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v5, "modulesToStart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;>;"
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 944
    .local v8, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_f

    aget-object v12, v9, v11

    .line 945
    .local v12, "service":Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 946
    .local v13, "snapService":Ljava/lang/Integer;
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isStopped()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    if-eqz v13, :cond_e

    .line 947
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    .line 948
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v14, v12, v7, v2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Starting "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " module"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 951
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    .end local v12    # "service":Ljava/lang/String;
    .end local v13    # "snapService":Ljava/lang/Integer;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 954
    .end local v8    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_f
    goto :goto_5

    .line 957
    :cond_10
    const-string/jumbo v6, "rcs"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 958
    .local v6, "rcs":Ljava/lang/Integer;
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mAutoConfigCompletedList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_13

    :cond_11
    if-eqz v6, :cond_12

    .line 959
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    :cond_12
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v7

    if-eq v2, v7, :cond_14

    .line 960
    :cond_13
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 961
    .restart local v8    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 962
    .end local v8    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_7

    .line 965
    :cond_14
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 966
    .local v7, "lastSwitch":Landroid/content/ContentValues;
    if-eqz v7, :cond_1d

    .line 967
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 968
    .local v9, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 969
    .local v10, "switchedServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServicesRequiring()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_1a

    aget-object v14, v11, v13

    .line 970
    .restart local v14    # "service":Ljava/lang/String;
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 971
    .restart local v15    # "snapService":Ljava/lang/Integer;
    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 972
    .local v18, "lastService":Ljava/lang/Integer;
    if-eqz v15, :cond_18

    if-nez v18, :cond_15

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v8, 0x1

    goto :goto_c

    .line 976
    :cond_15
    move-object/from16 v19, v6

    .end local v6    # "rcs":Ljava/lang/Integer;
    .local v19, "rcs":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v20, v7

    const/4 v7, 0x1

    .end local v7    # "lastSwitch":Landroid/content/ContentValues;
    .local v20, "lastSwitch":Landroid/content/ContentValues;
    if-ne v6, v7, :cond_16

    move v6, v7

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v21, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    move v7, v8

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    :goto_b
    if-eq v6, v7, :cond_19

    .line 977
    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 972
    .end local v19    # "rcs":Ljava/lang/Integer;
    .end local v20    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v6    # "rcs":Ljava/lang/Integer;
    .restart local v7    # "lastSwitch":Landroid/content/ContentValues;
    :cond_18
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v8, 0x1

    .line 973
    .end local v6    # "rcs":Ljava/lang/Integer;
    .end local v7    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v19    # "rcs":Ljava/lang/Integer;
    .restart local v20    # "lastSwitch":Landroid/content/ContentValues;
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown switch value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    nop

    .line 969
    .end local v14    # "service":Ljava/lang/String;
    .end local v15    # "snapService":Ljava/lang/Integer;
    .end local v18    # "lastService":Ljava/lang/Integer;
    :cond_19
    :goto_d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_9

    .line 981
    .end local v19    # "rcs":Ljava/lang/Integer;
    .end local v20    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v6    # "rcs":Ljava/lang/Integer;
    .restart local v7    # "lastSwitch":Landroid/content/ContentValues;
    :cond_1a
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v8, 0x1

    .end local v6    # "rcs":Ljava/lang/Integer;
    .end local v7    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v19    # "rcs":Ljava/lang/Integer;
    .restart local v20    # "lastSwitch":Landroid/content/ContentValues;
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onImsSwitchUpdated: switchedServices "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v9, v2, v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    .line 985
    .end local v9    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    .end local v10    # "switchedServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b
    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    goto/16 :goto_8

    .line 967
    .end local v19    # "rcs":Ljava/lang/Integer;
    .end local v20    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v6    # "rcs":Ljava/lang/Integer;
    .restart local v7    # "lastSwitch":Landroid/content/ContentValues;
    :cond_1c
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "rcs":Ljava/lang/Integer;
    .end local v7    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v19    # "rcs":Ljava/lang/Integer;
    .restart local v20    # "lastSwitch":Landroid/content/ContentValues;
    goto :goto_e

    .line 966
    .end local v19    # "rcs":Ljava/lang/Integer;
    .end local v20    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v6    # "rcs":Ljava/lang/Integer;
    .restart local v7    # "lastSwitch":Landroid/content/ContentValues;
    :cond_1d
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 987
    .end local v6    # "rcs":Ljava/lang/Integer;
    .end local v7    # "lastSwitch":Landroid/content/ContentValues;
    .restart local v19    # "rcs":Ljava/lang/Integer;
    .restart local v20    # "lastSwitch":Landroid/content/ContentValues;
    :goto_e
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 991
    .local v6, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 993
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v8, :cond_1f

    aget-object v10, v7, v9

    .line 994
    .local v10, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v10}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v6, v11}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->needRegistrationNotification(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;Ljava/util/Set;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 995
    invoke-virtual {v6, v10}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    .end local v10    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1e
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 998
    .end local v6    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_1f
    goto :goto_f

    .line 1000
    .end local v4    # "registrationManager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v5    # "modulesToStart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;>;"
    .end local v17    # "isCmcActivated":Z
    .end local v19    # "rcs":Ljava/lang/Integer;
    .end local v20    # "lastSwitch":Landroid/content/ContentValues;
    :cond_20
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1001
    nop

    .line 1002
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1001
    throw v0
.end method

.method public serviceStartDeterminer(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/List;I)V
    .locals 4
    .param p1, "regMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;I)V"
        }
    .end annotation

    .line 402
    .local p2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 403
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-direct {p0, p1, v1, p3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->createRcsServiceModulesAndStart(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/ims/settings/ImsProfile;I)V

    .line 406
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 408
    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getExtendedServices(I)Ljava/util/List;

    move-result-object v0

    .line 409
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    const-string v1, "cms"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-static {p3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    const-string v2, "AIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    if-nez v1, :cond_2

    .line 414
    new-instance v1, Lcom/sec/internal/ims/cmstore/CmsModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/CmsModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    .line 415
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/CmsModule;->init()V

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mCmsModule:Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/CmsModule;->start()V

    .line 423
    :cond_2
    return-void
.end method

.method public declared-synchronized startIMSServiceModules()V
    .locals 7

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    :try_start_1
    const-string v0, "ServiceModuleManager"

    const-string/jumbo v1, "startServiceModules"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "ServiceModuleManager"

    const-string/jumbo v1, "startServiceModules() - already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    monitor-exit p0

    return-void

    .line 450
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 451
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 452
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 453
    .local v4, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-direct {p0, v4, v2, v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->isStartRequired(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 456
    .end local v4    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    :cond_1
    goto :goto_1

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mLastImsServiceSwitches:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    .line 458
    invoke-static {v5, v6, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 457
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    nop

    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "phoneId":I
    goto :goto_0

    .line 461
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    if-eqz v0, :cond_5

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 464
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    .line 465
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->updateCapabilities(I)V

    .line 466
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 471
    .end local v0    # "i":I
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 472
    nop

    .line 473
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mChangingServiceModulesStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 440
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCapabilities(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 1054
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mStarted:Z

    const-string v1, "ServiceModuleManager"

    if-nez v0, :cond_1

    .line 1055
    const-string v0, "Can\'t update capabilities before Service module started!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    if-nez v0, :cond_0

    .line 1057
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mPendingCapabilitiesUpdate:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1061
    return-void

    .line 1064
    :cond_1
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1066
    .local v0, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mServiceModules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 1067
    .local v3, "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->getMask()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 1068
    .end local v3    # "module":Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
    goto :goto_0

    .line 1070
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCapabilities to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->updateCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 1072
    return-void
.end method
