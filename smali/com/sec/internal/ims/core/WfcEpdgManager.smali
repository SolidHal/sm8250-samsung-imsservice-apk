.class public Lcom/sec/internal/ims/core/WfcEpdgManager;
.super Lcom/sec/internal/helper/StateMachine;
.source "WfcEpdgManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
    }
.end annotation


# static fields
.field private static final COLUMN_WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field private static final EPDG_AVAILABLE:I = 0x1

.field private static final EPDG_TERMINATED:I = 0x2

.field private static final EPDG_UNAVAILABLE:I = 0x0

.field private static final INTENT_EPDG_FQDN_NAME:Ljava/lang/String; = "com.sec.imsservice.intent.action.EPDG_NAME"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ON_ENTITLEMENT_EVENT:I = 0xc

.field private static final ON_EPDG_CONNECTED:I = 0x8

.field private static final ON_EPDG_DISCONNECTED:I = 0x9

.field private static final ON_EPDG_FQDN_EVENT:I = 0xd

.field private static final ON_SETTING_RESET:I = 0xb

.field private static final ON_WFC_UPDATED:I = 0x4

.field private static final SIM_ABSENT:I = 0x6

.field private static final SIM_READY:I = 0x5

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final STATE_TIMEOUT:I = 0xa

.field private static final TRY_EPDG_CONNECT:I = 0x7

.field private static final WIFI_CONNECTED:I = 0x3


# instance fields
.field private mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

.field private mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSimMobilityState:[Z

.field private mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

.field private mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

.field private final mEntitlementReceiver:Landroid/content/BroadcastReceiver;

.field private mEpdgAvailable:[Z

.field private mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

.field private mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

.field private mEpdgMgr:Lcom/sec/epdg/EpdgManager;

.field private mIsEpdgReqTerminate:Z

.field private mIsWIFIConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/IEpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReasonIntent:Landroid/content/Intent;

.field private mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

.field mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

.field private mWfcEpdgConnectionListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 112
    const-string v0, "WfcEpdgManager"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 58
    const/4 v0, 0x2

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    .line 83
    iput-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/ArrayList;

    .line 93
    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    .line 96
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$1;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 829
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$5;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEntitlementReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    .line 115
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "com.sec.imsservice.intent.action.EPDG_NAME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEntitlementReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    .line 125
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    .line 126
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    .line 127
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/ims/core/WfcEpdgManager$1;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    .line 128
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->init()V

    .line 129
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 130
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/WfcEpdgManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # I

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isReadyForEpdgConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/WfcEpdgManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->eventAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onSimRemoved(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/epdg/EpdgManager$ConnectionListener;)Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgConnection()Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isSimAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager$EpdgListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/WfcEpdgManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 53
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    return p1
.end method

.method private eventAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .line 724
    packed-switch p1, :pswitch_data_0

    .line 762
    const-string v0, "UNKNOWN"

    return-object v0

    .line 756
    :pswitch_0
    const-string v0, "ON_EPDG_FQDN_EVENT"

    return-object v0

    .line 759
    :pswitch_1
    const-string v0, "ON_ENTITLEMENT_EVENT"

    return-object v0

    .line 753
    :pswitch_2
    const-string v0, "ON_SETTING_RESET"

    return-object v0

    .line 750
    :pswitch_3
    const-string v0, "STATE_TIMEOUT"

    return-object v0

    .line 747
    :pswitch_4
    const-string v0, "ON_EPDG_DISCONNECTED"

    return-object v0

    .line 744
    :pswitch_5
    const-string v0, "ON_EPDG_CONNECTED"

    return-object v0

    .line 741
    :pswitch_6
    const-string v0, "TRY_EPDG_CONNECT"

    return-object v0

    .line 738
    :pswitch_7
    const-string v0, "SIM_ABSENT"

    return-object v0

    .line 735
    :pswitch_8
    const-string v0, "SIM_READY"

    return-object v0

    .line 732
    :pswitch_9
    const-string v0, "ON_WFC_UPDATED"

    return-object v0

    .line 729
    :pswitch_a
    const-string v0, "WIFI_CONNECTED"

    return-object v0

    .line 726
    :pswitch_b
    const-string v0, "EPDG_TERMINATED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
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

.method private getEpdgManager()Lcom/sec/epdg/EpdgManager;
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    if-eqz v0, :cond_0

    .line 262
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgManager;-><init>(Landroid/content/Context;Lcom/sec/epdg/EpdgManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    .line 265
    return-object v0
.end method

.method private init()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->addState(Lcom/sec/internal/helper/State;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->addState(Lcom/sec/internal/helper/State;)V

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->addState(Lcom/sec/internal/helper/State;)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->addState(Lcom/sec/internal/helper/State;)V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 138
    return-void
.end method

.method private isAnySimAvailable()Z
    .locals 2

    .line 227
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isSimAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x1

    return v1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAnySimAvailableWithWFCEnabled()Z
    .locals 2

    .line 218
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isSimAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isWFCEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x1

    return v1

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isReadyForEpdgConnect()Z
    .locals 3

    .line 204
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isAnySimAvailableWithWFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 206
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 207
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 205
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .restart local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 213
    .end local v0    # "phoneId":I
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isSimAvailable(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 237
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 238
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isVowifiSupported(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "isSupport":Z
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    .line 251
    .local v1, "imsServiceStub":Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    const-string v2, "mmtel"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const-string v2, "mmtel-video"

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    const-string/jumbo v2, "smsip"

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x1

    .line 256
    :cond_1
    return v0
.end method

.method private isWFCEnabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 242
    add-int/lit8 v0, p1, 0x1

    .line 243
    .local v0, "slotId":I
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 244
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isVowifiSupported(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi_call_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 244
    :goto_0
    return v3
.end method

.method private makeEpdgConnection()Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .locals 1

    .line 276
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$2;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-object v0
.end method

.method private makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;
    .locals 1

    .line 299
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$3;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-object v0
.end method

.method private makeSimMobilityListener()Lcom/sec/ims/ISimMobilityStatusListener;
    .locals 1

    .line 807
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$4;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-object v0
.end method

.method private onSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 6
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 704
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 705
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 706
    sget-object v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on SIM Ready: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isSimMobilityActivated(I)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 708
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    if-nez v1, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->makeSimMobilityListener()Lcom/sec/ims/ISimMobilityStatusListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    .line 710
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 712
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 714
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM ABSENT|LOCKED|NOT READY: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v1, 0x6

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(Landroid/os/Message;)V

    .line 716
    return v2
.end method

.method private onSimRemoved(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 5
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 766
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 767
    return v1

    .line 769
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 770
    .local v0, "phoneId":I
    sget-object v2, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM Absent: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isAnySimAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    if-eqz v2, :cond_1

    .line 772
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 773
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    aput-boolean v1, v2, v0

    .line 776
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getEpdgMgr()Lcom/sec/epdg/EpdgManager;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEpdgServiceConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object v0
.end method

.method public initSequentially()V
    .locals 8

    .line 142
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 144
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 146
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 148
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 150
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    .line 151
    const/4 v2, 0x1

    .line 152
    .local v2, "slotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi_call_enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 153
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 156
    const/4 v2, 0x2

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 158
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-virtual {v1, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 162
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v4, v5, v6, v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v4, v5, v6, v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method

.method public isEpdgServiceConnected()Z
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEpdgServiceConnecting()Z
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 188
    .local v4, "network":Landroid/net/Network;
    iget-object v5, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 189
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xc

    .line 190
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x4

    .line 191
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 193
    .local v6, "ni":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 194
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    .line 187
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v6    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_2
    return v2
.end method

.method public onResetSetting(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 720
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(ILjava/lang/Object;)V

    .line 721
    return-void
.end method

.method public declared-synchronized registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    monitor-enter p0

    .line 168
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEpdgHandoverListener.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local p0    # "this":Lcom/sec/internal/ims/core/WfcEpdgManager;
    :cond_0
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-boolean v4, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p1, v0, v1, v2}, Lcom/sec/ims/IEpdgListener;->onEpdgAvailable(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "phoneId":I
    :cond_3
    goto :goto_2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit p0

    return-void

    .line 167
    .end local p1    # "listener":Lcom/sec/ims/IEpdgListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public declared-synchronized unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    monitor-enter p0

    .line 182
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterEpdgHandoverListener.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lcom/sec/internal/ims/core/WfcEpdgManager;
    .end local p1    # "listener":Lcom/sec/ims/IEpdgListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
