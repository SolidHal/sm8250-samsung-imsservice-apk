.class public Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.super Landroid/os/Handler;
.source "NetAPIWorkingStatusController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final EVENT_AIRPLANEMODE_CHANGED:I = 0x8

.field private static final EVENT_CHANGE_MSG_APP_WORKING_STATUS:I = 0x3

.field private static final EVENT_CHANGE_OMANETAPI_WORKING_STATUS:I = 0x4

.field private static final EVENT_DELETE_ACCOUNT:I = 0x7

.field private static final EVENT_MESSAGE_APP_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGE_DETECTED:I = 0x2

.field private static final EVENT_REGISTER_PHONE_LISTENER:I = 0x9

.field private static final EVENT_SIM_STATE_CHANGED:I = 0xa

.field private static final EVENT_STOP_ALL_TASK:I = 0x6

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field private mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

.field mContext:Landroid/content/Context;

.field private mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

.field private mFaxHandler:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

.field private mHasNotifiedBufferDBProvisionSuccess:Z

.field private mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private mIsAirPlaneModeOn:Z

.field private mIsCMNWorkingStarted:Z

.field private mIsCmsProfileEnabled:Z

.field private mIsDefaultMsgAppNative:Z

.field private mIsMsgAppForeground:Z

.field private mIsNetworkValid:Z

.field private mIsOMAAPIRunning:Z

.field private mIsProvisionSuccess:Z

.field private mIsUserDeleteAccount:Z

.field private mIsUsingMobileHipri:Z

.field private mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

.field private mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

.field private final mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

.field private mServiceStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

.field private final mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 13
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p4, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 127
    move-object v8, p0

    move-object v9, p2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    .line 87
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 88
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 90
    iput-boolean v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 91
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 92
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 93
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 94
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 95
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 96
    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 111
    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    .line 1060
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 128
    iput-object v9, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 129
    move-object/from16 v10, p3

    iput-object v10, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 130
    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    move-object/from16 v11, p4

    iput-object v11, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    .line 135
    new-instance v12, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object v4, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Landroid/telephony/TelephonyManager;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v12, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    .line 137
    new-instance v0, Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/LineManager;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 138
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    iget-object v6, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v7, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 139
    new-instance v6, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

    iget-object v3, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v4, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v6, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mFaxHandler:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

    .line 140
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v3, p1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 141
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    .line 142
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 143
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 145
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 150
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V

    .line 151
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerAirplaneMode(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Landroid/net/Network;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .param p1, "x1"    # Landroid/net/Network;

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    return v0
.end method

.method private bindToNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p1, "networkInterface"    # Landroid/net/Network;

    .line 941
    if-nez p1, :cond_0

    .line 942
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "bind current process to default network type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 946
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result v1

    .line 947
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 948
    .local v2, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 949
    sget-object v3, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_1
    return v1
.end method

.method private checkingWifiGoodOrNot(Landroid/net/Network;)Z
    .locals 2
    .param p1, "wifi"    # Landroid/net/Network;

    .line 955
    if-nez p1, :cond_0

    .line 956
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "Wifi network instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x0

    return v0

    .line 960
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->isGoodWifi(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method private clearData()V
    .locals 1

    .line 824
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 825
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 826
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 827
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onCleanBufferDbRequired()V

    .line 828
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->clearOmaRetryData()V

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 830
    return-void
.end method

.method private createPhoneServiceListener()V
    .locals 1

    .line 272
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    .line 283
    return-void
.end method

.method private handleEventMessageAppChanged()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 287
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged: not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 292
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 293
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGoForwardSyncSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    return-void

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez v0, :cond_2

    .line 298
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged: native message app not default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 300
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 302
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_0

    .line 304
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged native message app default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 306
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    .line 307
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "notify buffer DB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 311
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    sget-object v2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v3, "handleEventMessageAppChanged: default msg app, resume cms api working"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 318
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_3
    :goto_0
    return-void
.end method

.method private initDeviceID()V
    .locals 2

    .line 1111
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method private initSimInfo()V
    .locals 6

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isSimChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "accountNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "newImsi":Ljava/lang/String;
    const-string v2, "== "

    .line 203
    .local v2, "phoneNumberFrom":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string v2, "from DB == "

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Provision not required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 895
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus:  mIsUsingMobileHipri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAmbsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDefaultMsgAppNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAirPlaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCMNWorkingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasNotifiedBufferDBProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private pauseCMNWorking()V
    .locals 9

    .line 499
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZ)V

    .line 501
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    .line 505
    return-void
.end method

.method private pauseProvsioningApi()V
    .locals 2

    .line 537
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->pause()V

    .line 539
    return-void
.end method

.method private registerAirplaneMode(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 236
    if-eqz v0, :cond_1

    .line 237
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    goto :goto_1

    .line 239
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 258
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    return-void
.end method

.method private registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 230
    .local v1, "mDefaultSmsPackageChangeReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method private registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 4
    .param p1, "transportType"    # I
    .param p2, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 993
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 995
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 996
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 998
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 999
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1001
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v1, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1002
    return-void
.end method

.method private registerNetworkStateListener()V
    .locals 6

    .line 1033
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1036
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1037
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1039
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1040
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1043
    .local v2, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_0

    .line 1044
    :catch_0
    move-exception v3

    .line 1045
    .local v3, "ex":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 262
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->createPhoneServiceListener()V

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 266
    return-void
.end method

.method private resumeCMNWorking()V
    .locals 9

    .line 525
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZ)V

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    .line 530
    return-void
.end method

.method private resumeProvsioningApi()V
    .locals 2

    .line 542
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->resume()V

    .line 546
    :cond_0
    return-void
.end method

.method private setNetworkStatus(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 558
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 559
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "mIsCmsProfileEnabled: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 562
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 563
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    goto :goto_0

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    .line 568
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_2

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 570
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    .line 572
    :cond_2
    return-void
.end method

.method private shouldEnableOMANetAPIWorking()Z
    .locals 5

    .line 492
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 493
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIWorking(ZZZZ)Z

    move-result v0

    .line 492
    return v0
.end method

.method private startCMNWorking()V
    .locals 2

    .line 515
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start()V

    .line 517
    return-void
.end method

.method private startCMNWorkingResetBox()V
    .locals 2

    .line 520
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI: resetBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start_resetBox()V

    .line 522
    return-void
.end method

.method private startMobileHipri()V
    .locals 2

    .line 982
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMobileHipri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v0, :cond_0

    .line 984
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "mobile network is in using"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-nez v0, :cond_1

    .line 986
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register mobile network callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 988
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 990
    :cond_1
    :goto_0
    return-void
.end method

.method private startProvsioningApi()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->start()V

    .line 534
    return-void
.end method

.method private stopCMNWorking()V
    .locals 2

    .line 508
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 510
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stop()V

    .line 512
    return-void
.end method

.method private stopMobileHipri()V
    .locals 5

    .line 964
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 967
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 968
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 969
    sget-object v2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v3, "Mobile network callback unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result v0

    .line 973
    .local v0, "success":Z
    const-string v1, "failed"

    .line 974
    .local v1, "bindResult":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 975
    const-string/jumbo v1, "successfully"

    .line 976
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    .line 978
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopMobileHipri, bind to default network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method private unregisterNetworkStateListener()V
    .locals 4

    .line 1050
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1054
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    .local v1, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getCmsProfileEnabled()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    return v0
.end method

.method public handleLargeDataPolling()V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->handleLargeDataPolling()V

    .line 1102
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 327
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 328
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->removeMessages(I)V

    .line 330
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 478
    .local v0, "simState":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sim state changed, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x5

    if-ne v2, v0, :cond_18

    .line 480
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimChanged(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 481
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isCtnChangedByNetwork(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 482
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "ctn changed, restart service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto/16 :goto_d

    .line 474
    .end local v0    # "simState":I
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 475
    goto/16 :goto_d

    .line 460
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAirplaneModeChangeHandled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 463
    if-eqz v2, :cond_1

    .line 464
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    .line 465
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_d

    .line 467
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplane mode changed, mIsAirPlaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 469
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 449
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 450
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 451
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    if-eqz v0, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    goto/16 :goto_d

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 455
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_d

    .line 446
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 447
    goto/16 :goto_d

    .line 431
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 432
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 433
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "mIsCmsProfileEnabled: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_3
    if-eqz v0, :cond_4

    .line 437
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 438
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeCMNWorking()V

    goto/16 :goto_d

    .line 441
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 442
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseCMNWorking()V

    .line 444
    goto/16 :goto_d

    .line 337
    .end local v0    # "enabled":Z
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    .line 339
    if-nez v0, :cond_5

    .line 340
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 344
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 345
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_d

    .line 349
    :pswitch_8
    const/4 v0, 0x0

    .line 350
    .local v0, "isWifiConnected":Z
    const/4 v4, 0x0

    .line 351
    .local v4, "isMobileConnected":Z
    const/4 v5, 0x0

    .line 352
    .local v5, "wifiNtwkInstance":Landroid/net/Network;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 354
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    .line 355
    .local v7, "networks":[Landroid/net/Network;
    if-eqz v7, :cond_d

    .line 356
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_d

    .line 357
    aget-object v9, v7, v8

    if-nez v9, :cond_6

    .line 358
    goto/16 :goto_5

    .line 360
    :cond_6
    aget-object v9, v7, v8

    invoke-virtual {v6, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 361
    .local v9, "ntwkInfo":Landroid/net/NetworkInfo;
    if-nez v9, :cond_7

    .line 362
    goto/16 :goto_5

    .line 364
    :cond_7
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v2, :cond_9

    .line 365
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_2

    :cond_8
    move v10, v3

    :goto_2
    move v0, v10

    .line 366
    aget-object v5, v7, v8

    goto :goto_4

    .line 367
    :cond_9
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-nez v10, :cond_b

    .line 368
    aget-object v10, v7, v8

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    .line 369
    .local v10, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v10, :cond_b

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 370
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v2

    goto :goto_3

    :cond_a
    move v11, v3

    :goto_3
    move v4, v11

    .line 374
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    :cond_b
    :goto_4
    sget-object v10, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network info: type["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "], typeName["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "], isAvailable["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "], isConnected["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 374
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    .line 379
    sget-object v10, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v11, "Wifi and Mobile are both connected, no need to continue scan"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    goto :goto_6

    .line 356
    .end local v9    # "ntwkInfo":Landroid/net/NetworkInfo;
    :cond_c
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 385
    .end local v8    # "i":I
    :cond_d
    :goto_6
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_7

    :cond_e
    move v1, v3

    :goto_7
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 387
    const-string v8, "is using MOBILE_HIPRI, will change to default network"

    if-eqz v0, :cond_11

    .line 388
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    const-string v9, "https"

    invoke-interface {v1, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    .line 391
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v1

    .line 392
    .local v1, "needToCheckCaptive":Z
    sget-object v9, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WiFi connected, needToCheckCaptive value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v1, :cond_12

    .line 394
    const-string v9, "Good Wifi"

    .line 395
    .local v9, "wifiStatus":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->checkingWifiGoodOrNot(Landroid/net/Network;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 396
    iget-boolean v10, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v10, :cond_10

    .line 397
    sget-object v10, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    goto :goto_8

    .line 401
    :cond_f
    const-string v9, "Bad Wifi"

    .line 402
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startMobileHipri()V

    .line 404
    :cond_10
    :goto_8
    sget-object v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 406
    .end local v1    # "needToCheckCaptive":Z
    .end local v9    # "wifiStatus":Ljava/lang/String;
    :cond_11
    if-eqz v4, :cond_12

    if-nez v1, :cond_12

    .line 407
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    const-string v9, "http"

    invoke-interface {v1, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v9, "WiFi not connected, but Mobile is connected"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v1, :cond_13

    .line 410
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    goto :goto_a

    .line 406
    :cond_12
    :goto_9
    nop

    .line 414
    :cond_13
    :goto_a
    if-nez v4, :cond_15

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    move v1, v3

    goto :goto_c

    :cond_15
    :goto_b
    move v1, v2

    .line 415
    .local v1, "isNetworkAvailable":Z
    :goto_c
    sget-object v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network available: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v8, :cond_16

    if-nez v1, :cond_16

    .line 417
    sget-object v8, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v9, "no available network, reset channel state."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 420
    :cond_16
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    .line 421
    if-eqz v1, :cond_17

    .line 422
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 423
    sget-object v3, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "shouldEnableOMANetAPIWorking: true"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_d

    .line 427
    :cond_17
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 429
    goto :goto_d

    .line 334
    .end local v0    # "isWifiConnected":Z
    .end local v1    # "isNetworkAvailable":Z
    .end local v4    # "isMobileConnected":Z
    .end local v5    # "wifiNtwkInstance":Landroid/net/Network;
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "networks":[Landroid/net/Network;
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleEventMessageAppChanged()V

    .line 335
    nop

    .line 489
    :cond_18
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hideIndicator()V
    .locals 2

    .line 1086
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 1088
    return-void
.end method

.method public init()V
    .locals 4

    .line 155
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->createStrategy(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportAtt72HoursRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendMessage(Landroid/os/Message;)Z

    .line 160
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startProvsioningApi()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    .line 166
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 170
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isDeviceConfigUsed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    const-string v0, "device config exists"

    .line 173
    .local v0, "deviceConfigExist":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 174
    const-string v0, "no existing device config"

    .line 175
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->registerBootCompletedReceiver(Landroid/content/Context;)V

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->registerContentObserver(Landroid/content/Context;)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    .line 180
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceConfigUsed: true, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "deviceConfigExist":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkStateListener()V

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 185
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 186
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 187
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_6

    .line 188
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 189
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    const-string v3, "https"

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    const-string v3, "http"

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 194
    :cond_6
    :goto_2
    return-void
.end method

.method public isNativeMsgAppDefault()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    return v0
.end method

.method public isSimChanged()Z
    .locals 3

    .line 1076
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "isSimChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "oldCtn":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "oldImsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    const/4 v2, 0x0

    return v2

    .line 1082
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimOrCtnChanged(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    return v2
.end method

.method public notifyLoadLineStatus()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 910
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    .line 911
    .local v0, "isMultiLine":Z
    if-eqz v0, :cond_0

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v1, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    return-object v1

    .line 918
    .end local v1    # "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .restart local v1    # "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    return-object v1
.end method

.method public onChannelStateReset()V
    .locals 2

    .line 819
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onChannelStateReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 821
    return-void
.end method

.method public onCleanBufferDbRequired()V
    .locals 3

    .line 623
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onCleanBufferDbRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->BUFFERDB_CLEAN:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 626
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 627
    return-void
.end method

.method public onCloudSyncWorkingStopped()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 794
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 795
    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    .line 789
    return-void
.end method

.method public onDeviceSITRefreshed(Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onLineSITRefreshed(Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public onInitialDBCopyDone()V
    .locals 2

    .line 640
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onInitialDBCopyDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 644
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 647
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 648
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 650
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    .line 652
    :cond_1
    return-void
.end method

.method public onInitialDBSyncCompleted()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 636
    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 3

    .line 1105
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1107
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1108
    return-void
.end method

.method public onMailBoxResetBufferDbDone()V
    .locals 2

    .line 656
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxResetBufferDbDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 660
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 664
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 665
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    .line 666
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 667
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorkingResetBox()V

    .line 669
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 672
    :cond_2
    return-void
.end method

.method public onNetworkChangeDetected()V
    .locals 4

    .line 834
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onNetworkChangeDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v0

    .line 837
    .local v0, "isCaptivePortalSupported":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 838
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 840
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkChangeDetected: CmsProfileEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " or captive portal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_0
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 2

    .line 930
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onOmaFailExceedMaxCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 934
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onOmaFailExceedMaxCount()V

    .line 937
    :cond_0
    return-void
.end method

.method public onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "reProvisionDelayInMillis"    # J

    .line 756
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOmaProvisionFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 760
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 761
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_SESSION_GEN will be triggered in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto :goto_0

    .line 768
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 769
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "line":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    return-void

    .line 774
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 775
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 780
    sget-object v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildRefreshSitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 784
    .end local v0    # "line":Ljava/lang/String;
    :goto_0
    return-void

    .line 777
    .restart local v0    # "line":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onProvisionSuccess()V
    .locals 3

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 600
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 601
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 606
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v1, :cond_1

    .line 608
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 609
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    .line 612
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    if-nez v1, :cond_2

    .line 613
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 614
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->PROVISION_SUCCESS:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 616
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 619
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_2
    return-void
.end method

.method public onRestartService()V
    .locals 3

    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 807
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 808
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 811
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->RESTART_SERVICE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 813
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 814
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 815
    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "screenName"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 676
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isUIButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "UI button is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 680
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "UI button call is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public onUserDeleteAccount(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 799
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mFaxHandler:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 123
    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 2

    .line 1096
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeUpdateSubscriptionChannelEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->removeUpdateSubscriptionChannelEvent()V

    .line 1098
    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 687
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 691
    :cond_0
    return-void
.end method

.method public sendDeviceFax(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 741
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceFax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez p1, :cond_0

    return-void

    .line 743
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 744
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 746
    .local v0, "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 747
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mFaxHandler:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendFaxUsingBufferDBTranslation(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 748
    return-void

    .line 751
    .end local v0    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :cond_1
    return-void
.end method

.method public sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 701
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceInitialSyncDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 705
    :cond_0
    return-void
.end method

.method public sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 709
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceNormalDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 711
    .local v0, "vvmProfileList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 712
    .local v1, "objectList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 714
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget v4, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 715
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :goto_1
    goto :goto_0

    .line 722
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 723
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 726
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 727
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 729
    :cond_3
    return-void
.end method

.method public sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 577
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 579
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 580
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 582
    .local v0, "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x13

    const/16 v3, 0x12

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 586
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 595
    .end local v0    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :cond_3
    :goto_1
    return-void
.end method

.method public sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 733
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 737
    :cond_0
    return-void
.end method

.method public setCmsProfileEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 846
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 848
    return-void

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 851
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "check networking again,if cms is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 853
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onNetworkChangeDetected()V

    goto :goto_0

    .line 855
    :cond_1
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 857
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->init()V

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 860
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 862
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez v0, :cond_3

    .line 863
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCmsProfileEnabled: non-default app: pause provisioning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_1

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->unregisterNetworkStateListener()V

    .line 868
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 869
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    .line 871
    :cond_3
    :goto_1
    return-void
.end method

.method public setImpuFromImsRegistration(Ljava/lang/String;)V
    .locals 3
    .param p1, "lineNum"    # Ljava/lang/String;

    .line 874
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImpuFromImsRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldPersistImsRegNum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    return-void

    .line 881
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 885
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 887
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 888
    return-void

    .line 882
    :cond_3
    :goto_0
    return-void
.end method

.method public setMsgAppForegroundStatus(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 549
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method public setOMANetAPIWorkingStatus(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 553
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 695
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 697
    return-void
.end method

.method public updateSubscriptionChannel()V
    .locals 2

    .line 1091
    sget-object v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSubscriptionChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->updateSubscriptionChannel()V

    .line 1093
    return-void
.end method
