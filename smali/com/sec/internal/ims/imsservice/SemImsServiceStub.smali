.class public Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.super Lcom/samsung/android/ims/SemImsService$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;
    }
.end annotation


# static fields
.field public static final AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

.field private static final IMS_SEAPI_SERVICE:Ljava/lang/String; = "ImsBase"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field public static final RCS_AUTOCONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field private static sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# instance fields
.field private mAutoCofigListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemAutoConfigListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAutoConfigCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/ims/SemAutoConfigListener;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

.field private mDmConfigListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEpdgAvailable:[Z

.field private mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

.field private mEpdgListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/ISemEpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

.field private mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/ft/SemImsFtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsConfigVers:I

.field private mRegCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/ims/SemImsRegiListener;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemImsRegiListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRegistrationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimMobilityStatusCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/ims/SemSimMobStatusListener;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimMobilityStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemSimMobStatusListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 90
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsService$Stub;-><init>()V

    .line 77
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Landroid/os/RemoteCallbackList;

    .line 79
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;

    .line 80
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegistrationCallbacks:Ljava/util/Map;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 98
    const-string v0, "ImsBase"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 99
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemImsServiceStub added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .param p1, "x1"    # Lcom/sec/ims/ImsRegistration;

    .line 69
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .param p1, "x1"    # Lcom/sec/ims/ImsRegistrationError;

    .line 69
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    return-object v0
.end method

.method private buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 643
    if-eqz p1, :cond_0

    .line 644
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ims/settings/SemImsProfile;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "imsProfile":Lcom/samsung/android/ims/settings/SemImsProfile;
    return-object v0

    .line 647
    .end local v0    # "imsProfile":Lcom/samsung/android/ims/settings/SemImsProfile;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 615
    if-eqz p1, :cond_1

    .line 616
    invoke-static {}, Lcom/samsung/android/ims/SemImsRegistration;->getBuilder()Lcom/samsung/android/ims/SemImsRegistration$Builder;

    move-result-object v0

    .line 617
    .local v0, "registrationBuilder":Lcom/samsung/android/ims/SemImsRegistration$Builder;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 618
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 619
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 620
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 621
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPAssociatedUri2nd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 622
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/imsservice/-$$Lambda$SemImsServiceStub$o_iKXiPXfsE1gdGDaJXoFMIWl6o;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/imsservice/-$$Lambda$SemImsServiceStub$o_iKXiPXfsE1gdGDaJXoFMIWl6o;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 623
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    .local v1, "ownNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 626
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v2, :cond_0

    .line 627
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "imsi":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    const-string v1, ""

    .line 635
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 636
    new-instance v3, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {v3, v0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    .line 637
    .local v3, "registration":Lcom/samsung/android/ims/SemImsRegistration;
    return-object v3

    .line 639
    .end local v0    # "registrationBuilder":Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .end local v1    # "ownNumber":Ljava/lang/String;
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v3    # "registration":Lcom/samsung/android/ims/SemImsRegistration;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .locals 5
    .param p1, "registrationError"    # Lcom/sec/ims/ImsRegistrationError;

    .line 651
    new-instance v0, Lcom/samsung/android/ims/SemImsRegistrationError;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v1

    .line 652
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result v3

    .line 654
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 651
    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 2

    .line 123
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 133
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRcsAutoConfigCompl(I)Ljava/lang/String;
    .locals 11
    .param p1, "phoneId"    # I

    .line 423
    const-string v0, "info/completed"

    .line 424
    .local v0, "param":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 425
    .local v1, "versUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 427
    .local v2, "autoConfigCompl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    const-string v4, "#simslot\\d"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 430
    .local v3, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 432
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 435
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 439
    :cond_1
    if-eqz v10, :cond_2

    .line 440
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_2
    return-object v2

    .line 439
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_3

    .line 440
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_3
    throw v4
.end method

.method private getRcsAutoconfigVers(I)Z
    .locals 11
    .param p1, "phoneId"    # I

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "configurationValue":Ljava/lang/String;
    const-string/jumbo v1, "parameter/version"

    .line 449
    .local v1, "param":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 451
    .local v2, "versUri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    const-string v4, "#simslot\\d"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 454
    .local v3, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 456
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 457
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 460
    :cond_0
    const/4 v4, 0x0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 463
    :cond_1
    if-eqz v0, :cond_4

    .line 465
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    const/4 v4, 0x1

    .line 473
    if-eqz v10, :cond_2

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_2
    return v4

    .line 467
    :catch_0
    move-exception v5

    .line 468
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v6, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    nop

    .line 473
    if-eqz v10, :cond_3

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_3
    return v4

    .line 473
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    if-eqz v10, :cond_5

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_5
    return v4

    .line 473
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    .line 474
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_6
    throw v4
.end method

.method private init()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    return-void
.end method

.method static synthetic lambda$buildSemImsRegistration$0(Lcom/samsung/android/ims/SemImsRegistration$Builder;Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p0, "registrationBuilder"    # Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .param p1, "impu"    # Lcom/sec/ims/util/ImsUri;

    .line 622
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    return-void
.end method

.method public static declared-synchronized makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already created."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 108
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SemImsService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 111
    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->init()V

    .line 113
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 102
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 481
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    .line 482
    return-void
.end method

.method public getBinder()Landroid/os/Binder;
    .locals 1

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSemBinder()Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanConfig(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 495
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 498
    .local v0, "dmFields":[Ljava/lang/String;
    const-string v1, "mmtel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "81"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 500
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_0

    .line 501
    aput-object v2, v0, v3

    goto :goto_0

    .line 503
    :cond_0
    const-string v1, "93"

    aput-object v1, v0, v3

    goto :goto_0

    .line 505
    :cond_1
    const-string v1, "mmtel-video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    const-string v1, "94"

    aput-object v1, v0, v3

    .line 512
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 513
    .local v1, "dmValue":Landroid/content/ContentValues;
    if-eqz v1, :cond_4

    .line 514
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 515
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 516
    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    const-string v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 521
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 524
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 525
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v4, "can not read DM values"

    invoke-static {v2, p2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    :goto_1
    return v3

    .line 509
    .end local v1    # "dmValue":Landroid/content/ContentValues;
    :cond_5
    return v3
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 7
    .param p1, "phoneId"    # I

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "proList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/settings/SemImsProfile;>;"
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 190
    .local v1, "profile":[Lcom/sec/ims/settings/ImsProfile;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 191
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 192
    .local v5, "imsprofile":Lcom/sec/ims/settings/ImsProfile;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v5    # "imsprofile":Lcom/sec/ims/settings/ImsProfile;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-array v2, v2, [Lcom/samsung/android/ims/settings/SemImsProfile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/ims/settings/SemImsProfile;

    return-object v2
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 7
    .param p1, "phoneId"    # I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "regiList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/SemImsRegistration;>;"
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 175
    .local v1, "reg":[Lcom/sec/ims/ImsRegistration;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 176
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 177
    .local v5, "registration":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 178
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v5    # "registration":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-array v2, v2, [Lcom/samsung/android/ims/SemImsRegistration;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/ims/SemImsRegistration;

    return-object v2
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistrationInfoByServiceType: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 202
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v1

    return-object v1
.end method

.method public isForbiddenByPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isForbiddenByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public isRcsEnabled(ZI)Z
    .locals 10
    .param p1, "needAutoConfigCheck"    # Z
    .param p2, "phoneId"    # I

    .line 392
    const-string v0, "]"

    const-string v1, "["

    const/4 v2, 0x0

    .line 393
    .local v2, "version":I
    const/4 v3, 0x0

    .line 394
    .local v3, "rcsEnabled":Z
    const/4 v4, 0x0

    .line 397
    .local v4, "autoconfCompleted":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "rcs_user_setting"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v6, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    move v3, v7

    .line 400
    goto :goto_1

    .line 398
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "isRcsEnabled: rcs_user_setting is not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    if-nez p1, :cond_1

    .line 403
    return v3

    .line 407
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoconfigVers(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 408
    iget v7, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I

    move v2, v7

    .line 410
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoConfigCompl(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 411
    const-string/jumbo v7, "true"

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoConfigCompl(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v4, v7

    .line 413
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRcsEnabled: version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " autoConfigComplete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    goto :goto_2

    .line 415
    :catch_1
    move-exception v7

    .line 416
    .local v7, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v4, :cond_4

    if-lez v2, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    return v5
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isSimMobilityActivated(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isSimMobilityActivated(I)Z

    move-result v0

    return v0
.end method

.method public isVoLteAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I

    .line 340
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAutoConfigurationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    if-nez p1, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAutoConfigurationListener : listener has already registered"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    return-void

    .line 351
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemAutoConfigListener;)V

    .line 353
    .local v0, "autoConfigCallback":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 360
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 364
    return-void
.end method

.method public registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V

    .line 550
    .local v0, "dmConfigCallback":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    .line 551
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mDmConfigListeners register"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 557
    :cond_0
    return-void
.end method

.method public registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    .line 587
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 590
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v0

    .line 591
    .local v0, "isWifiConnected":Z
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 593
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register epdg listnern onepdg available : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " wifi connected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v2, v2, v1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1, v1, v2, v3}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    goto :goto_2

    .line 595
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 591
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "phoneId":I
    :cond_2
    return-void
.end method

.method public registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterImsOngoingFtListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    .line 270
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mOngingFtEventListers register"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 277
    :cond_0
    return-void
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterImsOngoingFtListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    if-nez p1, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListenerForSlot : listener has already registered"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    return-void

    .line 217
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemImsRegiListener;)V

    .line 219
    .local v0, "regCallback":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 231
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 232
    .local v1, "registrations":[Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_5

    .line 233
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 234
    .local v4, "registration":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-nez v5, :cond_4

    .line 236
    :try_start_0
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_1

    .line 237
    :catch_0
    move-exception v5

    .line 238
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 233
    .end local v4    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_5
    return-void
.end method

.method public registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    .param p2, "phoneId"    # I

    .line 578
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSemCmcRecordingListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    .line 581
    return-void
.end method

.method public registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    if-nez p1, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSimMobilityStatusListener : listener has already registered"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    return-void

    .line 304
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemSimMobStatusListener;)V

    .line 306
    .local v0, "simMobilityStatusCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 313
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 317
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 543
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMsisdnNumber"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 545
    return-void
.end method

.method public sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .param p2, "event"    # I
    .param p3, "phoneId"    # I

    .line 571
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSemCmcRecordingEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    .line 574
    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 490
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    .line 491
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 537
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendVerificationCode"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendVerificationCode(Ljava/lang/String;I)V

    .line 539
    return-void
.end method

.method public setRttMode(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 532
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setRttMode(II)V

    .line 533
    return-void
.end method

.method public unRegisterEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/ISemEpdgListener;

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 608
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 609
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unRegisterEpdgListener(Lcom/sec/ims/IEpdgListener;)V

    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    .line 612
    :cond_1
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;
    .param p2, "phoneId"    # I

    .line 368
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterAutoConfigurationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    if-nez p1, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;

    .line 376
    .local v0, "autoConfigCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 377
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoConfigCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v0    # "autoConfigCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mAutoCofigListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 383
    :cond_2
    return-void
.end method

.method public unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsDmConfigListener;

    .line 561
    if-eqz p1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    if-eqz v0, :cond_1

    .line 565
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 567
    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsFtListener;

    .line 281
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterImsOngoingFtListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    .line 289
    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;
    .param p2, "phoneId"    # I

    .line 247
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    if-nez p1, :cond_0

    .line 250
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImsRegistrationListenerForSlot: listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    .line 256
    .local v0, "imsRegistrationCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v0    # "imsRegistrationCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRegListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 263
    :cond_2
    return-void
.end method

.method public unregisterSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;
    .param p2, "phoneId"    # I

    .line 321
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    if-nez p1, :cond_0

    .line 324
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    .line 329
    .local v0, "simMobilityStatusCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusCallbacks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v0    # "simMobilityStatusCallBack":Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mSimMobilityStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 336
    :cond_2
    return-void
.end method
