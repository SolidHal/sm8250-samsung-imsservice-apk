.class public Lcom/sec/internal/ims/core/PdnController;
.super Landroid/os/Handler;
.source "PdnController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IPdnController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/PdnController$NetworkCallback;,
        Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;,
        Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;,
        Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x6e

.field private static final EVENT_EPDG_CONNECTION_CHANGED:I = 0x68

.field private static final EVENT_EPDG_IKEERROR:I = 0x6d

.field private static final EVENT_LINKPROPERTIES_CHANGED:I = 0x6f

.field private static final EVENT_PDN_CONNECTED:I = 0x6c

.field private static final EVENT_PDN_DISCONNECTED:I = 0x67

.field private static final EVENT_REQUEST_NETWORK:I = 0x65

.field private static final EVENT_REQUEST_STOP_PDN:I = 0x6b

.field private static final EVENT_STOP_PDN_COMPLETED:I = 0x66

.field private static final EVENT_WIFI_CONNECTED:I = 0x69

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final ECC_IWLAN:Ljava/lang/String;

.field private final PROPERTY_ECC_PATH:Ljava/lang/String;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDefaultPhoneId:I

.field private mEPDNintfName:[Ljava/lang/String;

.field private final mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsDisconnecting:Z

.field private mNeedCellLocationUpdate:Z

.field private final mNetworkCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/PdnController$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/os/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

.field private final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private simmanagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    .line 95
    const-class v0, Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 756
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 115
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    .line 117
    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    .line 125
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultPhoneId:I

    .line 133
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 136
    const-string/jumbo v2, "ril.subtype"

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->PROPERTY_ECC_PATH:Ljava/lang/String;

    .line 137
    const-string v2, "IWLAN"

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->ECC_IWLAN:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->makeEpdgHandoverListener()Lcom/sec/ims/ImsManager$EpdgListener;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 516
    new-instance v2, Lcom/sec/internal/ims/core/PdnController$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/PdnController$2;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 530
    new-instance v2, Lcom/sec/internal/ims/core/PdnController$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/PdnController$3;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 757
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 758
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 759
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 760
    new-instance v2, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 761
    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 762
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 734
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 115
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    .line 117
    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultPhoneId:I

    .line 133
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 134
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 136
    const-string/jumbo v0, "ril.subtype"

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->PROPERTY_ECC_PATH:Ljava/lang/String;

    .line 137
    const-string v0, "IWLAN"

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->ECC_IWLAN:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->makeEpdgHandoverListener()Lcom/sec/ims/ImsManager$EpdgListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 516
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/PdnController$2;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 530
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/PdnController$3;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 736
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 737
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 738
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 741
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->simmanagers:Ljava/util/List;

    .line 742
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 743
    .local v0, "phoneCount":I
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getWfcEpdgManager()Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 744
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    .line 746
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultPhoneId:I

    .line 748
    const/16 v1, 0x1011

    .line 750
    .local v1, "flags":I
    new-instance v2, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 752
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const/16 v5, 0xc8

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 753
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/PdnController;)Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/PdnController;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/PdnController;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/PdnController;->notifyEpdgRequest(IZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/PdnController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->notifyEpdgIpsecDisconnected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/PdnController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->isMobileDataConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/core/PdnController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/PdnController;IIZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/PdnController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->notifySnapshotState(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/PdnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 92
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultPhoneId:I

    return v0
.end method

.method private determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .param p1, "hostAddress"    # Ljava/lang/String;

    .line 1443
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1448
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1449
    :catch_0
    move-exception v1

    .line 1450
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "determineIpAddress: invalid address -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-object v0

    .line 1444
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "determineIpAddress: empty address."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-object v0
.end method

.method private getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;
    .locals 7
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1622
    if-eqz p1, :cond_3

    .line 1623
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 1624
    .local v0, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    .local v1, "dnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    .local v2, "ipv4DnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v3, "ipv6DnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1629
    .local v5, "dns":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1630
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1631
    :cond_0
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1632
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    .end local v5    # "dns":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1637
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1638
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1639
    return-object v1

    .line 1641
    .end local v0    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v1    # "dnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "ipv4DnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ipv6DnsServerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkCapability(I)I
    .locals 1
    .param p1, "network"    # I

    .line 847
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    .line 863
    const/16 v0, 0xc

    return v0

    .line 857
    :cond_0
    const/16 v0, 0x9

    return v0

    .line 860
    :cond_1
    const/16 v0, 0xa

    return v0

    .line 854
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private handleConnectedPdnType(IILcom/sec/internal/ims/core/PdnController$NetworkCallback;Ljava/lang/String;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p4, "ifaceName"    # Ljava/lang/String;

    .line 1162
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1163
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {p3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1164
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getLastRequestedNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 1165
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1166
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1167
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onPdnConnected epdg network for ims pdn"

    invoke-static {v3, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1168
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1169
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v3

    .line 1170
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1171
    .local v5, "nslistener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5, v6, v2, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1172
    invoke-interface {v5, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    .line 1173
    .end local v5    # "nslistener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_0

    .line 1174
    :cond_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1176
    :cond_1
    const/16 v3, 0xf

    if-ne p1, v3, :cond_3

    .line 1177
    const-string/jumbo v3, "ril.subtype"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    .local v3, "eccPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eccPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1179
    const-string v4, "IWLAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1180
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 1182
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object p4, v4, p2

    .line 1183
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConnectedPdnType: eccPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mEPDNintfName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1187
    .end local v3    # "eccPath":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1188
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1190
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v4

    invoke-direct {p0, v1, v4, v2, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    .line 1192
    :cond_4
    return-void
.end method

.method private isMobileDataConnected(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "mobilecConnected":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 501
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 502
    .local v2, "netInfo":[Landroid/net/Network;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 503
    .local v5, "nw":Landroid/net/Network;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 504
    .local v6, "ni":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 505
    :cond_0
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 506
    :cond_1
    const/4 v0, 0x1

    .line 507
    goto :goto_1

    .line 502
    .end local v5    # "nw":Landroid/net/Network;
    .end local v6    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":[Landroid/net/Network;
    :cond_3
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Phone Id = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MobileConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 513
    return v0
.end method

.method private makeEpdgHandoverListener()Lcom/sec/ims/ImsManager$EpdgListener;
    .locals 1

    .line 150
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/PdnController$1;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    return-object v0
.end method

.method private notifyDataConnectionState(IIZI)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "dataRegState"    # I
    .param p3, "needNotify"    # Z
    .param p4, "phoneId"    # I

    .line 1736
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDataConnectionState"

    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1738
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1739
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v0, :cond_0

    .line 1740
    return-void

    .line 1743
    :cond_0
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 1744
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initialize PendedEPDGWeakSignal flag"

    invoke-static {v1, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1745
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 1748
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnectionState: needNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " dataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRegState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1748
    invoke-static {v1, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1754
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    .line 1755
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    .line 1758
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1759
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 1762
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    if-eq p2, v1, :cond_5

    .line 1763
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1764
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 1766
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1767
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1768
    .local v3, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v5

    invoke-interface {v3, v4, v5, p4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1769
    .end local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_0

    .line 1770
    :cond_4
    monitor-exit v1

    .line 1772
    :cond_5
    return-void

    .line 1770
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private notifyEpdgIpsecDisconnected(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1698
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyEpdgIpsecDisconnected:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1700
    .local v1, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgIpsecDisconnected(I)V

    .line 1701
    .end local v1    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_0

    .line 1702
    :cond_0
    return-void
.end method

.method private notifyEpdgRequest(IZZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailablity"    # Z
    .param p3, "isRegisterRequest"    # Z

    .line 1687
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyEpdgRequest:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1689
    .local v1, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    if-eqz p3, :cond_0

    .line 1690
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgRegisterRequested(IZ)V

    goto :goto_1

    .line 1692
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDeregisterRequested(I)V

    .line 1694
    .end local v1    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    :goto_1
    goto :goto_0

    .line 1695
    :cond_1
    return-void
.end method

.method private notifySnapshotState(II)V
    .locals 7
    .param p1, "snapshotState"    # I
    .param p2, "phoneId"    # I

    .line 1705
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1706
    return-void

    .line 1708
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySnapshotState: snapshotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1709
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 1710
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 1712
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v0

    sget v1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1713
    .local v0, "suspendedBySnapshot":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 1714
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1715
    .local v4, "listener":Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1717
    .local v5, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2300(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v6

    if-eq v6, p2, :cond_2

    .line 1718
    goto :goto_1

    .line 1721
    :cond_2
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 1722
    goto :goto_1

    .line 1725
    :cond_3
    if-eqz v0, :cond_4

    .line 1726
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspendedBySnapshot(I)V

    goto :goto_2

    .line 1728
    :cond_4
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V

    .line 1730
    .end local v4    # "listener":Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .end local v5    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :goto_2
    goto :goto_1

    .line 1731
    :cond_5
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1733
    .end local v0    # "suspendedBySnapshot":Z
    :cond_6
    :goto_3
    return-void
.end method

.method private onDefaultNetworkChanged()V
    .locals 6

    .line 1377
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultNetworkChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1379
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1381
    .local v2, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->simmanagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1382
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    .line 1383
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_1

    .line 1384
    .end local v2    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_3

    .line 1386
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1387
    .restart local v2    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    .line 1388
    .end local v2    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_2

    .line 1390
    :cond_3
    :goto_3
    monitor-exit v0

    .line 1391
    return-void

    .line 1390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onEpdgConnected(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "connected"    # Z

    .line 1260
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1261
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgEvent onEpdgConnected: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsEpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1261
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1264
    const-string v1, "ims"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1268
    :cond_0
    const/4 v1, 0x0

    .line 1269
    .local v1, "existCallBack":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1270
    .local v3, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    invoke-static {v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1271
    const/4 v1, 0x1

    .line 1272
    goto :goto_1

    .line 1274
    .end local v3    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :cond_1
    goto :goto_0

    .line 1276
    :cond_2
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEpdgConnected: existCallBack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dataRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mobileDataRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " voiceRat ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1276
    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1282
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1283
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1284
    return-void

    .line 1287
    :cond_3
    const/16 v3, 0x12

    if-eqz p3, :cond_6

    .line 1289
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1290
    return-void

    .line 1292
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1293
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v4

    .line 1294
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1295
    .local v6, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-interface {v6, v3, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1296
    invoke-interface {v6, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    .line 1297
    .end local v6    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_2

    .line 1298
    :cond_5
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1301
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1302
    return-void

    .line 1304
    :cond_7
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1306
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v2

    .line 1307
    .local v2, "targetMobileRat":I
    if-ne v2, v3, :cond_8

    .line 1308
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v2

    .line 1311
    :cond_8
    nop

    .line 1315
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v3

    .line 1316
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1317
    .local v5, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v6

    invoke-interface {v5, v2, v6, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1318
    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDisconnected(I)V

    .line 1319
    .end local v5    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_3

    .line 1320
    :cond_9
    monitor-exit v3

    .line 1322
    .end local v2    # "targetMobileRat":I
    :goto_4
    return-void

    .line 1320
    .restart local v2    # "targetMobileRat":I
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 1265
    .end local v1    # "existCallBack":Z
    .end local v2    # "targetMobileRat":I
    :cond_a
    :goto_5
    return-void
.end method

.method private onEpdgIkeError(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1254
    .local v2, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onIKEAuthFAilure(I)V

    .line 1255
    .end local v2    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    goto :goto_0

    .line 1256
    :cond_0
    monitor-exit v0

    .line 1257
    return-void

    .line 1256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLinkPropertiesChanged(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1225
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1226
    .local v1, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    if-nez v1, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "ignore onLinkPropertiesChanged as requestStopNetwork preceded this"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1230
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v0, p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 1236
    .local v0, "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2000(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result v2

    .line 1237
    .local v2, "type":I
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2100(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v3

    .line 1238
    .local v3, "pcscfAddressChanged":Z
    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    if-eqz v3, :cond_4

    .line 1239
    :cond_1
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1902(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 1240
    sget-object v5, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onLinkPropertiesChanged: LinkProperties changed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    if-lt v2, v4, :cond_3

    .line 1243
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-interface {p2, p1, v4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(IZ)V

    .line 1245
    :cond_3
    if-eqz v3, :cond_4

    .line 1246
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILjava/util/List;)V

    .line 1249
    :cond_4
    return-void

    .line 1226
    .end local v0    # "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .end local v1    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .end local v2    # "type":I
    .end local v3    # "pcscfAddressChanged":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p4, "network"    # Landroid/net/Network;

    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 1106
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    move-object v0, v2

    .line 1107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    if-nez v0, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore onPdnConnected: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as requestStopNetwork preceded this"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1115
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1122
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: networkType , network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1124
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1702(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Landroid/net/Network;)Landroid/net/Network;

    .line 1126
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1127
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 1128
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1802(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Z)Z

    .line 1131
    :cond_2
    new-instance v3, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v3, v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 1133
    .local v3, "linkProperties":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPdnConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mSuspended="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1800(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " link properties "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1136
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/sec/internal/ims/core/PdnController;->handleConnectedPdnType(IILcom/sec/internal/ims/core/PdnController$NetworkCallback;Ljava/lang/String;)V

    .line 1138
    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1139
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2000(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result v4

    .line 1140
    .local v4, "type":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    .line 1141
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-interface {p3, p1, v5}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(IZ)V

    .line 1143
    :cond_4
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2100(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1144
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p3, p1, v5}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILjava/util/List;)V

    .line 1146
    :cond_5
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1902(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 1147
    .end local v4    # "type":I
    goto :goto_1

    .line 1149
    :cond_6
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1902(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 1150
    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$2200(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v4

    invoke-interface {v4, p1, p4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    .line 1152
    :goto_1
    return-void

    .line 1116
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    .end local v3    # "linkProperties":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    :cond_7
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPdnConnected: linkProperties or interface name is null, wait for next onPdnConnected()"

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    return-void

    .line 1107
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1195
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1198
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 1200
    const/4 v1, 0x0

    const/16 v2, 0xf

    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1201
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1203
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_0

    .line 1204
    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1205
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 1208
    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-ne p1, v2, :cond_2

    .line 1209
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object v1, v2, p2

    .line 1212
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 1213
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1214
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v3

    invoke-interface {p3, p1, v3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onDisconnected(IZ)V

    .line 1215
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1216
    .local v3, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    new-instance v4, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1902(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 1217
    invoke-static {v3, v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1702(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Landroid/net/Network;)Landroid/net/Network;

    .line 1219
    .end local v3    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :cond_3
    monitor-exit v2

    .line 1220
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onStopPdnCompleted()V
    .locals 6

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 1093
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 1096
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1097
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    .line 1098
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;>;"
    goto :goto_0

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onWifiConnected()V
    .locals 9

    .line 1325
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1327
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1328
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1329
    .local v3, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->simmanagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1330
    .local v5, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    .line 1331
    .local v6, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v6, :cond_0

    .line 1332
    goto :goto_1

    .line 1334
    :cond_0
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v7

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    invoke-interface {v3, v7, v2, v8}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1335
    .end local v5    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v6    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    goto :goto_1

    .line 1336
    .end local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_3

    .line 1338
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1339
    .restart local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    .line 1340
    .local v4, "defaultPhoneId":I
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    .line 1341
    .local v5, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v5, :cond_4

    .line 1342
    goto :goto_2

    .line 1344
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v3, v6, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1345
    .end local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    .end local v4    # "defaultPhoneId":I
    .end local v5    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    goto :goto_2

    .line 1347
    :cond_5
    :goto_3
    monitor-exit v0

    .line 1348
    return-void

    .line 1347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onWifiDisconnected()V
    .locals 9

    .line 1351
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiDisConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1353
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1354
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1355
    .local v3, "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->simmanagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1356
    .local v5, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    .line 1357
    .local v6, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v6, :cond_0

    .line 1358
    goto :goto_1

    .line 1360
    :cond_0
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v7

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v8

    invoke-interface {v3, v7, v2, v8}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1361
    .end local v5    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v6    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    goto :goto_1

    .line 1362
    .end local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_3

    .line 1364
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1365
    .restart local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    .line 1366
    .local v4, "defaultPhoneId":I
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    .line 1367
    .local v5, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v5, :cond_4

    .line 1368
    goto :goto_2

    .line 1370
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v3, v6, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 1371
    .end local v3    # "listener":Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
    .end local v4    # "defaultPhoneId":I
    .end local v5    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    goto :goto_2

    .line 1373
    :cond_5
    :goto_3
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 16
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 934
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 935
    .local v5, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestNetwork: networkType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", callback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    if-nez v5, :cond_0

    const-string v7, "null"

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 935
    invoke-virtual {v0, v3, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 937
    if-eqz v5, :cond_3

    .line 938
    invoke-static {v5}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 940
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_2

    .line 946
    :cond_1
    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$4;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sec/internal/ims/core/PdnController$4;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/PdnController$NetworkCallback;)V

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->post(Ljava/lang/Runnable;)Z

    .line 954
    :cond_2
    return-void

    .line 958
    :cond_3
    :goto_2
    iget-object v6, v1, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v6

    .line 959
    :try_start_1
    iget-boolean v0, v1, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v0, :cond_4

    .line 960
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Wait until ongoing stop request done."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 964
    monitor-exit v6

    return-void

    .line 966
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    .line 969
    move v7, v6

    goto :goto_3

    :cond_5
    move v7, v0

    .line 970
    .local v7, "transport":I
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkCapability(I)I

    move-result v8

    .line 975
    .local v8, "capabilityFromNetworkType":I
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 976
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v10, 0x0

    .line 977
    .local v10, "needRequestMobileNetwork":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_ConfigApnForHideDataIcon"

    const-string v13, ""

    invoke-virtual {v11, v3, v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 978
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RCS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 979
    .local v11, "cscConfigApnForHideDataIconRCS":Z
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v11, :cond_6

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v12

    .line 981
    .local v12, "bearer":I
    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v13

    .line 982
    .local v13, "preferredPdnType":I
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v14

    .line 983
    .local v14, "dataRegState":I
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result v15

    if-nez v15, :cond_6

    iget-object v15, v1, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 984
    invoke-static {v15}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-object v15, v1, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 985
    invoke-static {v15}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eq v14, v6, :cond_6

    sget-object v15, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, v1, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v15, v6, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v6

    sget v15, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v6, v15, :cond_6

    if-nez v2, :cond_6

    const/4 v6, 0x1

    if-ne v13, v6, :cond_6

    .line 990
    const/4 v10, 0x1

    .line 994
    .end local v12    # "bearer":I
    .end local v13    # "preferredPdnType":I
    .end local v14    # "dataRegState":I
    :cond_6
    if-eqz v10, :cond_7

    .line 995
    const/16 v8, 0x8

    .line 999
    :cond_7
    move v6, v8

    .line 1001
    .local v6, "capability":I
    sget-object v12, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "startPdnConnectivity: transport "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " capability "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " needRequestMobileNetwork "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v3, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    new-instance v12, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v12}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1006
    .local v12, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v12, v7}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1008
    if-nez v7, :cond_a

    .line 1009
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v13

    .line 1010
    .local v13, "subId":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v14

    .line 1011
    .local v14, "config":Ljava/lang/String;
    const-string v15, "DSDS_DI"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "DSDA_DI"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1012
    const-string v15, "DSDS_SI_DDS"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget v15, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    if-ne v2, v15, :cond_9

    :cond_8
    const/4 v0, 0x1

    .line 1013
    .local v0, "isSpecifierNeeded":Z
    :cond_9
    if-lez v13, :cond_a

    if-eqz v0, :cond_a

    .line 1014
    new-instance v15, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v15}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v15, v13}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 1018
    .end local v0    # "isSpecifierNeeded":Z
    .end local v13    # "subId":I
    .end local v14    # "config":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v13

    .line 1020
    .local v13, "request":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;-><init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V

    move-object v14, v0

    .line 1021
    .local v14, "nc":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setLastRequestedNetworkType()V

    .line 1026
    const/4 v0, 0x1

    if-eq v2, v0, :cond_b

    if-nez v2, :cond_c

    :cond_b
    if-eqz v10, :cond_d

    .line 1028
    :cond_c
    :try_start_2
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v13, v14}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_4

    .line 1032
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1030
    :cond_d
    iget-object v0, v1, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v13, v14}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/net/ConnectivityManager$TooManyRequestsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1037
    :goto_4
    goto :goto_6

    .line 1033
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_5
    sget-object v15, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onNetworkRequestFail()V

    .line 1036
    iget-object v2, v1, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_6
    return-void

    .line 966
    .end local v6    # "capability":I
    .end local v7    # "transport":I
    .end local v8    # "capabilityFromNetworkType":I
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v10    # "needRequestMobileNetwork":Z
    .end local v11    # "cscConfigApnForHideDataIconRCS":Z
    .end local v12    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v13    # "request":Landroid/net/NetworkRequest;
    .end local v14    # "nc":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 9
    .param p1, "network"    # I
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1041
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v1

    .line 1047
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1048
    .local v2, "request":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1049
    nop

    .end local v2    # "request":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1051
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 1052
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1053
    .local v1, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestStopNetwork: network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callback is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    if-eqz v1, :cond_1

    const-string v5, "exist"

    goto :goto_0

    :cond_1
    const-string v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1053
    invoke-virtual {v3, p2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1055
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1056
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 1057
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1059
    :try_start_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1062
    goto :goto_1

    .line 1060
    :catch_0
    move-exception v4

    .line 1061
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v5, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 1071
    const/16 v4, 0x66

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->removeMessages(I)V

    .line 1072
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v5

    .line 1073
    .local v5, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1076
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v5    # "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    .line 1078
    .local v1, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    const/16 v2, 0xb

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1081
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 1082
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_4

    .line 1083
    nop

    .line 1084
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v2

    .line 1083
    invoke-direct {p0, v0, v2, v3, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_2

    .line 1086
    :cond_3
    if-ne p1, v0, :cond_4

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1087
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 1089
    :cond_4
    :goto_2
    return-void

    .line 1076
    .end local v1    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1049
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 1794
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1796
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "History of PdnController:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1800
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1801
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method public filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1417
    .local p1, "inetAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p1, :cond_4

    .line 1419
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1420
    .local v2, "inetAddress":Ljava/net/InetAddress;
    sget-boolean v3, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    if-eqz v3, :cond_0

    .line 1421
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpAddressList: inetAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    if-eqz v2, :cond_3

    .line 1425
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1426
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1427
    sget-boolean v3, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    if-eqz v3, :cond_1

    .line 1428
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpAddressList:  inetAddress IP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1428
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1433
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_3
    goto :goto_0

    .line 1439
    :cond_4
    return-object v0
.end method

.method public getCellLocation(IZ)Landroid/telephony/CellLocation;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "forceSync"    # Z

    .line 307
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 308
    .local v0, "cl":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    if-eqz v1, :cond_1

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 310
    .local v1, "subId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCellLocationBySubId(I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 311
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get latest celllocation and store, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellLocation(Landroid/telephony/CellLocation;)V

    .line 313
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 316
    .end local v1    # "subId":I
    :cond_1
    return-object v0
.end method

.method public getDefaultNetworkBearer()I
    .locals 6

    .line 1805
    const/4 v0, 0x0

    .line 1806
    .local v0, "defaultNetworkBearer":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1807
    .local v1, "activeNetwork":Landroid/net/Network;
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1808
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1809
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1810
    const/4 v0, 0x1

    .line 1813
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultNetworkBearer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    if-nez v0, :cond_1

    const-string v5, "CELLULAR"

    goto :goto_0

    :cond_1
    const-string v5, " WIFI"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1813
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return v0
.end method

.method public getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;
    .locals 3
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1607
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1608
    .local v1, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1609
    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1611
    .end local v1    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :cond_0
    monitor-exit v0

    .line 1613
    const/4 v0, 0x0

    return-object v0

    .line 1611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDnsServersByNetType()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1618
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 1
    .param p1, "phoneId"    # I

    .line 302
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;
    .locals 3
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1591
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1592
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1593
    .local v1, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1594
    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, "intfName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1596
    monitor-exit v0

    return-object v2

    .line 1599
    .end local v1    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .end local v2    # "intfName":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    .line 1601
    const/4 v0, 0x0

    return-object v0

    .line 1599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntfNameByNetType()Ljava/lang/String;
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1650
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1651
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1653
    .local v1, "intfname":Ljava/lang/String;
    return-object v1

    .line 1655
    .end local v1    # "intfname":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1535
    .local v0, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    if-eqz v0, :cond_0

    .line 1536
    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v1

    return-object v1

    .line 1539
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMobileDataRegState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 293
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataRegState()I

    move-result v0

    return v0
.end method

.method public getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;
    .locals 3
    .param p1, "phoneId"    # I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 325
    .local v1, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 326
    return-object v1

    .line 328
    .end local v1    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    :cond_0
    goto :goto_0

    .line 329
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NetworkState is not exist. Return null.."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneStateListener(I)Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    .locals 3
    .param p1, "phoneId"    # I

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;

    .line 899
    .local v1, "psli":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;->getInternalSimSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 900
    return-object v1

    .line 902
    .end local v1    # "psli":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    :cond_0
    goto :goto_0

    .line 903
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPhoneStateListener: psli is not exist."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceRegState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 288
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 1
    .param p1, "phoneId"    # I

    .line 275
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 817
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;

    .line 818
    .local v0, "lpEvent":Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->access$1400(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->access$1500(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/PdnController;->onLinkPropertiesChanged(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    .line 819
    goto :goto_1

    .line 838
    .end local v0    # "lpEvent":Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onDefaultNetworkChanged()V

    .line 839
    goto :goto_1

    .line 834
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->onEpdgIkeError(I)V

    .line 835
    goto :goto_1

    .line 808
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 809
    .local v0, "pdnEvent":Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->access$1200(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->access$1300(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    .line 810
    goto :goto_1

    .line 800
    .end local v0    # "pdnEvent":Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    .line 801
    goto :goto_1

    .line 830
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiDisconnected()V

    .line 831
    goto :goto_1

    .line 826
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiConnected()V

    .line 827
    goto :goto_1

    .line 822
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/internal/ims/core/PdnController;->onEpdgConnected(ILjava/lang/String;Z)V

    .line 823
    goto :goto_1

    .line 813
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    .line 814
    goto :goto_1

    .line 804
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onStopPdnCompleted()V

    .line 805
    goto :goto_1

    .line 796
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    .line 797
    nop

    .line 844
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasEmergencyServiceOnly(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 269
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 270
    .local v0, "subId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public initSequentially()V
    .locals 7

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->simmanagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 767
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    new-instance v2, Lcom/sec/internal/constants/ims/os/NetworkState;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;-><init>(I)V

    .line 768
    .local v2, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    sget-object v3, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V

    .line 769
    sget-object v3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    .line 770
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setOperatorNumeric(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellLocation(Landroid/telephony/CellLocation;)V

    .line 772
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DSDS_SI_DDS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 774
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "do not make PhoneStateListenerInternal with non-DDS slot"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    goto :goto_0

    .line 778
    :cond_0
    new-instance v3, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/core/PdnController;I)V

    .line 779
    .local v3, "psli":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 781
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    .end local v3    # "psli":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 783
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 784
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 785
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 787
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 788
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 789
    return-void
.end method

.method public isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1490
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    .line 1492
    move-object v2, p2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 1493
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1496
    .end local v2    # "phoneId":I
    :cond_1
    const/4 v2, 0x0

    .line 1498
    .local v2, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v3

    .line 1499
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1500
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isConnected: No callback exists"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    monitor-exit v3

    return v1

    .line 1503
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    move-object v2, v4

    .line 1504
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    if-eqz v2, :cond_a

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1700(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I

    move-result v3

    if-eq v3, p1, :cond_3

    goto/16 :goto_4

    .line 1510
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->isDisconnectRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1511
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnected: Disconnect msg is in queue for networkType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1512
    return v1

    .line 1516
    :cond_4
    if-eqz p1, :cond_9

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 1521
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1700(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1522
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v3, :cond_6

    .line 1523
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConnected: Failed to find NetworkInfo for networkType ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return v1

    .line 1526
    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_8

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    .local v0, "connected":Z
    :cond_8
    :goto_1
    goto :goto_3

    .line 1519
    .end local v0    # "connected":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_9
    :goto_2
    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 1528
    .restart local v0    # "connected":Z
    :goto_3
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnected:  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] networktype ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return v0

    .line 1507
    .end local v0    # "connected":Z
    :cond_a
    :goto_4
    return v1

    .line 1504
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDataRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 284
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v0

    return v0
.end method

.method public isEmergencyEpdgConnected(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1569
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v0

    return v0
.end method

.method public isEpdgAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1564
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgAVailable()Z

    move-result v0

    return v0
.end method

.method public isEpdgConnected(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1557
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v0

    return v0

    .line 1560
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEpsOnlyReg(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 263
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1
.end method

.method public isInternationalRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 320
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable(III)Z
    .locals 7
    .param p1, "network"    # I
    .param p2, "pdn"    # I
    .param p3, "phoneId"    # I

    .line 1659
    const/4 v0, 0x1

    const/16 v1, 0xf

    if-eq p2, v1, :cond_6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto/16 :goto_2

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1664
    .local v1, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 1665
    .local v2, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1666
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isNetworkAvailable: NetworkInfo is not exist. return false.."

    invoke-static {v0, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1667
    return v3

    .line 1670
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkAvailable: isEpdgConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " getDataNetworkType()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ni.isAvailable()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1670
    invoke-static {v4, p3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1673
    const/16 v4, 0x12

    if-ne p1, v4, :cond_4

    if-eq p2, v0, :cond_4

    .line 1674
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1675
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    if-ne v5, v4, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1674
    :goto_0
    return v0

    .line 1677
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    return v0

    .line 1660
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    .end local v2    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    :cond_6
    :goto_2
    return v0
.end method

.method public isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1683
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPendedEPDGWeakSignal(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 230
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result v0

    return v0
.end method

.method public isPsOnlyReg(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 297
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v0

    return v0
.end method

.method protected isSuspended(Landroid/net/NetworkInfo;)Z
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 1543
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1544
    return v0

    .line 1547
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1548
    .local v1, "networkType":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1550
    .local v0, "suspended":Z
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSuspended ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] networktype ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return v0
.end method

.method public isVoiceRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 280
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 7

    .line 1574
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1575
    .local v4, "network":Landroid/net/Network;
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 1576
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xc

    .line 1577
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x4

    .line 1578
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1579
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1580
    .local v6, "ni":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 1581
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    .line 1574
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v6    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1587
    :cond_2
    return v2
.end method

.method protected readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 8
    .param p1, "lp"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readPcscfFromLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "not null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 554
    return-object v0

    .line 556
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object v1

    .line 557
    .local v1, "pcscfServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 558
    const-string v2, ""

    .line 559
    .local v2, "addr":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 560
    .local v4, "ia":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "0:0:0:0:0:0:0:0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "::"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    goto :goto_1

    .line 564
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pcscfList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v4    # "ia":Ljava/net/InetAddress;
    goto :goto_1

    .line 568
    .end local v2    # "addr":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 871
    return-void
.end method

.method public registerPhoneStateListener(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 879
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 880
    .local v0, "validPhoneId":Z
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPhoneStateListener: validPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    if-nez v0, :cond_2

    .line 882
    return-void

    .line 885
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 886
    .local v1, "subId":I
    if-gez v1, :cond_3

    .line 887
    return-void

    .line 890
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/core/PdnController;I)V

    .line 891
    .local v2, "psli":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getPhoneStateListener(I)Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;

    move-result-object v3

    if-nez v3, :cond_4

    .line 892
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v3, v2, v1, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 895
    return-void
.end method

.method public removeRouteToHostAddress(ILjava/lang/String;)Z
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/lang/String;

    .line 1472
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRouteToHostAddress: hostAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1475
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 1476
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v2, p1, v0}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->removeRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result v1

    .line 1485
    :cond_0
    return v1
.end method

.method public requestRouteToHostAddress(ILjava/lang/String;)Z
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/lang/String;

    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, "result":Z
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1459
    .local v1, "address":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v2, p1, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result v0

    .line 1463
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress: hostAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1463
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return v0
.end method

.method public resetNetworkState(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 335
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    .line 338
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 339
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 340
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 341
    sget v2, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 342
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setLastRequestedNetworkType(I)V

    .line 343
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellLocation(Landroid/telephony/CellLocation;)V

    .line 345
    :cond_0
    return-void
.end method

.method public setPendedEPDGWeakSignal(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "status"    # Z

    .line 235
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPendedEPDGWeakSignal"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    if-eqz p2, :cond_4

    .line 237
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 238
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 240
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPendedEPDGWeakSignal, networkState is not exist."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 244
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_3

    .line 246
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_3

    .line 247
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_3

    .line 248
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "VzW/ATT/TMOUS : LOST_LTE_WIFI_CONNECTION:12"

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    .line 252
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    goto :goto_0

    .line 253
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    .line 255
    :goto_0
    return-void
.end method

.method public startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p3, "phoneId"    # I

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 920
    .local v0, "ni":Landroid/net/NetworkInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 921
    .local v2, "networkAvailable":Z
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPdnConnectivity: networkType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " networkAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 923
    if-nez v2, :cond_2

    .line 924
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startPdnConnectivity: not available"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v1, 0x2

    return v1

    .line 928
    :cond_2
    const/16 v3, 0x65

    invoke-virtual {p0, v3, p1, p3, p2}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 930
    return v1
.end method

.method public stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 5
    .param p1, "network"    # I
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1399
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 1401
    .local v1, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callback is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "exist"

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1402
    if-eqz v1, :cond_1

    .line 1403
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->setDisconnectRequested()V

    goto :goto_1

    .line 1405
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestStopNetwork: callback not found"

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1406
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1407
    const/4 v2, 0x2

    monitor-exit v0

    return v2

    .line 1410
    .end local v1    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 1413
    const/4 v0, 0x1

    return v0

    .line 1410
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 1
    .param p1, "network"    # I
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1394
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultPhoneId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1777
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 1778
    .local v2, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsEpdgConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVopsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataRoaming:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataConnectionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVoiceRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsDisconnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mPendedEPDGWeakSignal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmcbsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    .end local v2    # "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    goto/16 :goto_0

    .line 1790
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public translateNetworkBearer(I)I
    .locals 3
    .param p1, "bearer"    # I

    .line 1819
    if-nez p1, :cond_0

    .line 1820
    const/4 v0, 0x0

    return v0

    .line 1821
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1822
    return v0

    .line 1824
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bearer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v0, -0x1

    return v0
.end method

.method public unRegisterPhoneStateListener(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 908
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 911
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getPhoneStateListener(I)Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;

    move-result-object v0

    .line 912
    .local v0, "removeObj":Lcom/sec/internal/ims/core/PdnController$PhoneStateListenerInternal;
    if-eqz v0, :cond_0

    .line 913
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 915
    :cond_0
    return-void
.end method

.method public unregisterForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 876
    return-void
.end method
