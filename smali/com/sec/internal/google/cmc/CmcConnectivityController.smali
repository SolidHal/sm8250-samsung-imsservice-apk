.class public Lcom/sec/internal/google/cmc/CmcConnectivityController;
.super Landroid/os/Handler;
.source "CmcConnectivityController.java"

# interfaces
.implements Lcom/sec/internal/google/cmc/ICmcConnectivityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;,
        Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_TRY_NSD_BIND:I = 0x3e9

.field private static final IMS_PCSCF_IP:Ljava/lang/String; = "ims_pcscf_ip"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSD_FIRST_TRIIGER:Ljava/lang/String; = "sys.ims.nsd.first_trigger"

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "p2p.samsungims.com"

.field private static final SIP_DOMAIN:Ljava/lang/String; = "samsungims.com"

.field public static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"

.field private static final WD_HOST_PCSCF_IP:Ljava/lang/String; = "192.168.49.1"

.field private static final WD_PDN_NAME:Ljava/lang/String; = "p2p-wlan"

.field private static final WD_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_PD"

.field private static final WD_PROFILE_NAME_SD:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_SD"

.field private static final WIFI_HS_PCSCF_PREF:Ljava/lang/String; = "mobile_hotspot_pcscf"

.field private static final WIFI_HS_PDN_NAME:Ljava/lang/String; = "swlan"

.field private static final WIFI_HS_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_HS_PD"

.field private static final WIFI_PDN_NAME:Ljava/lang/String; = "wlan"

.field private static final WIFI_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_PD"

.field private static final WIFI_PROFILE_NAME_SD:Ljava/lang/String; = "SamsungCMC_WIFI_SD"


# instance fields
.field private mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field private mFirstTrigger:Ljava/lang/String;

.field private mHotspotAuthToken:Ljava/lang/String;

.field private mHotspotHostPcscfIp:Ljava/lang/String;

.field private mHotspotIsConnect:Z

.field private mHotspotLocalIp:Ljava/lang/String;

.field private mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mHotspotRegistered:Z

.field private mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

.field private final mIsEnableWifiDirectFeature:Z

.field private mIsNeedSubSession:Z

.field private final mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

.field private mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

.field private mOwnDeviceId:Ljava/lang/String;

.field private mOwnDuid:Ljava/lang/String;

.field private mPhoneId:I

.field private mPrimaryDuid:Ljava/lang/String;

.field private final mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mReservedId:I

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mServiceId:I

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mWifiAuthToken:Ljava/lang/String;

.field private mWifiDirectAuthToken:Ljava/lang/String;

.field private mWifiDirectIsConnect:Z

.field private mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mWifiDirectRegistered:Z

.field private mWifiHostPcscfIp:Ljava/lang/String;

.field private mWifiIsConnect:Z

.field private mWifiLocalIp:Ljava/lang/String;

.field private mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mWifiRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->DBG:Z

    .line 60
    const-class v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 239
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsEnableWifiDirectFeature:Z

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 111
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    .line 112
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    .line 113
    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 114
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mFirstTrigger:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 119
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 120
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    .line 121
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 127
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 128
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    .line 129
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 135
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    .line 136
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    .line 137
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 140
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    .line 141
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mServiceId:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    .line 145
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    .line 167
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    .line 264
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 242
    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 243
    new-instance v0, Lcom/sec/internal/google/cmc/IpServiceManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    .line 245
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_device_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "pd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    goto :goto_0

    .line 248
    :cond_0
    const-string/jumbo v1, "sd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    goto :goto_0

    .line 251
    :cond_1
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-eq v1, v2, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->registerP2pListener()V

    .line 258
    :cond_2
    new-instance v1, Lcom/samsung/android/cmcnsd/CmcNsdManager;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    .line 259
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->registerServiceConnectionListener(Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;)V

    .line 260
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/IpServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getHSPref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setHSPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->retryWifiRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mServiceId:I

    return p1
.end method

.method static synthetic access$2102(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onShutDownNsd(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/ArrayList;

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object v0
.end method

.method private getHSPref()Ljava/lang/String;
    .locals 4

    .line 778
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v2, "ims_pcscf_ip"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 781
    .local v0, "newSp":Landroid/content/SharedPreferences;
    const-string v1, "mobile_hotspot_pcscf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    .line 823
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 824
    .local v0, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 825
    .local v2, "intf":Ljava/net/NetworkInterface;
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->WifiDirect:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_0

    .line 827
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p2p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 828
    goto :goto_0

    .line 830
    :cond_0
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_1

    .line 832
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "swlan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 833
    goto :goto_0

    .line 835
    :cond_1
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_2

    .line 837
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wlan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 838
    goto :goto_0

    .line 840
    :cond_2
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_3

    .line 842
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rmnet0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 843
    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 848
    .local v3, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 850
    .local v5, "addr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 851
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 853
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_4
    goto :goto_1

    .line 854
    .end local v2    # "intf":Ljava/net/NetworkInterface;
    .end local v3    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_5
    goto/16 :goto_0

    .line 857
    .end local v0    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :cond_6
    goto :goto_2

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in parsing"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "returning empty ip address"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v0, ""

    return-object v0
.end method

.method private hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isConnected"    # Z
    .param p2, "hostAddress"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 614
    if-eqz p1, :cond_0

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 616
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 617
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 619
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToHotspotRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string/jumbo v1, "swlan"

    const-string v2, "SamsungCMC_WIFI_HS_PD"

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    if-eqz v0, :cond_3

    .line 624
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "the Hotspot are all disconnected"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    const-string v2, "local_network"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 630
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 631
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 632
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 633
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v1, :cond_2

    .line 634
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    iget v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v2, v1, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    .line 636
    :cond_2
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    .line 639
    :cond_3
    :goto_0
    return-void
.end method

.method private imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "type"    # Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
    .param p2, "pdnName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "MDMN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 520
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 521
    .local v3, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SamsungCMC_P2P"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3, p2}, Lcom/sec/ims/settings/ImsProfile;->setPdn(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3, p3}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v1, "p2p.samsungims.com"

    invoke-virtual {v3, v1}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "sip:D2D@samsungims.com"

    .line 530
    .local v1, "impu":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 531
    const-string v4, "D2D@samsungims.com"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->setSslType(I)V

    .line 534
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 535
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 536
    const/16 v5, 0xa

    invoke-virtual {v3, v5, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 537
    const/16 v5, 0xf

    invoke-virtual {v3, v5, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 538
    const/16 v5, 0x8

    invoke-virtual {v3, v5, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 539
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 541
    sget-object v5, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->WifiDirect:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v5, :cond_0

    .line 542
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v4, "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "192.168.49.1"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 545
    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    add-int/lit16 v5, v5, 0x2710

    invoke-virtual {v3, v5}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 548
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 549
    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 550
    .end local v4    # "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 551
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 553
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v6, "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v7, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v7, :cond_1

    .line 555
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v3, v6}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 557
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 559
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 560
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    goto :goto_1

    .line 561
    :cond_1
    sget-object v7, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v7, :cond_2

    .line 562
    iget-object v7, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v3, v6}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 564
    iget-object v7, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 567
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 568
    .local v7, "svc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "mmtel"

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v3, v4, v7}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 570
    invoke-virtual {v3, v4, v5}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 572
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 573
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 576
    .end local v6    # "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "svc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 578
    .end local v1    # "impu":Ljava/lang/String;
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_3
    goto/16 :goto_0

    .line 579
    :cond_4
    :goto_2
    return-void
.end method

.method private isExistCalls()Z
    .locals 3

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "activeCall":Z
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    .line 771
    .local v1, "mVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v1, :cond_0

    .line 772
    iget v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v0

    .line 774
    :cond_0
    return v0
.end method

.method private isReadyToHotspotRegister()Z
    .locals 4

    .line 734
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHotspotIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHotspotRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 736
    return v1

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz v0, :cond_1

    .line 740
    return v1

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    return v1

    .line 747
    :cond_2
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_3

    .line 749
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "There is already [wifi] registration. don\'t mobile-hotspot registration"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return v1

    .line 752
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isReadyToWifiDirectRegister()Z
    .locals 4

    .line 712
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 713
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "there is already a [cmc] registration. releaseP2pNetwork!"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    .line 715
    return v1

    .line 719
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v0, :cond_2

    .line 720
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isExistCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "there are calls with [wifi], releaseP2pNetwork!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    .line 723
    return v1

    .line 725
    :cond_1
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid wifi registration state, deregister [case A]"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    .line 730
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isReadyToWifiPDRegister()Z
    .locals 4

    .line 680
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 681
    return v1

    .line 684
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHotspotRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz v0, :cond_1

    .line 686
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "There is already [mobile-hotspot] registration. don\'t wifi registration"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return v1

    .line 689
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isReadyToWifiRegister()Z
    .locals 3

    .line 642
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    return v1

    .line 648
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_1

    .line 649
    return v1

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    return v1

    .line 676
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isReadyToWifiSDRegister()Z
    .locals 4

    .line 693
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 694
    return v1

    .line 697
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiDirectRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isExistCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "There is already wifi-direct(+calls) registration. don\'t wifi registration"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return v1

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result v0

    .line 704
    .local v0, "getProfileId":I
    if-lez v0, :cond_2

    .line 705
    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "There is already cmc registration. don\'t wifi registration"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return v1

    .line 708
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private onShutDownNsd(Z)V
    .locals 3
    .param p1, "retyBind"    # Z

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    .line 405
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mServiceId:I

    .line 406
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    .line 409
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    .line 411
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->sendEmptyMessage(I)Z

    .line 416
    :cond_0
    return-void
.end method

.method private onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "isConnected"    # Z
    .param p2, "hostAddress"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p4, "infList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_0

    .line 477
    return-void

    .line 480
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiConnectionChanged()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_5

    .line 482
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 494
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "wifi register by priority (WIFI > MOBILE-HOTSPOT)"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :cond_2
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, "intf":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRegister intf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v2, "wlan0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v1    # "intf":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 483
    :cond_4
    :goto_1
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "there are no network interface, all disconnect"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, v0, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void

    .line 514
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_2
    return-void
.end method

.method private onWifiDirectConnectionChanged(ZLjava/lang/String;)V
    .locals 6
    .param p1, "isConnected"    # Z
    .param p2, "authToken"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_0

    .line 420
    return-void

    .line 423
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiDirectConnectionChanged()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "wlan0"

    const-string v1, "192.168.49.1"

    const-string v2, "local_network"

    if-eqz p1, :cond_4

    .line 425
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiDirectIsConnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mWifiDirectRegistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    if-eqz v3, :cond_1

    .line 427
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "already wifi direct is registered, maybe it\'ll be connected for 3rd SD"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 431
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    .line 432
    iput-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    .line 433
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 434
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v4, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string/jumbo v5, "p2p-wlan"

    if-ne v3, v4, :cond_3

    .line 435
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->WifiDirect:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v4, "SamsungCMC_WIFI_P2P_PD"

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-virtual {v3, v2, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result v1

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v1, :cond_7

    .line 442
    :cond_2
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_7

    .line 447
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiDirectRegister()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 448
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->WifiDirect:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v1, "SamsungCMC_WIFI_P2P_SD"

    invoke-direct {p0, v0, v5, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_4
    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    if-eqz v3, :cond_7

    .line 453
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "the Wifi-Direct are all disconnected"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v4, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v3, v4, :cond_5

    .line 455
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-virtual {v3, v2, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 457
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectIsConnect:Z

    .line 462
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 463
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v1, :cond_6

    .line 464
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    iget v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v2, v1, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    goto :goto_0

    .line 466
    :cond_6
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mServiceId:I

    .line 467
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    .line 468
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    .line 470
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiDirectRegistered:Z

    .line 473
    :cond_7
    :goto_1
    return-void
.end method

.method private registerP2pListener()V
    .locals 3

    .line 809
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerP2pListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerP2pListener failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private retryWifiRegister(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .line 756
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryWifiRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string/jumbo v2, "wlan"

    if-ne v0, v1, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_1
    :goto_0
    return-void
.end method

.method private setHSPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "pcscf"    # Ljava/lang/String;

    .line 785
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v2, "ims_pcscf_ip"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    .local v0, "newSp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 789
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mobile_hotspot_pcscf"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 790
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 791
    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHSPref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method private unregisterImsRegistrationListener()V
    .locals 2

    .line 818
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method private wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isConnected"    # Z
    .param p2, "hostAddress"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 582
    if-eqz p1, :cond_1

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 584
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 585
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string/jumbo v2, "wlan"

    if-ne v0, v1, :cond_0

    .line 588
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 589
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v1, "SamsungCMC_WIFI_PD"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string v1, "SamsungCMC_WIFI_SD"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    if-eqz v0, :cond_3

    .line 599
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "the Wifi are all disconnected"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 601
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 603
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 604
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v1, :cond_2

    .line 605
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    iget v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    invoke-interface {v2, v1, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    .line 607
    :cond_2
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    .line 610
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public changeWifiDirectConnection(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 204
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeWifiDirectConnection, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    .line 206
    return-void
.end method

.method public getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object v0
.end method

.method public getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    return v0
.end method

.method public getReservedId()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 796
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EVENT_TRY_NSD_BIND"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->immediateNsdBind()V

    .line 800
    nop

    .line 806
    :goto_0
    return-void
.end method

.method public immediateNsdBind()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "immediateNsdBind, called bind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->bind()V

    .line 229
    :cond_0
    return-void
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceIdInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "primaryDeviceId"    # Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownDuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", primaryDuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public setNeedSubSession(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIsNeedSubSession:Z

    .line 393
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 380
    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneId:I

    .line 381
    return-void
.end method

.method public setReservedId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 400
    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mReservedId:I

    .line 401
    return-void
.end method

.method public tryNsdBind()V
    .locals 3

    .line 213
    const-string/jumbo v0, "sys.ims.nsd.first_trigger"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mFirstTrigger:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/16 v0, 0x3e9

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->immediateNsdBind()V

    .line 222
    :goto_0
    return-void
.end method
