.class public Lcom/sec/internal/ims/servicemodules/im/ImModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "ImModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;
.implements Lcom/sec/internal/ims/util/IMessagingAppInfoListener;


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0xbb8L

.field private static final DELAY_TIME_FOR_CACHE_CLEAR:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final NAME:Ljava/lang/String;

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private final mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private final mCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCountReconfiguration:I

.field private mDefaultPhoneId:I

.field private final mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

.field private final mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field private final mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

.field private final mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

.field private final mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private final mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private mInternetAvailable:Z

.field private mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSetUpsmEventReceiver:Z

.field private mIsWifiConnected:Z

.field private mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

.field protected final mNeedToRemoveFromPendingList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsProfile:Ljava/lang/String;

.field private final mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

.field private final mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private final mThirdPartyTranslation:Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

.field private final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 127
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    .line 133
    const-string v0, "im"

    const-string/jumbo v1, "slm"

    const-string v2, "ft"

    const-string v3, "ft_http"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imServiceInterface"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 254
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .param p4, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    .line 178
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 185
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    .line 198
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    .line 201
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 202
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    .line 203
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    .line 204
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 205
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 206
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    .line 207
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mThirdPartyTranslation:Lcom/sec/internal/ims/servicemodules/im/ThirdPartyTranslation;

    .line 208
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 209
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 210
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setUpsmEventReceiver()V

    .line 211
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    .local v0, "phoneCount":I
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 215
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 216
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 217
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 218
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 219
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 220
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 221
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 222
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 223
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 224
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    .line 225
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-direct {v1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImDump;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 228
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    .line 229
    .local v2, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    .line 231
    .local v4, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 227
    .end local v2    # "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .end local v4    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 235
    const/16 v2, 0x1d

    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 239
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/16 v5, 0x22

    invoke-interface {v4, p0, v5, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_1

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 243
    .local v2, "pm":Landroid/os/PowerManager;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 245
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p1, "x1"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 126
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-object v0
.end method

.method private handleDDSChange()V
    .locals 4

    .line 2010
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 2011
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDDSChange: current dds phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2013
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleDDSChange: registered, return;"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    return-void

    .line 2016
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2017
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 2018
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 2019
    :cond_1
    return-void
.end method

.method private handleEventAbortOngoingHttpFtOperation(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2092
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_ABORT_ONGOING_HTTP_FT_OPERATIONS isRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInternetAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-nez v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2096
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->abortAllHttpFtOperations()V

    .line 2097
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 2099
    :cond_0
    return-void
.end method

.method private handleEventConfigured(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 995
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1000
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1003
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimCardManager own number is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1006
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1007
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 1014
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1015
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hIBmCEat4ubV0C-UWhroSeXwK6w;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "profile is null, return !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void

    .line 1020
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1021
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v6, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->load(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1022
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImConfig loaded. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxConcurrentSession()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->initializeLruCache(I)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1026
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1027
    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTHTTPAutoResumeAndCancelPerConnectionChange()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1028
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "cancel_ft_wifi_disconnected"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1029
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setNetworkCallback(I)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->registerDefaultNetworkCallback(I)V

    .line 1033
    :cond_5
    return-void
.end method

.method private handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 1109
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1110
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->stopReconnectGuardTimer(I)V

    .line 1116
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1119
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processDeregistration()V

    .line 1122
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    goto :goto_0

    .line 1124
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1125
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1126
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->clear()V

    .line 1128
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1130
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "useragent_has_msgappversion"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1131
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v2}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->unregisterReceiver()V

    .line 1133
    :cond_3
    return-void
.end method

.method private handleEventMessageAppChanged()V
    .locals 3

    .line 1140
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1141
    .local v0, "mMno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleEventMessageAppChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterAllFileTransferProgress()V

    .line 1147
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterAllSLMFileTransferProgress()V

    .line 1148
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1149
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1150
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    .line 1151
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 1154
    :cond_1
    return-void
.end method

.method private handleEventProcessRejoinGCSession(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 2071
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_PROCESS_REJOIN_GC_SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "groupchat_auto_rejoin"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionForAutoRejoin()V

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->processRejoinGCSession(I)V

    .line 2076
    return-void
.end method

.method private handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 11
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 1042
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1044
    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1046
    if-eqz p1, :cond_2

    .line 1047
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateOwnPhoneNumberOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1049
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isEnableGroupChatListRetrieve()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    .line 1052
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v8

    .line 1053
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v1, v0, v10}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mGroupChatRetrievingHandlers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->startToRetrieveGroupChatList()V

    .line 1058
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImRegistration own number is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1061
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 1062
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_4

    .line 1063
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1065
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When own number is not available through telephonyManager or RegistrationManager, we use imsi. TelephonyManager imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1066
    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1065
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1079
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "update_session_after_registration"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1080
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1081
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1082
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 1084
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_6
    goto :goto_1

    .line 1087
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    .line 1089
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRegistration(I)Lcom/sec/internal/constants/ims/servicemodules/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->isReRegi()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1090
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "useragent_has_msgappversion"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1091
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V

    .line 1093
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V

    .line 1094
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->startReconnectGuardTiemer(I)V

    .line 1096
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateUriGenerator(I)V

    .line 1098
    :cond_a
    return-void
.end method

.method private handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V
    .locals 5
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    .line 2102
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2103
    .local v0, "isSuccess":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2105
    if-eqz v0, :cond_2

    .line 2106
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 2107
    .local v1, "chatbotUri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getActiveSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2108
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2109
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 2111
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    goto :goto_1

    .line 2114
    .end local v1    # "chatbotUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mCommandId:Ljava/lang/String;

    iget v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mRetryAfter:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeResponse(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 2115
    return-void
.end method

.method private handleEventResumePendingHttpFtOperations(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 2079
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_RESUME_PENDING_HTTP_FT_OPERATIONS mInternetAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetAvailable:Z

    if-eqz v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2083
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 2084
    .local v2, "id":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2085
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    .line 2087
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "id":I
    :cond_0
    goto :goto_0

    .line 2089
    :cond_1
    return-void
.end method

.method private isDefaultPdnConnected()Z
    .locals 6

    .line 1836
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1837
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1838
    .local v1, "network":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1839
    .local v2, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1840
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1841
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1839
    :goto_0
    return v3
.end method

.method private isImsPdnConnected(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "network":Landroid/net/Network;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1822
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 1823
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1825
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1826
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1827
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private isRequiredServicesRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 6
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 1165
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1166
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1167
    .local v4, "service":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1168
    const/4 v0, 0x1

    return v0

    .line 1166
    .end local v4    # "service":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    return v0
.end method

.method static synthetic lambda$handleEventConfigured$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1015
    const-string v0, "im"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "slm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onDataRoamingChanged(ZI)V
    .locals 5
    .param p1, "isDataRoaming"    # Z
    .param p2, "phoneId"    # I

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 493
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    .line 494
    .local v0, "pref":Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v1

    .line 495
    .local v1, "accept":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataRoamingChanged: ft aut accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    .line 497
    return-void
.end method

.method private onOutOfServiceChanged(ZZI)V
    .locals 5
    .param p1, "outOfService"    # Z
    .param p2, "dataConnectionState"    # Z
    .param p3, "phoneId"    # I

    .line 503
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutOfServiceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 506
    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "cancel_for_deregi_promptly"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultPdnConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 510
    .local v1, "needToAccessInternet":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 511
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "ft_net_capability"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 512
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isImsPdnConnected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    nop

    .line 513
    .local v0, "needToAccessIms":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 515
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtHttp(I)V

    .line 516
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_2

    .line 518
    .end local v0    # "needToAccessIms":Z
    .end local v1    # "needToAccessInternet":Z
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 521
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 522
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_3

    .line 518
    :cond_4
    nop

    .line 524
    :cond_5
    return-void
.end method

.method private onSimRefresh(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 2022
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2023
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2024
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSimRefresh(I)V

    .line 2025
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 2026
    :cond_0
    return-void
.end method

.method private onUltraPowerSavingModeChanged()V
    .locals 3

    .line 1923
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$X-nNWAhdlTF8zm6MIfUdu2AYxeg;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$X-nNWAhdlTF8zm6MIfUdu2AYxeg;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1927
    return-void
.end method

.method private onWifiConnectionChanged(ZI)V
    .locals 3
    .param p1, "isWifiConnected"    # Z
    .param p2, "phoneId"    # I

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiConnectionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    .line 485
    return-void
.end method

.method private processPendingMessagesOnRegi(ILcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 2160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithPendingMessages()V

    .line 2161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getEnableFtAutoResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadImSessionWithFailedFTMessages()V

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v0

    .line 2167
    .local v0, "allSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/ImSession;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session(s) in cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2169
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateNetworkForPendingMessage(Landroid/net/Network;Landroid/net/Network;)V

    .line 2170
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 2172
    :cond_1
    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 2173
    const/16 v1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 2174
    return-void
.end method

.method private registerDefaultNetworkCallback(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1564
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "INET  : registerDefaultNetworkCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1566
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1567
    return-void
.end method

.method private setAppVersionToSipUserAgent(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 2148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_0

    .line 2149
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 2152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2154
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    .line 2156
    :cond_1
    return-void
.end method

.method private setNetworkCallback(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1509
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mInternetListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1557
    return-void
.end method

.method private setUpsmEventReceiver()V
    .locals 4

    .line 1900
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUpsmEventReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsSetUpsmEventReceiver:Z

    if-nez v0, :cond_0

    .line 1902
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register upsm event receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1904
    .local v0, "upsmIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1905
    sget-object v1, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1906
    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1908
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsSetUpsmEventReceiver:Z

    .line 1911
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 1912
    .local v1, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1913
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "upsm is already set, so send upsm event."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onUltraPowerSavingModeChanged()V

    .line 1917
    .end local v0    # "upsmIntentFilter":Landroid/content/IntentFilter;
    .end local v1    # "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_0
    return-void
.end method

.method private updateFeatures(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1179
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mEnabledFeatures:[J

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFeatureUpdater:Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateFeatures(ILcom/sec/internal/ims/servicemodules/im/ImConfig;)J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1181
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateExtendedBotMsgFeature(I)V

    .line 1182
    return-void
.end method

.method private updateOwnPhoneNumberOnRegi(ILcom/sec/ims/ImsRegistration;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 2118
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 2119
    .local v0, "ownPhoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2120
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2122
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2124
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventRegistered, mOwnImsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mOwnPhoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2126
    const/4 v1, 0x0

    .line 2127
    .local v1, "ownNumber":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEventRegistered, registration.getImpuList()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 2129
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v4, v5, :cond_1

    .line 2130
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 2131
    goto :goto_1

    .line 2133
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_1
    goto :goto_0

    .line 2134
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2135
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 2136
    .restart local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2137
    goto :goto_2

    .line 2139
    :cond_3
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 2143
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 2145
    .end local v1    # "ownNumber":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public acceptFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->acceptFileTransfer(I)V

    .line 673
    return-void
.end method

.method protected acquireWakeLock(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 799
    return-void
.end method

.method public addParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->addParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 585
    return-void
.end method

.method public attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 13
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p4, "requestMessageId"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "isResizable"    # Z
    .param p7, "isBroadcast"    # Z
    .param p8, "isExtraFt"    # Z
    .param p9, "isFtSms"    # Z
    .param p10, "extInfo"    # Ljava/lang/String;
    .param p11, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 661
    .local p3, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 14
    .param p1, "phoneId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isprotectedAccountMsg"    # Z
    .param p8, "isResizable"    # Z
    .param p9, "isExtraft"    # Z
    .param p10, "isFtSms"    # Z
    .param p11, "extInfo"    # Ljava/lang/String;
    .param p12, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 653
    .local p4, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public cancelFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->cancelFileTransfer(I)V

    .line 678
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 2034
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->stop()V

    .line 2035
    return-void
.end method

.method public closeChat(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->closeChat(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 6
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "sdpContentType"    # Ljava/lang/String;
    .param p4, "threadId"    # I
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 544
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 554
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChats(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->deleteChatsForUnsubscribe()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 682
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessagesByImdnId(Ljava/util/Map;Z)Ljava/util/concurrent/FutureTask;
    .locals 1
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 687
    .local p1, "imdnIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->deleteMessagesByImdnId(Ljava/util/Map;Z)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 4

    .line 1703
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1706
    .local v1, "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    .end local v1    # "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    goto :goto_0

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->dump()V

    .line 1709
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method protected getActiveCall(Lcom/sec/ims/util/ImsUri;)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 2001
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 2002
    .local v1, "callUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2003
    const/4 v0, 0x1

    return v0

    .line 2005
    .end local v1    # "callUri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 2006
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 1
    .param p1, "ftMessageId"    # I

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    return-object v0
.end method

.method protected getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
    .locals 1

    .line 2063
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    return-object v0
.end method

.method public getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object v0
.end method

.method public getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object v0
.end method

.method protected getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    return-object v0
.end method

.method protected getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object v0
.end method

.method protected getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    return-object v0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    return-object v0
.end method

.method public getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-object v0
.end method

.method protected getImsiFromPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 2029
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "id"    # I

    .line 1740
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1760
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 6
    .param p1, "requestUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "pAssertedId"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "sender"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "receiver"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "isGroupchat"    # Z
    .param p6, "phoneId"    # I

    .line 1217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 1221
    :cond_1
    invoke-virtual {p0, p6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork(I)Landroid/net/Network;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1864
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1865
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1866
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v1

    return-object v1

    .line 1868
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getNetwork(ZI)Landroid/net/Network;
    .locals 3
    .param p1, "sFtHttpOverDefaultPdn"    # Z
    .param p2, "phoneId"    # I

    .line 1851
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "ft_net_capability"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1855
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1856
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 1857
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0

    .line 1859
    :cond_1
    return-object v0

    .line 1852
    .end local v1    # "imsRegistration":Lcom/sec/ims/ImsRegistration;
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getOwnPhoneNum()Ljava/lang/String;
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getOwnPhoneNum(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnUris(I)Ljava/util/Set;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1873
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1875
    .local v0, "ownUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1876
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 1877
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 1878
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1879
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    goto :goto_0

    .line 1881
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOwnUris: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    return-object v0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "id"    # I

    .line 1771
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneIdByChatId(Ljava/lang/String;)I
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 776
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 780
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected getPhoneIdByIMSI(Ljava/lang/String;)I
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;

    .line 789
    if-nez p1, :cond_0

    .line 790
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    return v0

    .line 792
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v0

    .line 793
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    :goto_0
    return v1
.end method

.method protected getRcsProfile()Ljava/lang/String;
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1

    .line 1719
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1730
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 274
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sRequiredServices:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1

    .line 1422
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    return-object v0
.end method

.method protected getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    return-object v0
.end method

.method protected getUserAlias(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1444
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->dropUnsupportedCharacter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1445
    const-string v2, ""

    return-object v2

    .line 1447
    :cond_0
    return-object v0
.end method

.method public getUserAliasFromPreference(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleEventDefaultAppChanged()V
    .locals 1

    .line 1571
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendEmptyMessage(I)Z

    .line 1572
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 762
    const-string v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 764
    :cond_0
    const-string v0, "com.samsung.rcs.framework.filetransfer.category.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtTranslation:Lcom/sec/internal/ims/servicemodules/im/FtTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtTranslation;->handleIntent(Landroid/content/Intent;)V

    .line 767
    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 815
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 819
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 978
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 979
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    goto/16 :goto_1

    .line 973
    .end local v0    # "msgId":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 974
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onSimRefresh(I)V

    .line 975
    goto/16 :goto_1

    .line 967
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->startAutoConfig(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 954
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 955
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;

    .line 956
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mChatbotUri:Ljava/lang/String;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mResult:Ljava/lang/String;

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;->mCommandId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onRequestChatbotAnonymizeNotiReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    goto/16 :goto_1

    .line 949
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 950
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRequestChatbotAnonymizeResponse(Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;)V

    .line 951
    goto/16 :goto_1

    .line 960
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 961
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;

    .line 962
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;
    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 963
    .local v1, "isSuccess":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mUri:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    .line 964
    goto/16 :goto_1

    .line 945
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "isSuccess":Z
    .end local v2    # "params":Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleDDSChange()V

    .line 946
    goto/16 :goto_1

    .line 914
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 915
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 916
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onSendMessageRevokeRequestDone(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    .line 917
    goto/16 :goto_1

    .line 920
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 921
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImRevocationHandler()Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    .line 922
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImRevocationHandler;->onMessageRevokeResponseReceived(Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;)V

    .line 923
    goto/16 :goto_1

    .line 941
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->handleEventBlocklistChanged()V

    .line 942
    goto/16 :goto_1

    .line 936
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 937
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventAbortOngoingHttpFtOperation(I)V

    .line 938
    goto/16 :goto_1

    .line 931
    .end local v0    # "phoneId":I
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 932
    .restart local v0    # "phoneId":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventResumePendingHttpFtOperations(I)V

    .line 933
    goto/16 :goto_1

    .line 926
    .end local v0    # "phoneId":I
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 927
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSlmLMMSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;)V

    .line 928
    goto/16 :goto_1

    .line 873
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 874
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IMDN_RESPONSE_RECEIVED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    goto/16 :goto_1

    .line 909
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 910
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->handleFileTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V

    .line 911
    goto/16 :goto_1

    .line 904
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 905
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventProcessRejoinGCSession(I)V

    .line 906
    goto/16 :goto_1

    .line 900
    .end local v0    # "phoneId":I
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventMessageAppChanged()V

    .line 901
    goto/16 :goto_1

    .line 896
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventConfigured(I)V

    .line 897
    goto/16 :goto_1

    .line 892
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 893
    goto/16 :goto_1

    .line 888
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 889
    goto/16 :goto_1

    .line 868
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 869
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;)V

    .line 870
    goto/16 :goto_1

    .line 878
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 879
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;)V

    .line 880
    goto/16 :goto_1

    .line 836
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 837
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 838
    goto/16 :goto_1

    .line 883
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 884
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onProcessPendingMessages(I)V

    .line 885
    goto/16 :goto_1

    .line 863
    .end local v0    # "phoneId":I
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 864
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;)V

    .line 865
    goto :goto_1

    .line 858
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 859
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V

    .line 860
    goto :goto_1

    .line 852
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 853
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onComposingNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V

    .line 854
    goto :goto_1

    .line 847
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 848
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onIncomingFileTransferReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    .line 849
    goto :goto_1

    .line 841
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 842
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 843
    goto :goto_1

    .line 831
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 832
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 833
    goto :goto_1

    .line 826
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 827
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    .line 828
    goto :goto_1

    .line 821
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 822
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 823
    nop

    .line 988
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1c
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected hasChatbotParticipant(Ljava/lang/String;)Z
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1973
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1975
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEstablishedSession()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->hasEstablishedSession()Z

    move-result v0

    return v0
.end method

.method public hasIncomingSessionForA2P(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 2182
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIncomingSessionForA2P: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .line 283
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 284
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    .line 290
    return-void
.end method

.method protected isDataRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2046
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isDefaultMessageAppInUse()Z
    .locals 7

    .line 1580
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1581
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_0

    const-string v1, "always_rcs_on"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isDefaultMessageAppInUse : always true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v1, 0x1

    return v1

    .line 1585
    :cond_0
    const/4 v1, 0x0

    .line 1586
    .local v1, "currentPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "samsungPackage":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1591
    goto :goto_0

    .line 1589
    :catch_0
    move-exception v3

    .line 1590
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to currentPackage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1594
    .local v3, "result":Z
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDefaultMessageAppInUse : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    return v3
.end method

.method protected isNativeLine(ILcom/sec/ims/util/ImsUri;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 1686
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1687
    return v0

    .line 1690
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1691
    return v2

    .line 1694
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 1695
    .local v1, "myImpu":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method protected isOwnNumberChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)Z
    .locals 9
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1250
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1251
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isOwnNumberChanged: Invalid session."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return v0

    .line 1254
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1255
    .local v1, "phoneId":I
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "ownImsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 1262
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v3, "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x40000015    # 2.000005f

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 1265
    const-string v0, "IMSI"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 1267
    return v6

    .line 1268
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1269
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mOwnPhoneNumbers:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 1270
    .local v4, "ownUri":Lcom/sec/ims/util/ImsUri;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 1271
    .local v7, "prevUri":Lcom/sec/ims/util/ImsUri;
    const-string v8, "MDN"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    if-eqz v4, :cond_3

    invoke-virtual {v4, v7}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "1"

    goto :goto_0

    :cond_3
    const-string v8, "0"

    :goto_0
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v1, v8, v3}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 1274
    if-eqz v4, :cond_4

    invoke-virtual {v4, v7}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v6

    :cond_4
    return v0

    .line 1277
    .end local v3    # "dumps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ownUri":Lcom/sec/ims/util/ImsUri;
    .end local v7    # "prevUri":Lcom/sec/ims/util/ImsUri;
    :cond_5
    return v0

    .line 1258
    :cond_6
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isOwnNumberChanged: Invalid value."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return v0
.end method

.method protected isRegistered()Z
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 734
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceRegistered(ILjava/lang/String;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 746
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 747
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 748
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceRegistered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 751
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 1292
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    return v0
.end method

.method public synthetic lambda$onMessagingAppPackageReplaced$1$ImModule()V
    .locals 5

    .line 1801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "useragent_has_msgappversion"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, "version":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessagingAppPackageReplaced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1805
    .local v2, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1806
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->setMoreInfoToSipUserAgent(Ljava/lang/String;I)V

    .line 1808
    .end local v2    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_0
    goto :goto_0

    .line 1810
    .end local v0    # "version":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public synthetic lambda$onUltraPowerSavingModeChanged$2$ImModule()V
    .locals 2

    .line 1924
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUltraPowerSavingModeChanged: update features"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1926
    return-void
.end method

.method public synthetic lambda$reportChatbotAsSpam$4$ImModule(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "chatbotUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "request_id"    # Ljava/lang/String;
    .param p3, "msgIds"    # Ljava/util/List;
    .param p4, "spamType"    # Ljava/lang/String;
    .param p5, "freeText"    # Ljava/lang/String;
    .param p6, "phoneId"    # I

    .line 1959
    if-nez p1, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onReportChatbotAsSpamRespReceived(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1961
    return-void

    .line 1963
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v0

    .line 1964
    .local v0, "mUtils":Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeSpamXml(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "spamXml":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq p6, v2, :cond_1

    move v2, p6

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1966
    .local v2, "validPhoneId":I
    :goto_0
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {v3, v2, p2, p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;-><init>(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 1967
    .local v3, "param":Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportChatbotAsSpam : uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", xml = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    .line 1969
    return-void
.end method

.method public synthetic lambda$requestChatbotAnonymize$3$ImModule(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "chatbotUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I
    .param p3, "commandId"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .line 1932
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChatbotAnonymize : uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->UP_2_2:Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;

    .line 1934
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 1936
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChatbotAnonymize Privacy is disabled, Anonymization session doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-void

    .line 1941
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    .line 1942
    if-eq p2, v2, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    .local v0, "param":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    .line 1944
    .end local v0    # "param":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;
    goto :goto_2

    .line 1945
    :cond_2
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v0

    .line 1946
    .local v0, "mUtils":Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    invoke-virtual {v0, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->composeAnonymizeXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "AnonymizeXml":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    .line 1948
    if-eq p2, v2, :cond_3

    move v2, p2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    :goto_1
    invoke-direct {v3, v2, p1, v1, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1949
    .local v2, "param":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestChatbotAnonymize : xml = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    .line 1952
    .end local v0    # "mUtils":Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    .end local v1    # "AnonymizeXml":Ljava/lang/String;
    .end local v2    # "param":Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;
    :goto_2
    return-void
.end method

.method protected normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 1314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1315
    return-object p2

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1318
    .local v0, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_1

    .line 1319
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->removeTelParams()V

    .line 1321
    :cond_1
    return-object v0
.end method

.method public normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 1304
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method protected normalizeUri(ILjava/util/Collection;)Ljava/util/Set;
    .locals 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1331
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1332
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1334
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 1335
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 1336
    .local v4, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v4, :cond_1

    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/data/ImParticipantUri;-><init>(Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1337
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    sget-object v6, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v5, v6, :cond_0

    .line 1338
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->removeTelParams()V

    .line 1340
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1342
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "normalizeUri(Collection): normalized Uri is null. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_1
    goto :goto_0

    .line 1345
    .end local v4    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    return-object v1
.end method

.method protected notifyDeviceOutOfMemory()V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$rcG4_lMvDoiVjnd96QjTCRxP1yo;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$rcG4_lMvDoiVjnd96QjTCRxP1yo;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->post(Ljava/lang/Runnable;)Z

    .line 1204
    return-void
.end method

.method protected notifyRCSMessages()Z
    .locals 2

    .line 1482
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1483
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_0

    const-string v1, "notify_rcs_msg"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 1980
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    const/4 v0, 0x0

    .line 1981
    .local v0, "nConnectedCalls":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1983
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 1984
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1985
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected Call Number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    add-int/lit8 v0, v0, 0x1

    .line 1987
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 1988
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1989
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 1994
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nConnectedCalls = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    if-le v0, v3, :cond_2

    .line 1996
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1998
    :cond_2
    return-void
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 369
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 371
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 435
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 436
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 439
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered() phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", regiInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 443
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDeregistered() : already deregistered."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mHasIncomingSessionForA2P:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 448
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 449
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 450
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 408
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 409
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 411
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 415
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 417
    return-void

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 420
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCloseSession()V

    .line 423
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_2
    goto :goto_0

    .line 424
    :cond_3
    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .locals 1

    .line 1800
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hHVS3Fyll1GyneCo0R-UipBGBOI;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$hHVS3Fyll1GyneCo0R-UipBGBOI;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->post(Ljava/lang/Runnable;)Z

    .line 1811
    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 460
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 461
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsWifiConnected:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onWifiConnectionChanged(ZI)V

    .line 465
    :cond_0
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataRoamings:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 466
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onDataRoamingChanged(ZI)V

    .line 468
    :cond_1
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsOutOfServices:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 469
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    goto :goto_0

    .line 470
    :cond_2
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mIsDataStateConnected:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eq v0, v1, :cond_3

    .line 473
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onOutOfServiceChanged(ZZI)V

    .line 475
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 476
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 381
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 382
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 383
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered() phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", regiInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImDump:Lcom/sec/internal/ims/servicemodules/im/ImDump;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 387
    .local v1, "impu":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 388
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_sipuri_for_urigenerator"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
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

    .line 392
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v4, v5, :cond_0

    .line 393
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mUriGenerators:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 394
    goto :goto_1

    .line 396
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    :goto_1
    const/16 v2, 0xf

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 399
    return-void
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 1

    .line 1792
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRequestRegistrationType()Ljava/lang/Integer;
    .locals 4

    .line 705
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    return-object v0

    .line 708
    :cond_0
    const/4 v0, 0x0

    .line 709
    .local v0, "isEpdg":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 710
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 711
    const/4 v0, 0x1

    .line 713
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is device registered over epdg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mRegistrationTypes:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 1605
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceSwitched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateFeatures(I)V

    .line 1607
    return-void
.end method

.method public readMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 549
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 550
    return-void
.end method

.method public reconfiguration([J)V
    .locals 3
    .param p1, "timer"    # [J

    .line 1887
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    return-void

    .line 1890
    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    if-le v1, v2, :cond_1

    .line 1891
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    aget-wide v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1892
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    .line 1894
    :cond_1
    return-void
.end method

.method public registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerChatEventListener(Lcom/sec/internal/ims/servicemodules/im/listener/IChatEventListener;)V

    .line 535
    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 628
    return-void
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 1616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1617
    return-void
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 1621
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1622
    return-void
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 1647
    return-void
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 1652
    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 617
    return-void
.end method

.method public registerServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1364
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ServiceAvailabilityEventListener is already registered"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1366
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1367
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registered ServiceAvailabilityEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return-void
.end method

.method public rejectFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFileTransfer(I)V

    .line 693
    return-void
.end method

.method protected releaseWakeLock(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 806
    :cond_0
    return-void
.end method

.method protected removeFromPendingListWithDelay(I)V
    .locals 3
    .param p1, "msgId"    # I

    .line 2177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mNeedToRemoveFromPendingList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2179
    return-void
.end method

.method protected removeReconfigurationEvent()V
    .locals 1

    .line 2050
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->removeMessages(I)V

    .line 2051
    return-void
.end method

.method public reportChatbotAsSpam(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "request_id"    # Ljava/lang/String;
    .param p3, "chatbotUri"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "spamType"    # Ljava/lang/String;
    .param p6, "freeText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1958
    .local p4, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->post(Ljava/lang/Runnable;)Z

    .line 1970
    return-void
.end method

.method public requestChatbotAnonymize(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "chatbotUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "commandId"    # Ljava/lang/String;

    .line 1931
    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->post(Ljava/lang/Runnable;)Z

    .line 1953
    return-void
.end method

.method public resendMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->resendMessage(I)V

    .line 580
    return-void
.end method

.method public resumeReceivingTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeReceivingTransfer(I)V

    .line 600
    return-void
.end method

.method public resumeSendingTransfer(IZ)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "isResizable"    # Z

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->resumeSendingTransfer(IZ)V

    .line 595
    return-void
.end method

.method public sendFile(J)V
    .locals 1
    .param p1, "messageId"    # J

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(J)V

    .line 668
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 19
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "messageNumber"    # I
    .param p7, "isBroadcastMsg"    # Z
    .param p8, "isprotectedAccountMsg"    # Z
    .param p9, "isGLSMsg"    # Z
    .param p10, "deviceName"    # Ljava/lang/String;
    .param p11, "reliableMessage"    # Ljava/lang/String;
    .param p12, "xmsMessage"    # Ljava/lang/String;
    .param p14, "isTemporary"    # Z
    .param p15, "maapTrafficType"    # Ljava/lang/String;
    .param p16, "referenceMessageId"    # Ljava/lang/String;
    .param p17, "referenceMessageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .local p3, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .local p13, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    .line 1674
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImProcessor:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-object v0, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v17}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "result"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1495
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callback_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1496
    .local v0, "resp":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 1497
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    .line 1499
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1500
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1503
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1506
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;
    :cond_0
    return-void
.end method

.method public setAutoAcceptFt(I)V
    .locals 2
    .param p1, "accept"    # I

    .line 564
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    .line 565
    return-void
.end method

.method public setAutoAcceptFt(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "accept"    # I

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->setAutoAcceptFt(II)V

    .line 570
    return-void
.end method

.method protected setConfig(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1414
    return-void
.end method

.method protected setCountReconfiguration(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2042
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mCountReconfiguration:I

    .line 2043
    return-void
.end method

.method public setUserAlias(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 1459
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setUserAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public start()V
    .locals 4

    .line 299
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 300
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0xe

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1b

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1c

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1f

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x20

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/16 v3, 0x1e

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xb

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xc

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v3, 0xd

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    const/16 v1, 0x16

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    return-void
.end method

.method public stop()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 334
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingSession(Landroid/os/Handler;)V

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionEstablished(Landroid/os/Handler;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionClosed(Landroid/os/Handler;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingMessage(Landroid/os/Handler;)V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForComposingNotification(Landroid/os/Handler;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnNotification(Landroid/os/Handler;)V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageFailed(Landroid/os/Handler;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnResponse(Landroid/os/Handler;)V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImdnFailed(Landroid/os/Handler;)V

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForTransferProgress(Landroid/os/Handler;)V

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageRevokeResponse(Landroid/os/Handler;)V

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingMessage(Landroid/os/Handler;)V

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmImdnNotification(Landroid/os/Handler;)V

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmTransferProgress(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->handleEventDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 359
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 1631
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1632
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 1636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1637
    return-void
.end method

.method public unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1661
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mDefaultPhoneId:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 1662
    return-void
.end method

.method public unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 1666
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mFtProcessor:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 1667
    return-void
.end method

.method public unregisterServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "There is no ServiceAvailabilityEventListener registered"

    invoke-static {v0, v3}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "It is not possible to unregister different instance of a listener than previously registered"

    invoke-static {v1, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    .line 1387
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ServiceAvailabilityEventListener unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void
.end method

.method public updateExtendedBotMsgFeature(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 1188
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1189
    .local v0, "simMno":Lcom/sec/internal/constants/Mno;
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 1190
    .local v1, "botMsg":Lcom/sec/ims/presence/ServiceTuple;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_CHATBOT_EXTENDED_MSG enabled ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string v3, "0.0"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mEnabledFeatures:[J

    aget-wide v2, v2, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mEnabledFeatures:[J

    aget-wide v2, v2, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 1194
    invoke-static {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    goto :goto_1

    .line 1192
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mEnabledFeatures:[J

    aget-wide v3, v2, p1

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    not-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 1197
    :cond_3
    :goto_1
    return-void
.end method

.method protected updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "timestamp"    # Ljava/util/Date;

    .line 1398
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    if-eqz v0, :cond_0

    .line 1399
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;->onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    goto :goto_0

    .line 1401
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service availability cannot be updated, ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", remoteUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mServiceAvailabilityEventListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule;->mServiceAvailabilityEventListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :goto_0
    return-void
.end method
