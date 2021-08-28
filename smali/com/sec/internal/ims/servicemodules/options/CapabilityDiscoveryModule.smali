.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CapabilityDiscoveryModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;
    }
.end annotation


# static fields
.field private static final CONTACT_CHANGED_DELAY:I = 0x1f4

.field private static final EVT_EXCHANGE_CAPABILITIES_FOR_VSH_DELAY:I = 0x1f4

.field private static final LAST_SEEN_ACTIVE:J = 0x0L

.field private static final LAST_SEEN_UNKNOWN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityDiscModule"

.field private static final NAME:Ljava/lang/String;

.field private static final SET_OWN_CAPABILITIES_DELAY:I = 0x1f4

.field private static final SET_OWN_CAPABILITIES_DELAY_ON_REG:I = 0x64


# instance fields
.field private forcePollingGuard:Z

.field private isOfflineAddedContact:Z

.field private mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private mAvailablePhoneId:I

.field protected mBackgroundHandler:Landroid/os/Handler;

.field private mCallNumber:[Ljava/lang/String;

.field final mCapabilitiesMapList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

.field private mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

.field protected mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

.field private mCapabilityModuleOn:Z

.field private mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

.field private mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

.field mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

.field private mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;",
            ">;"
        }
    .end annotation
.end field

.field mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

.field private final mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

.field mContext:Landroid/content/Context;

.field mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHasVideoOwn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mImsRegInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialQuery:Z

.field private mIsConfigured:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConfiguredOnCapability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInCall:Z

.field private mLastCapExResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastListSubscribeStamp:J

.field private mLastPollTimestamp:J

.field private mNetworkClass:I

.field private mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

.field private mNetworkType:I

.field private mOldFeature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

.field private mOptionsSwitchOnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;

.field private final mPollingHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected mPollingIntent:Landroid/app/PendingIntent;

.field mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field private mPresenceSwitchOnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mRetrySyncContactCount:I

.field private final mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

.field mServiceTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mThrottledIntent:Landroid/app/PendingIntent;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field mUrisToRequestList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/OptionsModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 17
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "option"    # Lcom/sec/internal/ims/servicemodules/options/OptionsModule;
    .param p4, "presence"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .param p5, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p6, "imModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Ljava/util/List;

    .line 109
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$MqcxKQGuwhYGVfnF2ntQf2ufo90;

    invoke-direct {v3, v0}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$MqcxKQGuwhYGVfnF2ntQf2ufo90;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 115
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    .line 116
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Landroid/app/PendingIntent;

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    .line 128
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    .line 129
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    .line 130
    const/4 v4, 0x1

    .line 181
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 130
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    .line 134
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    .line 135
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    .line 136
    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:J

    .line 138
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    .line 139
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 148
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    .line 150
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Z

    .line 151
    const/4 v8, 0x0

    .line 185
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 151
    iput-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    .line 152
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    .line 153
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    .line 154
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    .line 155
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    .line 156
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    .line 157
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 158
    iput v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:I

    .line 159
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 160
    iput v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    .line 161
    iput v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 162
    iput-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Z

    .line 165
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    .line 167
    iput-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Z

    .line 168
    iput v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    .line 174
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    .line 175
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 176
    new-instance v10, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v11, "CapabilityDiscModule"

    const/16 v12, 0x64

    invoke-direct {v10, v1, v11, v12}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 178
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v10

    .line 179
    .local v10, "phoneCount":I
    const/4 v12, 0x0

    .local v12, "phoneId":I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 180
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v15}, Lcom/sec/ims/options/Capabilities;-><init>()V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v15, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    move-object/from16 v16, v9

    int-to-long v8, v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_0

    .line 192
    .end local v12    # "phoneId":I
    :cond_0
    invoke-direct {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->initContactCache(I)V

    .line 194
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    .line 195
    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 197
    new-instance v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-direct {v9, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    .line 198
    new-instance v9, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    invoke-direct {v9, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    .line 199
    new-instance v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-direct {v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;-><init>()V

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    .line 203
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 204
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v12

    const-string v13, "Shall not happen! Wrong order of modules instantiation in ServiceModuleManager"

    if-eqz v12, :cond_1

    .line 205
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-nez v12, :cond_3

    .line 206
    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 209
    :cond_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v12, :cond_2

    move v12, v4

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12, v13}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 213
    :cond_3
    :goto_2
    new-instance v12, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;

    invoke-direct {v12, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    .line 214
    .local v12, "intentReceiver":Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    new-instance v13, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;

    invoke-direct {v13, v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;)V

    iput-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPhoneStateListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;

    .line 217
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    iput-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPhoneStateListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;

    const/16 v15, 0x60

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-nez v13, :cond_4

    .line 221
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v13

    iput-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 222
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 225
    :cond_4
    if-le v10, v4, :cond_5

    .line 226
    const/16 v4, 0xf

    invoke-static {v0, v4, v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    :cond_5
    new-instance v4, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v4, v10, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 230
    new-instance v4, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v4, v10, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 231
    new-instance v3, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 232
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {v3, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 233
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {v3, v0, v4, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    .line 234
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v3, v0, v4, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    .line 235
    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {v4, v0, v6, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;)V

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    .line 236
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v3, v0, v4, v2, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    .line 237
    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {v3, v0, v4, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    .line 238
    const-string v3, "created"

    invoke-static {v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    return p1
.end method

.method private deregisterSimCardEventListener()V
    .locals 3

    .line 1180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    if-eqz v0, :cond_2

    .line 1181
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1183
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 1184
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1186
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1187
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 1190
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    :goto_1
    return-void
.end method

.method private disableFeature(JZ)V
    .locals 8
    .param p1, "feature"    # J
    .param p3, "forced"    # Z

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFeature: forced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

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

    .line 592
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 593
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 594
    .local v3, "ownCap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v3, p1, p2}, Lcom/sec/ims/options/Capabilities;->removeFeature(J)V

    .line 595
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 597
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 598
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    .end local v2    # "phoneId":I
    .end local v3    # "ownCap":Lcom/sec/ims/options/Capabilities;
    :cond_0
    goto :goto_0

    .line 602
    :cond_1
    return-void
.end method

.method private initContactCache(I)V
    .locals 6
    .param p1, "phoneCount"    # I

    .line 1147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 1148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1149
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 1152
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadCapabilityStorage()V
    .locals 5

    .line 1156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 1157
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

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

    .line 1158
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1159
    .local v3, "phoneId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->loadCapabilityStorage()V

    .line 1160
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;>;"
    .end local v3    # "phoneId":Ljava/lang/Integer;
    goto :goto_0

    .line 1161
    :cond_0
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPollTimestamp()J
    .locals 8

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string v1, "capdiscovery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 899
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pollTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 900
    .local v4, "lastPollTimestamp":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 901
    .local v1, "current":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadPollTimestamp: abnormal case, clear lastPollTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " to 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CapabilityDiscModule"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(J)V

    .line 904
    return-wide v2

    .line 906
    :cond_0
    return-wide v4
.end method

.method private loadThirdPartyServiceTuples(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 984
    const-string v0, "CapabilityDiscModule"

    const-string v1, "loadThirdPartyServiceTuples"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->loadThirdPartyServiceTuples(Ljava/util/List;)V

    .line 988
    :cond_0
    return-void
.end method

.method private processConfigured(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 281
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$hooe736CizkA7_WsAeJoyEdL_YQ;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$hooe736CizkA7_WsAeJoyEdL_YQ;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method private processStop()V
    .locals 1

    .line 441
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$t79PcZYFnjm1SMY36_tU9AuBH0M;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$t79PcZYFnjm1SMY36_tU9AuBH0M;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->post(Ljava/lang/Runnable;)Z

    .line 468
    return-void
.end method

.method private registerSimCardEventListener()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    if-nez v0, :cond_2

    .line 1167
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    .line 1168
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1170
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 1171
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1173
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1174
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 1177
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    :goto_1
    return-void
.end method

.method private saveUserLastActiveTimeStamp(JI)V
    .locals 4
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string v1, "capdiscovery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 921
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "CapabilityDiscModule"

    const-string/jumbo v2, "save last seen active"

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 922
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 923
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastseenactive_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "lastSeenUser":Ljava/lang/String;
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 925
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 926
    return-void
.end method


# virtual methods
.method _syncContact(Lcom/sec/internal/constants/Mno;)V
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    .line 945
    return-void
.end method

.method addFakeCapabilityInfo(Ljava/util/List;ZI)V
    .locals 6
    .param p2, "feature"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZI)V"
        }
    .end annotation

    .line 685
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p1, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFakeCapabilityInfo: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, "b":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "URIS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 694
    if-eqz p2, :cond_1

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ALL:J

    goto :goto_0

    :cond_1
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    .line 695
    .local v1, "f":J
    :goto_0
    const-string v3, "FEATURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 696
    const-string v3, "PHONEID"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const/4 v3, 0x4

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->ordinal()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 698
    return-void
.end method

.method addPollingHistory(Ljava/util/Date;)V
    .locals 1
    .param p1, "value"    # Ljava/util/Date;

    .line 1213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    return-void
.end method

.method public changeParalysed(ZI)V
    .locals 1
    .param p1, "mode"    # Z
    .param p2, "phoneId"    # I

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->changeParalysed(ZI)V

    .line 713
    return-void
.end method

.method public clearCapabilitiesCache(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 702
    const-string v0, "CapabilityDiscModule"

    const-string v1, "clearCapabilitiesCache"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->clear()V

    .line 705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(J)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->resetRefreshTime()V

    .line 708
    return-void

    .line 705
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method ddsChangedCheckRcsSwitch()V
    .locals 3

    .line 650
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 651
    .local v0, "phoneId":I
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    if-ne v1, v0, :cond_0

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current default phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityDiscModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 655
    :cond_0
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    .line 656
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 657
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stop()V

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->start()V

    .line 664
    :cond_3
    :goto_0
    return-void
.end method

.method deRegisterService(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 976
    .local p1, "serviceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "CapabilityDiscModule"

    const-string v1, "deRegisterService: called for vzw api layer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v0, v1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->deRegisterService(Ljava/util/List;I)V

    .line 981
    :cond_0
    return-void
.end method

.method deleteNonRcsDataFromContactDB(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deleteNonRcsDataFromContactDB"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1143
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->deleteNonRcsDataFromContactDB()V

    .line 1144
    return-void
.end method

.method public dump()V
    .locals 5

    .line 997
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

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->dump()V

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastPollTimestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

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

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    .line 1003
    .local v2, "config":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz v2, :cond_0

    .line 1004
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .end local v2    # "config":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    :cond_0
    goto :goto_0

    .line 1008
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->dump()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    goto :goto_1

    .line 1009
    :catch_0
    move-exception v0

    .line 1012
    :goto_1
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method enableFeature(JZ)V
    .locals 8
    .param p1, "feature"    # J
    .param p3, "forced"    # Z

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFeature: forced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

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

    .line 576
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 577
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 578
    .local v3, "ownCap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v3, p1, p2}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 579
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 581
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 582
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 585
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    .end local v2    # "phoneId":I
    .end local v3    # "ownCap":Lcom/sec/ims/options/Capabilities;
    :cond_0
    goto :goto_0

    .line 586
    :cond_1
    return-void
.end method

.method public exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "myFeatures"    # J
    .param p4, "phoneId"    # I
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v8, v3, p4

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->exchangeCapabilities(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public exchangeCapabilitiesForVSH(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->exchangeCapabilitiesForVSH(IZLjava/util/Map;)V

    .line 647
    return-void
.end method

.method public exchangeCapabilitiesForVSHOnRegi(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 1105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1107
    return-void
.end method

.method getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "phoneId"    # I

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(II)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "id"    # I
    .param p2, "phoneId"    # I

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;JI)Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "features"    # J
    .param p4, "phoneId"    # I

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "features"    # J
    .param p4, "phoneId"    # I

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/lang/String;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "lazyQuery"    # Z
    .param p4, "phoneId"    # I

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;
    .locals 7
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "features"    # J
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .line 627
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;I)[Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I

    .line 637
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 1

    .line 762
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 3
    .param p1, "phoneId"    # I

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    monitor-exit v0

    return-object v1

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    return-object v0
.end method

.method getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;
    .locals 1
    .param p1, "phoneId"    # I

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    return-object v0
.end method

.method getDefaultPhoneId()I
    .locals 1

    .line 1281
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    return v0
.end method

.method getForcePollingGuard()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 243
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 717
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    return-object v0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 1

    .line 734
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;
    .locals 9
    .param p1, "phoneId"    # I

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v7, v1, p1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/ims/options/Capabilities;

    .line 738
    move v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getOwnCapabilities(IILjava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;IZLjava/lang/String;Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .param p1, "phoneId"    # I

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getOwnCapabilitiesBase(ILcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method getOwnList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    return-object v0
.end method

.method public getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    return-object v0
.end method

.method public getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 3

    .line 248
    const-string/jumbo v0, "options"

    const-string/jumbo v1, "presence"

    const-string v2, "lastseen"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getThrottledIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object v0
.end method

.method getUrisToRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    return-object v0
.end method

.method getUserLastActive(I)J
    .locals 2
    .param p1, "phoneId"    # I

    .line 1289
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method handleDelayedSetOwnCapabilities(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1129
    const-string v0, "CapabilityDiscModule"

    const-string v1, "handleMessage: EVT_DELAYED_SET_OWN_CAPABILITIES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getRegiInfoUpdater(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 1132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setRegiInfoUpdater(IZ)V

    goto :goto_0

    .line 1135
    :cond_0
    const-string v1, "EVT_DELAYED_SET_OWN_CAPABILITIES : Delayed for a while"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/16 v0, 0x35

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1139
    :goto_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 555
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 523
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    .line 527
    const-string v0, "CapabilityDiscoveryModule disabled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    invoke-static {p1, p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unknown event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    return-void
.end method

.method public handleModuleChannelRequest(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f41

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->disableFeature(JZ)V

    .line 545
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V

    .line 546
    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->enableFeature(JZ)V

    .line 541
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V

    .line 542
    nop

    .line 551
    :goto_0
    return-void
.end method

.method public hasVideoOwnCapability(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .line 262
    const-string v0, "CapabilityDiscModule"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 265
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 266
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    .line 269
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadCapabilityStorage()V

    .line 271
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadPollTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    .line 272
    return-void
.end method

.method public isConfigured(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isOwnInfoPublished()Z
    .locals 3

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isOwnCapPublished()Z

    move-result v0

    .line 954
    .local v0, "isPublished":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOwnInfoPublished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityDiscModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return v0
.end method

.method isPollingInProgress(Ljava/util/Date;I)Z
    .locals 2
    .param p1, "current"    # Ljava/util/Date;
    .param p2, "phoneId"    # I

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->isPollingInProgress(Ljava/util/Date;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$CapabilityDiscoveryModule()V
    .locals 3

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(I)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method

.method public synthetic lambda$notifyCapabilitiesChanged$4$CapabilityDiscoveryModule(ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "uris"    # Ljava/util/List;
    .param p3, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 856
    const-string v0, "CapabilityDiscModule"

    const-string v1, "notifyCapabilitiesChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 858
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/util/ImsUri;I)V

    .line 861
    return-void
.end method

.method public synthetic lambda$notifyOwnCapabilitiesChanged$3$CapabilityDiscoveryModule(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 849
    const-string v0, "CapabilityDiscModule"

    const-string v1, "notifyOwnCapabilitiesChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyOwnCapabilitiesChanged(I)V

    .line 851
    return-void
.end method

.method public synthetic lambda$processConfigured$1$CapabilityDiscoveryModule(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 282
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 283
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v0

    const-string v2, "CapabilityDiscModule"

    if-nez v0, :cond_1

    .line 286
    const-string v0, "omit not data sim onConfigured!"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    return-void

    .line 290
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadConfig(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v0

    if-nez v0, :cond_3

    .line 294
    const-string v0, "onConfigured: start ContactCache"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    const-string v0, "onConfigured: ignore to start ContactCache because of opposite sim"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->syncContact()V

    .line 304
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 307
    .local v0, "ownCap":Lcom/sec/ims/options/Capabilities;
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 308
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    nop

    .end local v0    # "ownCap":Lcom/sec/ims/options/Capabilities;
    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, ""

    :goto_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadThirdPartyServiceTuples(I)V

    .line 319
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onImsSettingsUpdate(I)V

    .line 320
    const/16 v0, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 321
    const/16 v0, 0x34

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 322
    return-void
.end method

.method public synthetic lambda$processStop$2$CapabilityDiscoveryModule()V
    .locals 5

    .line 442
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "processStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer()V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCapabilityDiscoveryDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(J)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 454
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 455
    .local v2, "phoneId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 456
    .local v3, "ownCap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 458
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOwnCapabilitiesChanged(I)V

    .line 461
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/options/Capabilities;>;"
    .end local v2    # "phoneId":Ljava/lang/Integer;
    .end local v3    # "ownCap":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->stop()V

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->unregisterListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V

    .line 466
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deregisterSimCardEventListener()V

    .line 467
    return-void
.end method

.method loadConfig(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    const-string v0, "CapabilityDiscModule"

    const-string v1, "Config not ready"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->load()V

    .line 331
    return-void
.end method

.method notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V
    .locals 2
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "I)V"
        }
    .end annotation

    .line 855
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method notifyEABServiceAdvertiseResult(II)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "phoneId"    # I

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEABServiceAdvertiseResult: error["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyEABServiceAdvertiseResult(II)V

    .line 993
    return-void
.end method

.method notifyOwnCapabilitiesChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$w1PEjbz6V4yAQ36NUCje9n66JvM;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$w1PEjbz6V4yAQ36NUCje9n66JvM;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method onBootCompleted()V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isPhoneLockState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CapabilityDiscModule"

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "onBootCompleted : not required sync contact"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1119
    :cond_0
    const-string v0, "onBootCompleted: try sync contact"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    .line 1121
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 500
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Map;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->processCallStateChangedOnDeregi(ILjava/util/concurrent/CopyOnWriteArrayList;)V

    .line 505
    :goto_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 276
    const-string v0, "CapabilityDiscModule"

    const-string v1, "onConfigured"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->processConfigured(I)V

    .line 278
    return-void
.end method

.method onContactChanged(Z)V
    .locals 6
    .param p1, "initial"    # Z

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Z

    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:J

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onContactChanged(ZIZJ)V

    .line 794
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 472
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onDeregistered(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    .line 474
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 478
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onDeregistering(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    .line 480
    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "dmUri"    # Ljava/lang/String;

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: config changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removeMessages(ILjava/lang/Object;)V

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 562
    return-void
.end method

.method onImsSettingsUpdate(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 929
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onImsSettingsUpdate(Landroid/content/Context;I)V

    .line 930
    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:I

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onNetworkChanged(Landroid/content/Context;Lcom/sec/internal/constants/ims/os/NetworkEvent;IILjava/util/Map;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 425
    return-void
.end method

.method onOwnCapabilitiesChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onOwnCapabilitiesChanged(I)V

    .line 513
    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "CapabilityDiscModule"

    const-string v1, "onPackageUpdated: invalid packageName"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void

    .line 419
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 429
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    .line 431
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 430
    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onRegistered(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;J)V

    .line 432
    return-void
.end method

.method onRetrySyncContact()V
    .locals 2

    .line 1125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onRetrySyncContact(I)V

    .line 1126
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onServiceSwitched(ILandroid/content/ContentValues;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 258
    return-void
.end method

.method public onSimChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 484
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "onSimChanged: clear cache and init poll timer"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Z

    .line 488
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const-string/jumbo v1, "onSimChanged: isRunning() is false."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 496
    :cond_1
    return-void
.end method

.method onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V
    .locals 13
    .param p2, "availFeatures"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p5, "pidf"    # Ljava/lang/String;
    .param p6, "lastSeen"    # I
    .param p8, "phoneId"    # I
    .param p9, "isTokenUsed"    # Z
    .param p10, "extFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 843
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p7, "paidList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v12, v2, p8

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public poll(ZI)V
    .locals 6
    .param p1, "isPeriodic"    # Z
    .param p2, "phoneId"    # I

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Ljava/util/List;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->poll(Landroid/content/Context;ZILjava/util/Map;Ljava/util/List;)V

    .line 833
    return-void
.end method

.method prepareResponse(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p2, "availFeatures"    # J
    .param p4, "txId"    # Ljava/lang/String;
    .param p5, "phoneId"    # I
    .param p6, "extDestFeature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 747
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v11, v3, p5

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->prepareResponse(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    .line 749
    return-void
.end method

.method putCapabilityControlForOptionsModule(ILcom/sec/internal/ims/servicemodules/options/OptionsModule;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "options"    # Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method putOwnList(ILcom/sec/ims/options/Capabilities;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ownCap"    # Lcom/sec/ims/options/Capabilities;

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    return-void
.end method

.method putUrisToRequestList(ILjava/util/List;)V
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1241
    .local p2, "urisToRequest":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    return-void
.end method

.method putUserLastActive(IJ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "value"    # J

    .line 1293
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1294
    return-void
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    .line 566
    return-void
.end method

.method registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 959
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: called for vzw api layer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 962
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: adding service tuple to list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v0

    .line 964
    .local v0, "st":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v1

    .line 965
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    monitor-exit v1

    .line 967
    .end local v0    # "st":Lcom/sec/ims/presence/ServiceTuple;
    goto :goto_0

    .line 966
    .restart local v0    # "st":Lcom/sec/ims/presence/ServiceTuple;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 968
    .end local v0    # "st":Lcom/sec/ims/presence/ServiceTuple;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v0, v1, :cond_1

    .line 969
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: calling presence module api"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mDefaultPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->registerService(Ljava/lang/String;Ljava/lang/String;I)V

    .line 973
    :cond_1
    :goto_0
    return-void
.end method

.method removeImsRegInfoList(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I
    .locals 1
    .param p2, "requestType"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
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

    .line 797
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I

    move-result v0

    return v0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z
    .locals 10
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "isAlwaysForce"    # Z
    .param p4, "phoneId"    # I

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v8, v1, p4

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZILcom/sec/ims/options/Capabilities;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method requestInitialCapabilitiesQuery(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Z

    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestInitialCapabilitiesQuery(IZJ)V

    .line 819
    return-void
.end method

.method savePollTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string v1, "capdiscovery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 912
    .local v0, "sp":Landroid/content/SharedPreferences;
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    .line 914
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 915
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pollTimestamp"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 916
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 917
    return-void
.end method

.method setAvailablePhoneId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1285
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 1286
    return-void
.end method

.method public setCallNumber(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "CallNumber"    # Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 509
    return-void
.end method

.method setCapabilityModuleOn(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1317
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    .line 1318
    return-void
.end method

.method setHasVideoOwnCapability(ZI)V
    .locals 3
    .param p1, "value"    # Z
    .param p2, "phoneId"    # I

    .line 1257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    return-void
.end method

.method setImsRegInfoList(ILcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "imsRegInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    return-void
.end method

.method setInitialQuery(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1221
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Z

    .line 1222
    return-void
.end method

.method setIsConfigured(ZI)V
    .locals 3
    .param p1, "value"    # Z
    .param p2, "phoneId"    # I

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    return-void
.end method

.method setIsConfiguredOnCapability(ZI)V
    .locals 3
    .param p1, "value"    # Z
    .param p2, "phoneId"    # I

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    return-void
.end method

.method setIsOfflineAddedContact(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1193
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Z

    .line 1194
    return-void
.end method

.method setLastCapExResult(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;I)V
    .locals 2
    .param p1, "value"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "phoneId"    # I

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    return-void
.end method

.method setLastListSubscribeStamp(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1217
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:J

    .line 1218
    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "isLatching"    # Z
    .param p3, "phoneId"    # I

    .line 837
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->setLegacyLatching(Landroid/content/Context;Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v0

    return v0
.end method

.method setNetworkClass(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1201
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:I

    .line 1202
    return-void
.end method

.method setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 0
    .param p1, "value"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1197
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1198
    return-void
.end method

.method setNetworkType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1205
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    .line 1206
    return-void
.end method

.method setOldFeature(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "phoneId"    # I

    .line 1277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    return-void
.end method

.method public setOwnCapabilities(IZ)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "notifyToRm"    # Z

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v7, v2, p1

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->setOwnCapabilities(Landroid/content/Context;IZLjava/util/Map;IZLjava/lang/String;)V

    .line 744
    return-void
.end method

.method setPresenceSwitch(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "value"    # Z

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    return-void
.end method

.method setRetrySyncContactCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1305
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    .line 1306
    return-void
.end method

.method setThrottledIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1265
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Landroid/app/PendingIntent;

    .line 1266
    return-void
.end method

.method setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0
    .param p1, "value"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 1273
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 1274
    return-void
.end method

.method setUserActive(ZI)V
    .locals 4
    .param p1, "isActive"    # Z
    .param p2, "phoneId"    # I

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC successful user activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 680
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->saveUserLastActiveTimeStamp(JI)V

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPC successful user activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method setforcePollingGuard(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1209
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Z

    .line 1210
    return-void
.end method

.method settOptionsSwitch(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "value"    # Z

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    return-void
.end method

.method public start()V
    .locals 2

    .line 335
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    return-void

    .line 340
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->registerListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->start()V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V

    .line 348
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerSimCardEventListener()V

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateMsgAppInfo(Z)V

    .line 351
    return-void
.end method

.method startPoll(Ljava/util/Date;I)V
    .locals 6
    .param p1, "current"    # Ljava/util/Date;
    .param p2, "phoneId"    # I

    .line 822
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:J

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 823
    .local v0, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 824
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 825
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(J)V

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessage(Landroid/os/Message;)Z

    .line 829
    :goto_0
    return-void
.end method

.method startPollingTimer(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 866
    .local v0, "delay":J
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_rand_delay_periodic_poll"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getRandomizedDelayForPeriodicPolling(IJ)J

    move-result-wide v0

    .line 870
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 871
    return-void

    .line 873
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(J)V

    .line 874
    return-void
.end method

.method startPollingTimer(J)V
    .locals 4
    .param p1, "millis"    # J

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPollingTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer()V

    .line 883
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    .line 885
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 886
    return-void
.end method

.method public stop()V
    .locals 0

    .line 436
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 437
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->processStop()V

    .line 438
    return-void
.end method

.method stopPollingTimer()V
    .locals 2

    .line 889
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "stopPollingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Landroid/app/PendingIntent;

    .line 895
    :cond_0
    return-void
.end method

.method syncContact()V
    .locals 3

    .line 933
    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "syncContact:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 935
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 936
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    goto :goto_0

    .line 938
    :cond_0
    const-string/jumbo v2, "syncContact: sim is not loaded."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setIsBlockedContactChange(Z)V

    .line 941
    :goto_0
    return-void
.end method

.method triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V

    .line 1111
    return-void
.end method

.method unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .param p2, "phoneId"    # I

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    .line 570
    return-void
.end method

.method updateMsgAppInfo(Z)V
    .locals 16
    .param p1, "initialize"    # Z

    .line 354
    move-object/from16 v1, p0

    const-string v2, "CapabilityDiscModule"

    const-string v3, ""

    .line 356
    .local v3, "msgAppPkgName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 357
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 359
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const-string v4, "Xbot.Version"

    .line 361
    .local v4, "msgAppMetaDataTag":Ljava/lang/String;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "msgAppXbotVer":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 365
    .local v6, "richCardVersionFloat":F
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 368
    .end local v6    # "richCardVersionFloat":F
    :cond_0
    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v6, v7}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v6

    .line 369
    .local v6, "xbotMsgTuple":Lcom/sec/ims/presence/ServiceTuple;
    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v7, v8}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v7

    .line 370
    .local v7, "chatbotTuple":Lcom/sec/ims/presence/ServiceTuple;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMsgAppInfo: msgAppPkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", new:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v8, v6, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 374
    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v8, v9, v5}, Lcom/sec/ims/presence/ServiceTuple;->setServiceVersion(JLjava/lang/String;)V

    .line 375
    if-nez p1, :cond_4

    .line 376
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 378
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 379
    .local v10, "phoneId":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v11}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 381
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v11, v10}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v11

    .line 382
    .local v11, "ownPresenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    iget-object v12, v7, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v12

    if-nez v12, :cond_1

    .line 383
    const-string/jumbo v12, "updateMsgAppInfo: chatbot not registered"

    invoke-static {v2, v10, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 386
    :cond_1
    iget-object v12, v6, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v12, v6, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string v13, "0.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 388
    const-string/jumbo v12, "updateMsgAppInfo: re PUBLISH"

    invoke-static {v2, v10, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    invoke-virtual {v11, v6}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 391
    iput-object v5, v6, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    .line 392
    invoke-virtual {v11, v6}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 394
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->removeMessages(I)V

    .line 395
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v12, v13}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 398
    :cond_2
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v14}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v12, "updateMsgAppInfo: update REGISTER"

    invoke-static {v2, v10, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 400
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v12, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->updateExtendedBotMsgFeature(I)V

    .line 401
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v13}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v13

    invoke-interface {v12, v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendReRegister(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    .end local v10    # "phoneId":I
    .end local v11    # "ownPresenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 410
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "msgAppMetaDataTag":Ljava/lang/String;
    .end local v5    # "msgAppXbotVer":Ljava/lang/String;
    .end local v6    # "xbotMsgTuple":Lcom/sec/ims/presence/ServiceTuple;
    .end local v7    # "chatbotTuple":Lcom/sec/ims/presence/ServiceTuple;
    :cond_4
    goto :goto_2

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error retrieving msgapp("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    return-void
.end method

.method public updateOwnCapabilities(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    .line 518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:I

    .line 517
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->updateOwnCapabilities(Landroid/content/Context;Ljava/util/Map;IZI)V

    .line 519
    return-void
.end method

.method updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "needAdd"    # Z
    .param p3, "phoneId"    # I

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v0

    return v0
.end method
