.class public Lcom/sec/internal/google/GoogleImsService;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "GoogleImsService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IGoogleImsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;
    }
.end annotation


# static fields
.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims6"

.field private static final LOG_TAG:Ljava/lang/String; = "GoogleImsService"

.field static mInstance:Lcom/sec/internal/google/GoogleImsService;

.field static mMultEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsMultiEndPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field static mServiceIdRef:I

.field static mServiceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field static mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

.field static mSmsListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field private mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

.field private mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

.field mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field mContext:Landroid/content/Context;

.field private mImsConferenceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mImsEcbmList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsEcbmImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

.field private mIsInitialMerge:Z

.field mOwnUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneCount:I

.field mRegistrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/IImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field mSecMmtelListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/ISecImsMmTelEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

.field mServiceUrn:Ljava/lang/String;

.field mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field mUtList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsUt;",
            ">;"
        }
    .end annotation
.end field

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 96
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    .line 98
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 99
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    .line 100
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/google/ImsSmsImpl;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smm"    # Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 171
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 115
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    .line 118
    new-instance v2, Lcom/sec/internal/google/ImsNotifier;

    invoke-direct {v2, p0}, Lcom/sec/internal/google/ImsNotifier;-><init>(Lcom/sec/internal/google/GoogleImsService;)V

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    .line 121
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    .line 122
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 172
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 174
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 175
    const-string v0, "ims6"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 176
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    .line 180
    new-array v0, v0, [Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    new-instance v3, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    aput-object v3, v2, v0

    .line 183
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/ImsNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/GoogleImsService;

    .line 91
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    return-object v0
.end method

.method private extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1215
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$j4oR8wOS3QH8MgHgpOwnrA0XLGA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$GyhyR-v54YAwXDpQD-tEf5Wlrh0;

    .line 1220
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$GoogleImsService$xMi-4NpfdpNYkU0AZXK7IS7B9uw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 1219
    return-object v0

    .line 1216
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    return-object v0
.end method

.method private getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3
    .param p1, "phoneId"    # I

    .line 690
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterfaceForPhoneId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsEcbmImpl;

    return-object v0

    .line 694
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsEcbmImpl;

    invoke-direct {v0}, Lcom/sec/internal/google/ImsEcbmImpl;-><init>()V

    .line 695
    .local v0, "ecbm":Lcom/sec/internal/google/ImsEcbmImpl;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-object v0
.end method

.method private getIncreasedServiceId()I
    .locals 2

    .line 208
    sget v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 209
    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 212
    :cond_0
    sget v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)Lcom/sec/internal/google/GoogleImsService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smm"    # Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    const-class v0, Lcom/sec/internal/google/GoogleImsService;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/google/GoogleImsService;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 192
    :cond_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 188
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "smm":Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRegistrationTech(I)I
    .locals 2
    .param p0, "networkType"    # I

    .line 196
    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 199
    return v1

    .line 200
    :cond_1
    const/16 v0, 0x12

    if-ne p0, v0, :cond_2

    .line 201
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 197
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Z
    .locals 1
    .param p0, "impu"    # Lcom/sec/ims/util/NameAddr;

    .line 1219
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$2(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .locals 2
    .param p0, "impu"    # Lcom/sec/ims/util/NameAddr;

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$3(I)[Landroid/net/Uri;
    .locals 1
    .param p0, "x$0"    # I

    .line 1220
    new-array v0, p0, [Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic lambda$open$0(IILjava/util/Map$Entry;)Z
    .locals 1
    .param p0, "serviceClass"    # I
    .param p1, "phoneId"    # I
    .param p2, "value"    # Ljava/util/Map$Entry;

    .line 257
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 830
    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSms(IIII)V

    .line 831
    return-void

    .line 828
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public acknowledgeSmsReport(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsReport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 839
    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsReport(IIII)V

    .line 840
    return-void

    .line 837
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "msgRef"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsWithPdu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 848
    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsWithPdu(III[B)V

    .line 849
    return-void

    .line 846
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "addRegistrationListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public changeAudioPath(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "changeAudioPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 752
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    .line 753
    return-void

    .line 750
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public close(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .line 296
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I
    .locals 4
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 1156
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1166
    .local v0, "features":[I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 1167
    const/4 v2, 0x0

    aput v2, v0, v2

    .line 1168
    aput v3, v0, v3

    .line 1171
    :cond_0
    invoke-virtual {p1, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1172
    aput v1, v0, v1

    .line 1173
    const/4 v1, 0x3

    aput v1, v0, v1

    .line 1176
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    aput v1, v0, v1

    .line 1178
    const/4 v1, 0x5

    aput v1, v0, v1

    .line 1180
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1181
    const/4 v1, 0x6

    aput v1, v0, v1

    .line 1182
    const/4 v1, 0x7

    aput v1, v0, v1

    .line 1184
    :cond_3
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 11
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 391
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;->isConnected(III)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 392
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 393
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 394
    .local v2, "registrations":[Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_4

    .line 395
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 397
    .local v6, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    if-eq p2, v7, :cond_0

    .line 398
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 399
    goto :goto_3

    .line 402
    :cond_0
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 403
    .local v8, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 405
    .local v9, "supportHeldHostMerge":Z
    :goto_2
    const-string v10, "SupportHeldHostMerge"

    invoke-virtual {v1, v10, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 408
    if-eq p2, v7, :cond_3

    .line 409
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-nez v7, :cond_3

    .line 410
    nop

    .line 411
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 410
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallRadioTech"

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    goto :goto_4

    .line 395
    .end local v6    # "regi":Lcom/sec/ims/ImsRegistration;
    .end local v8    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v9    # "supportHeldHostMerge":Z
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 417
    :cond_4
    :goto_4
    return-object v1

    .line 419
    .end local v1    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "registrations":[Lcom/sec/ims/ImsRegistration;
    :cond_5
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 15
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 432
    move-object v1, p0

    move-object/from16 v8, p2

    const-string v0, "com.samsung.telephony.extra.CMC_TYPE"

    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v4, "createCallSession"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sec/internal/google/ServiceProfile;

    .line 435
    .local v9, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_b

    if-eqz v9, :cond_b

    .line 440
    :try_start_0
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v2

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v10, v2

    .line 441
    .local v10, "isTtyMode":Z
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2, v8, v10}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    move-object v11, v2

    .line 443
    .local v11, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v2, 0x0

    .line 444
    .local v2, "cmcType":I
    const/4 v12, 0x0

    .line 446
    .local v12, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    iget-object v3, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v3, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->setServiceProfile(Lcom/sec/internal/google/ServiceProfile;)V

    .line 448
    iget-object v3, v8, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v13, v3

    .line 449
    .local v13, "oemExtras":Landroid/os/Bundle;
    if-eqz v13, :cond_2

    .line 450
    const-string v3, "com.samsung.telephony.extra.CALL_START_WITH_JANSKY_MSISDN"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "janskyMsisdn":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    iget-object v6, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 454
    .local v6, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v6, :cond_1

    .line 455
    invoke-static {v6}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v11, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 459
    .end local v6    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 465
    .end local v3    # "janskyMsisdn":Ljava/lang/String;
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v0, v2, v8, v11, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)I

    move-result v0

    .line 467
    .end local v2    # "cmcType":I
    .local v0, "cmcType":I
    if-lez v0, :cond_3

    .line 468
    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move v3, v0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->createCallSession(IILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    return-object v2

    .line 471
    :cond_3
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 472
    .local v2, "registrations":[Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_7

    .line 473
    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v6, v2, v4

    .line 474
    .local v6, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-eq v0, v7, :cond_4

    .line 475
    goto :goto_2

    .line 478
    :cond_4
    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "urn:service:unspecified"

    if-ne v7, v14, :cond_6

    .line 479
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 480
    const-string/jumbo v7, "urn:service:sos"

    invoke-virtual {v11, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_2

    .line 482
    :cond_5
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 483
    const-string v7, ""

    iput-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 473
    .end local v6    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 489
    :cond_7
    invoke-virtual {p0, v9}, Lcom/sec/internal/google/GoogleImsService;->getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I

    move-result v3

    .line 490
    .local v3, "volteRegHandle":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    iget-object v4, v1, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 491
    invoke-static {v4}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    .line 492
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 493
    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 494
    invoke-virtual {v11, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    .line 496
    :cond_8
    iget-object v4, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    .line 497
    .end local v12    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .local v4, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    const-string v5, "CallRadioTech"

    invoke-virtual {v8, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 498
    new-instance v5, Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v6, 0x0

    invoke-direct {v5, v8, v4, v6, p0}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 499
    .local v5, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 502
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->acquireP2pNetwork()V

    .line 505
    :cond_9
    invoke-virtual {v11, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 507
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v7

    const/4 v12, 0x7

    if-ne v7, v12, :cond_a

    .line 508
    const/16 v7, 0xd

    invoke-virtual {v11, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 509
    invoke-virtual {v11, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_a
    return-object v5

    .line 513
    .end local v0    # "cmcType":I
    .end local v2    # "registrations":[Lcom/sec/ims/ImsRegistration;
    .end local v3    # "volteRegHandle":I
    .end local v4    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v5    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v10    # "isTtyMode":Z
    .end local v11    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v13    # "oemExtras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 436
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    invoke-direct {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object v0

    .line 1088
    .local v0, "ecbm":Lcom/sec/internal/google/ImsEcbmImpl;
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 1089
    return-void
.end method

.method public getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 2
    .param p1, "callId"    # I

    .line 916
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    return-object v0
.end method

.method getCmcTypeFromRegHandle(I)I
    .locals 5
    .param p1, "regHandle"    # I

    .line 1203
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1204
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1205
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1206
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1207
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    return v1

    .line 1204
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object v0
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 3
    .param p1, "phoneId"    # I

    .line 657
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getConfigInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    return-object v0

    .line 662
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsConfigImpl;

    invoke-direct {v0, p1}, Lcom/sec/internal/google/ImsConfigImpl;-><init>(I)V

    .line 663
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-object v0
.end method

.method public getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object p1

    return-object p1
.end method

.method public getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3
    .param p1, "serviceId"    # I

    .line 680
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 682
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 683
    const/4 v1, 0x0

    return-object v1

    .line 685
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object v1

    return-object v1
.end method

.method public getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;
    .locals 6

    .line 977
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 979
    .local v0, "imsConfState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 980
    .local v2, "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    .end local v2    # "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 983
    :cond_0
    return-object v0
.end method

.method public getImsNotifier()Lcom/sec/internal/google/ImsNotifier;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    return-object v0
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 5
    .param p1, "serviceId"    # I

    .line 729
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getMultiEndpointInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 731
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 732
    const/4 v1, 0x0

    return-object v1

    .line 735
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 737
    .local v1, "phoneId":I
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v2

    .line 740
    :cond_1
    new-instance v2, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/internal/google/ImsMultiEndPointImpl;-><init>(I)V

    .line 741
    .local v2, "multiEndpoint":Lcom/sec/internal/google/ImsMultiEndPointImpl;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-object v2
.end method

.method public getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    return-object v0
.end method

.method public getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1092
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1093
    return v1

    .line 1094
    :cond_0
    const-string v0, "RESTRICTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1095
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1097
    :cond_1
    const-string v0, "Coin line/payphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1098
    const/4 v0, 0x4

    return v0

    .line 1099
    :cond_2
    const-string v0, "Interaction with other service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1100
    const-string v0, "Unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1103
    :cond_3
    const/4 v0, 0x2

    return v0

    .line 1101
    :cond_4
    :goto_0
    return v1

    .line 1096
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I
    .locals 1
    .param p1, "Pletteting"    # Ljava/lang/String;

    .line 1107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Anonymous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    const/4 v0, 0x1

    return v0

    .line 1109
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Coin line/payphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    const/4 v0, 0x4

    return v0

    .line 1111
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1112
    const/4 v0, 0x3

    return v0

    .line 1114
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public getParticipantId(Ljava/lang/String;)I
    .locals 4
    .param p1, "user"    # Ljava/lang/String;

    .line 1038
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1039
    .local v0, "callId":I
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1040
    return v0

    .line 1043
    .end local v0    # "callId":I
    :cond_0
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1045
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1046
    .local v1, "participant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1049
    .end local v1    # "participant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    :cond_1
    goto :goto_1

    .line 1051
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 18
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v3, "getPendingCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ServiceProfile;

    .line 523
    .local v1, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 527
    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    .line 529
    .local v2, "phoneId":I
    iget-object v3, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object/from16 v4, p2

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 530
    .local v3, "session":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v6

    aget-object v5, v5, v6

    .line 531
    .local v5, "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_d

    .line 535
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 536
    .local v6, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    new-instance v7, Landroid/telephony/ims/ImsCallProfile;

    .line 537
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v8

    .line 538
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/internal/google/GoogleImsService;->prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v10}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8, v9, v10}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 540
    .local v7, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    .line 541
    .local v8, "registration":Lcom/sec/ims/ImsRegistration;
    if-eqz v8, :cond_3

    .line 542
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v10

    .line 543
    .local v10, "currentRat":I
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v12

    if-eqz v12, :cond_0

    .line 544
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v10

    .line 546
    :cond_0
    iget-object v12, v0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isCmcSecondaryType(I)Z

    move-result v12

    const-string v13, "CallRadioTech"

    if-eqz v12, :cond_1

    .line 547
    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_0
    const/16 v12, 0x12

    if-ne v10, v12, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v3, v12}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgStateNoNotify(Z)V

    .line 554
    .end local v10    # "currentRat":I
    :cond_3
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v10

    const-string v12, "oi"

    invoke-virtual {v7, v12, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v10

    iput-object v10, v7, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 557
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v10

    .line 558
    .local v10, "number":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, "Pletteting":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 561
    const-string/jumbo v10, "unknown"

    .line 564
    :cond_4
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v13

    .line 565
    .local v13, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v14, 0x0

    .line 566
    .local v14, "oir":I
    sget-object v15, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v13, v15, :cond_5

    .line 567
    invoke-virtual {v0, v12}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 569
    :cond_5
    invoke-virtual {v0, v10}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v14

    .line 572
    :goto_2
    const-string v15, "oir"

    invoke-virtual {v7, v15, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 573
    const-string v15, "cnap"

    invoke-virtual {v7, v15, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v15

    const-string v9, "cna"

    invoke-virtual {v7, v9, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v9

    const-string v15, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v7, v15, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v11

    const-string v15, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v7, v15, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 578
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v9

    const-string v15, "1"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 579
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.samsung.telephony.extra.DUAL_NUMBER"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.samsung.telephony.extra.LINE_MSISDN"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v9, v7, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 583
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 584
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.samsung.telephony.extra.CALL_FORWARDING_REDIRECT_NUMBER"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v9

    const-string v11, "anonymous"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v11, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v9, :cond_6

    .line 586
    invoke-virtual {v7, v11, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 588
    :cond_6
    const-string v9, "0"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_7
    :goto_3
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 595
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v7, v11, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v9

    const-string v11, "TN-Validation-Passed"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 597
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    const/4 v9, 0x0

    goto :goto_4

    .line 598
    :cond_8
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v9

    const-string v11, "TN-Validation-Failed"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 599
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    const/4 v9, 0x0

    goto :goto_4

    .line 601
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_4

    .line 604
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 607
    :goto_4
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_b

    .line 608
    iput v9, v7, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_5

    .line 610
    :cond_b
    const/4 v9, 0x3

    iput v9, v7, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 613
    :goto_5
    iget-object v9, v0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v9, v2, v7, v3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 615
    const/4 v9, 0x0

    .line 616
    .local v9, "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v11

    const-string v15, "GoogleImsService"

    if-lez v11, :cond_c

    .line 618
    const-string v11, "getPendingCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v11, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v15, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object/from16 v16, v1

    .end local v1    # "service":Lcom/sec/internal/google/ServiceProfile;
    .local v16, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/google/GoogleImsService;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    move/from16 v17, v2

    .end local v2    # "phoneId":I
    .local v17, "phoneId":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v2

    invoke-direct {v11, v3, v15, v1, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    move-object v1, v11

    .line 620
    .local v1, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    new-instance v2, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    const/4 v11, 0x0

    invoke-direct {v2, v7, v1, v11, v0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    move-object v1, v2

    .line 621
    .end local v9    # "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    .local v1, "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    goto :goto_6

    .line 623
    .end local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v17    # "phoneId":I
    .local v1, "service":Lcom/sec/internal/google/ServiceProfile;
    .restart local v2    # "phoneId":I
    .restart local v9    # "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_c
    move-object/from16 v16, v1

    move/from16 v17, v2

    const/4 v11, 0x0

    .end local v1    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v2    # "phoneId":I
    .restart local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    .restart local v17    # "phoneId":I
    const-string v1, "getPendingCallSession, create imsCallSessionImpl for [NORMAL volte call]"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v1, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {v1, v7, v3, v11, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 626
    .end local v9    # "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    .local v1, "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :goto_6
    iget-object v2, v0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-object v1

    .line 531
    .end local v6    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v7    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v8    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local v10    # "number":Ljava/lang/String;
    .end local v12    # "Pletteting":Ljava/lang/String;
    .end local v13    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v14    # "oir":I
    .end local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v17    # "phoneId":I
    .local v1, "service":Lcom/sec/internal/google/ServiceProfile;
    .restart local v2    # "phoneId":I
    :cond_d
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 532
    .end local v1    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v2    # "phoneId":I
    .restart local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    .restart local v17    # "phoneId":I
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 523
    .end local v3    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v5    # "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .end local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v17    # "phoneId":I
    .restart local v1    # "service":Lcom/sec/internal/google/ServiceProfile;
    :cond_e
    move-object/from16 v4, p2

    move-object/from16 v16, v1

    .line 524
    .end local v1    # "service":Lcom/sec/internal/google/ServiceProfile;
    .restart local v16    # "service":Lcom/sec/internal/google/ServiceProfile;
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 3
    .param p1, "phoneId"    # I

    .line 350
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getRegistration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;-><init>(Lcom/sec/internal/google/GoogleImsService;I)V

    .line 356
    .local v0, "regi":Landroid/telephony/ims/aidl/IImsRegistration;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-object v0
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getSmsFormat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 888
    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 886
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getTrn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 780
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 5
    .param p1, "serviceId"    # I

    .line 639
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 641
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 642
    const/4 v1, 0x0

    return-object v1

    .line 645
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 646
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsUt;

    return-object v2

    .line 649
    :cond_1
    new-instance v2, Lcom/sec/internal/google/ImsUtImpl;

    invoke-direct {v2, v1}, Lcom/sec/internal/google/ImsUtImpl;-><init>(I)V

    .line 650
    .local v2, "ut":Lcom/android/ims/internal/IImsUt;
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object v2
.end method

.method public getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I
    .locals 6
    .param p1, "service"    # Lcom/sec/internal/google/ServiceProfile;

    .line 1188
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1190
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1191
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1192
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1193
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_0

    .line 1194
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    return v1

    .line 1191
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    .end local v0    # "registrationList":[Lcom/sec/ims/ImsRegistration;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public hasConferenceHost()Z
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected(III)Z
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "isConnected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    return v0

    .line 322
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    return v0
.end method

.method public isInitialMerge()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    return v0
.end method

.method public isOpened(I)Z
    .locals 3
    .param p1, "serviceId"    # I

    .line 334
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "isOpened"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1224
    invoke-direct {p0, p2}, Lcom/sec/internal/google/GoogleImsService;->extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;

    move-result-object v0

    .line 1226
    .local v0, "latestUris":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    const/4 v1, 0x0

    return v1

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const/4 v1, 0x1

    return v1
.end method

.method public onCallClosed(I)V
    .locals 2
    .param p1, "callIdInt"    # I

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    return-void
.end method

.method public onSmsReady(I)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "onSmsReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    new-instance v1, Lcom/sec/internal/google/ImsSmsImpl;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-direct {v1, v2, p1, v3}, Lcom/sec/internal/google/ImsSmsImpl;-><init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    aput-object v1, v0, p1

    .line 869
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    .line 870
    return-void
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 250
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 252
    if-eqz v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not ready to open"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$orSTyMQHhF4e_hxk_v5pUUv6Hs0;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/google/-$$Lambda$GoogleImsService$orSTyMQHhF4e_hxk_v5pUUv6Hs0;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/google/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;->INSTANCE:Lcom/sec/internal/google/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/internal/google/GoogleImsService;->getIncreasedServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    .local v1, "serviceId":I
    new-instance v2, Lcom/sec/internal/google/ServiceProfile;

    invoke-direct {v2, p1, p2, p4}, Lcom/sec/internal/google/ServiceProfile;-><init>(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 262
    .local v2, "newServiceProfile":Lcom/sec/internal/google/ServiceProfile;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 267
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v3

    invoke-interface {p4, p2, v3, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 271
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 272
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 274
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v6

    invoke-interface {p4, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    .line 277
    invoke-virtual {p0, p1, v5}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/Uri;

    invoke-interface {p4, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 273
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "registrationList":[Lcom/sec/ims/ImsRegistration;
    :cond_3
    return v1

    .line 247
    .end local v1    # "serviceId":I
    .end local v2    # "newServiceProfile":Lcom/sec/internal/google/ServiceProfile;
    :cond_4
    throw v0
.end method

.method public prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "cBundle"    # Landroid/os/Bundle;

    .line 1239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1240
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1241
    const-string v1, "importance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    nop

    .line 1243
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1242
    const-string v2, "EXTRA_CALL_IMPORTANCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1247
    :cond_0
    const-string v1, "image"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    nop

    .line 1249
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    const-string v2, "EXTRA_CALL_IMAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_1
    const-string/jumbo v1, "subject"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    nop

    .line 1255
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    const-string v2, "EXTRA_CALL_SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_2
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1260
    nop

    .line 1261
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    const-string v2, "EXTRA_CALL_LONGITUDE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_3
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1265
    nop

    .line 1266
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string v2, "EXTRA_CALL_LATITUDE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_4
    const-string/jumbo v1, "radius"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1270
    nop

    .line 1271
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1270
    const-string v2, "EXTRA_CALL_RADIUS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_5
    return-object v0
.end method

.method public preparePushCall(Lcom/sec/ims/DialogEvent;)V
    .locals 4
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preparePushCall(), size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleImsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    const-string v0, "Push for [PD]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 153
    .local v2, "sessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isP2pPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x1777

    invoke-direct {v0, v3, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 157
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v3, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 158
    goto :goto_1

    .line 161
    .end local v0    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsCallSessionImpl;>;"
    .end local v2    # "sessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 163
    :cond_2
    if-eqz p1, :cond_3

    .line 164
    const-string v0, "Push for [SD]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result v0

    .line 166
    .local v0, "deCmcType":I
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 169
    .end local v0    # "deCmcType":I
    :cond_3
    :goto_2
    return-void
.end method

.method public putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "endPoint"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 929
    .local v0, "confState":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v1, "callId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v1, "cna"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v1, "cnap"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    const-string v1, "oir"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    invoke-virtual {p5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    const-string v2, "audioQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    nop

    .line 939
    const-string v1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 938
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    nop

    .line 941
    const-string v1, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-void
.end method

.method public putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callId"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "endPoint"    # Ljava/lang/String;
    .param p5, "status"    # Ljava/lang/String;
    .param p6, "sipError"    # I
    .param p7, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 948
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v0, "confState":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v1, "callId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 953
    const-string/jumbo v1, "sipError"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 954
    const-string/jumbo v1, "uriType"

    const-string/jumbo v2, "tel"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v1, "cna"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v1, "cnap"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    const-string v1, "oir"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 960
    invoke-virtual {p7}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    const-string v2, "audioQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    nop

    .line 962
    const-string v1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 961
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    nop

    .line 964
    const-string v1, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v1, "disconnected"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const/4 v1, 0x2

    const-string v2, "disconnectCause"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 969
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    return-void
.end method

.method public removeConferenceState(I)V
    .locals 2
    .param p1, "callId"    # I

    .line 973
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendPublishDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 791
    return-void

    .line 787
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public sendRpSmma(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendRpSmma"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 878
    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/ImsSmsImpl;->sendRpSmma(ILjava/lang/String;)V

    .line 879
    return-void

    .line 876
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 812
    aget-object v0, v0, p1

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->sendSms(IIILjava/lang/String;Ljava/lang/String;[B)V

    .line 813
    return-void

    .line 809
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "sessionImpl"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 920
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    return-void
.end method

.method public setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "hostSession"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 896
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 898
    if-nez p1, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 901
    :cond_0
    return-void
.end method

.method public setConnectivityController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 4
    .param p1, "cController"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 125
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 126
    new-instance v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;-><init>(Landroid/content/Context;Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setPhoneId(I)V

    .line 128
    return-void
.end method

.method public setInitialMerge(Z)V
    .locals 0
    .param p1, "initialMerge"    # Z

    .line 912
    iput-boolean p1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    .line 913
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 340
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setRegistrationListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 342
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p2}, Lcom/sec/internal/google/ServiceProfile;->setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 344
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-void
.end method

.method public setRetryCount(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 821
    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/google/ImsSmsImpl;->setRetryCount(III)V

    .line 822
    return-void

    .line 819
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/ISecImsMmTelEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setSecImsMmTelEventListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    return-void
.end method

.method public setServiceUrn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServiceUrn"    # Ljava/lang/String;

    .line 924
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 925
    return-void
.end method

.method public setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setSmsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 856
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    goto :goto_0

    .line 860
    :cond_1
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 861
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    :goto_0
    return-void
.end method

.method public setTtyMode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setTtyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 724
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setTtyMode(II)V

    .line 725
    return-void

    .line 722
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 705
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 710
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_1

    .line 713
    invoke-interface {v2, v1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setUiTTYMode(IILandroid/os/Message;)V

    .line 714
    return-void

    .line 711
    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "startLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 761
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result v0

    return v0

    .line 759
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "stopLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result v0

    return v0

    .line 768
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "triggerAutoConfigurationForApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->triggerAutoConfigurationForApp(I)V

    .line 797
    return-void
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 675
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 670
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public updateCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 1120
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    .line 1124
    :cond_0
    return-void
.end method

.method public updateCapabilities(I[I[Z)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # [I
    .param p3, "capables"    # [Z

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCapabilities, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleImsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v0, 0x0

    .line 1131
    .local v0, "capabilityUpdated":Z
    const/4 v1, 0x0

    .local v1, "capability":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 1132
    aget-boolean v2, p3, v1

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1133
    aget-boolean v2, p3, v1

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v2, v2, p1

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 1135
    aget v2, p2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v3, v2, p1

    if-eqz v3, :cond_1

    .line 1136
    aget-object v2, v2, p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    goto :goto_1

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v2, v2, p1

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 1142
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 1131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .end local v1    # "capability":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1147
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    .line 1149
    :cond_4
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "status"    # Ljava/lang/String;

    .line 1055
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1056
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;I)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "disconnectCause"    # I

    .line 1059
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1060
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "endPoint"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "disconnectCause"    # I

    .line 1063
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1065
    .local v0, "confState":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1066
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1075
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_2
    const/4 v1, -0x1

    if-eq p5, v1, :cond_3

    .line 1079
    const-string v1, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :cond_4
    return-void
.end method

.method public updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 14
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v0, "newSecConferenceInfo":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "secConferenceInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 990
    .local v1, "oldSecConferenceInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 991
    .local v4, "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 992
    .local v5, "callId":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 993
    .local v6, "newValue":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 995
    .local v7, "oldValue":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 996
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 997
    .local v9, "oldCallId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 998
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 999
    goto :goto_2

    .line 1001
    .end local v9    # "oldCallId":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 1004
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 1005
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1006
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 1008
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v8

    .line 1009
    .local v8, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    const-string v9, "callId"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1010
    .local v9, "origCallId":I
    if-lez v9, :cond_3

    .line 1011
    invoke-virtual {p0, v9}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v8

    .line 1014
    :cond_3
    if-eqz v8, :cond_6

    .line 1015
    invoke-virtual {v8}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    .line 1016
    .local v10, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v11, "cna"

    invoke-virtual {v10, v11}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v11, 0x0

    .line 1019
    .local v11, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :try_start_0
    iget-object v12, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v12

    .line 1020
    .local v12, "s":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v12, :cond_4

    .line 1021
    invoke-interface {v12}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v13

    .line 1024
    .end local v12    # "s":Lcom/sec/ims/volte2/IImsCallSession;
    :cond_4
    goto :goto_3

    .line 1023
    :catch_0
    move-exception v12

    .line 1025
    :goto_3
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1026
    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v6, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    .end local v4    # "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    .end local v5    # "callId":Ljava/lang/Integer;
    .end local v6    # "newValue":Landroid/os/Bundle;
    .end local v7    # "oldValue":Landroid/os/Bundle;
    .end local v8    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v9    # "origCallId":I
    .end local v10    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v11    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 1033
    :cond_7
    iget-object v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1034
    return-void
.end method
