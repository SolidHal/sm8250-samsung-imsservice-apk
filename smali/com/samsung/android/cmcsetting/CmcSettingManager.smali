.class public Lcom/samsung/android/cmcsetting/CmcSettingManager;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingManager"

.field private static SHIP_BUILD:Z


# instance fields
.field private final AUTHORITY:Ljava/lang/String;

.field private final DEVICE_CATEGORY_BT_WATCH:Ljava/lang/String;

.field private final DEVICE_CATEGORY_LAPTOP:Ljava/lang/String;

.field private final DEVICE_CATEGORY_PC:Ljava/lang/String;

.field private final DEVICE_CATEGORY_PHONE:Ljava/lang/String;

.field private final DEVICE_CATEGORY_SPEAKER:Ljava/lang/String;

.field private final DEVICE_CATEGORY_TABLET:Ljava/lang/String;

.field private final DEVICE_CATEGORY_TV:Ljava/lang/String;

.field private final DEVICE_CATEGORY_UNDEFINED:Ljava/lang/String;

.field private final DEVICE_TYPE_PD:Ljava/lang/String;

.field private final DEVICE_TYPE_SD:Ljava/lang/String;

.field private final METHOD_GET_ACTIVATIONS:Ljava/lang/String;

.field private final METHOD_GET_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String;

.field private final METHOD_GET_CMC_ACTIVATION:Ljava/lang/String;

.field private final METHOD_GET_CMC_SUPPORTED:Ljava/lang/String;

.field private final METHOD_GET_DEVICE_CATEGORY:Ljava/lang/String;

.field private final METHOD_GET_DEVICE_ID_LIST:Ljava/lang/String;

.field private final METHOD_GET_DEVICE_INFO:Ljava/lang/String;

.field private final METHOD_GET_DEVICE_NAME:Ljava/lang/String;

.field private final METHOD_GET_DEVICE_TYPE:Ljava/lang/String;

.field private final METHOD_GET_FRE:Ljava/lang/String;

.field private final METHOD_GET_LINE_ACTIVE_SIM_SLOT:Ljava/lang/String;

.field private final METHOD_GET_LINE_ID:Ljava/lang/String;

.field private final METHOD_GET_LINE_IMPU:Ljava/lang/String;

.field private final METHOD_GET_LINE_INFO:Ljava/lang/String;

.field private final METHOD_GET_LINE_MSISDN:Ljava/lang/String;

.field private final METHOD_GET_LINE_NMS_ADDR_LIST:Ljava/lang/String;

.field private final METHOD_GET_LINE_PCSCF_ADDR_LIST:Ljava/lang/String;

.field private final METHOD_GET_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String;

.field private final METHOD_GET_OWN_ACTIVATION_TIME:Ljava/lang/String;

.field private final METHOD_GET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String;

.field private final METHOD_GET_OWN_DEVICE_ID:Ljava/lang/String;

.field private final METHOD_GET_OWN_DEVICE_NAME:Ljava/lang/String;

.field private final METHOD_GET_OWN_DEVICE_TYPE:Ljava/lang/String;

.field private final METHOD_GET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String;

.field private final METHOD_GET_OWN_NETWORK_MODE:Ljava/lang/String;

.field private final METHOD_GET_OWN_SERVICE_VERSION:Ljava/lang/String;

.field private final METHOD_GET_PD_DEVICE_NAME:Ljava/lang/String;

.field private final METHOD_GET_SA_INFO:Ljava/lang/String;

.field private final METHOD_GET_WATCH_ACTIVATION:Ljava/lang/String;

.field private final METHOD_GET_WATCH_REGISTERED:Ljava/lang/String;

.field private final METHOD_GET_WATCH_SUPPORTED:Ljava/lang/String;

.field private final METHOD_OPEN_CMC_SETTING_MENU:Ljava/lang/String;

.field private final METHOD_VERSION:Ljava/lang/String;

.field private final NETWORK_MODE_USE_MOBILE_NETWORK:I

.field private final NETWORK_MODE_WIFI_ONLY:I

.field private final PARAM_AUTO_ACTIVATION:Ljava/lang/String;

.field private final PARAM_BT_MAC_ID:Ljava/lang/String;

.field private final PARAM_DEVICE_ID:Ljava/lang/String;

.field private final RESULT_OK:I

.field private final RET_ACCESS_TOKEN:Ljava/lang/String;

.field private final RET_ACTIVE_SIM_SLOT:Ljava/lang/String;

.field private final RET_CMC_ACTIVATION:Ljava/lang/String;

.field private final RET_CMC_SUPPORTED:Ljava/lang/String;

.field private final RET_DEVICE_ACTIVATION:Ljava/lang/String;

.field private final RET_DEVICE_CALL_ACTIVATION:Ljava/lang/String;

.field private final RET_DEVICE_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String;

.field private final RET_DEVICE_CATEGORY:Ljava/lang/String;

.field private final RET_DEVICE_ID_LIST:Ljava/lang/String;

.field private final RET_DEVICE_MESSAGE_ACTIVATION:Ljava/lang/String;

.field private final RET_DEVICE_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String;

.field private final RET_DEVICE_NAME:Ljava/lang/String;

.field private final RET_DEVICE_TYPE:Ljava/lang/String;

.field private final RET_ERROR_REASON:Ljava/lang/String;

.field private final RET_FRE:Ljava/lang/String;

.field private final RET_IMPU:Ljava/lang/String;

.field private final RET_LINE_ID:Ljava/lang/String;

.field private final RET_MSISDN:Ljava/lang/String;

.field private final RET_NETWORK_MODE:Ljava/lang/String;

.field private final RET_NMS_ADDR_LIST:Ljava/lang/String;

.field private final RET_OWN_ACTIVATION_TIME:Ljava/lang/String;

.field private final RET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String;

.field private final RET_OWN_DEVICE_ID:Ljava/lang/String;

.field private final RET_OWN_DEVICE_NAME:Ljava/lang/String;

.field private final RET_OWN_DEVICE_TYPE:Ljava/lang/String;

.field private final RET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String;

.field private final RET_OWN_SERVICE_VERSION:Ljava/lang/String;

.field private final RET_PCSCF_ADDR_LIST:Ljava/lang/String;

.field private final RET_PD_DEVICE_NAME:Ljava/lang/String;

.field private final RET_RESULT:Ljava/lang/String;

.field private final RET_SAMSUNG_USER_ID:Ljava/lang/String;

.field private final RET_WATCH_ACTIVATION:Ljava/lang/String;

.field private final RET_WATCH_REGISTER:Ljava/lang/String;

.field private final RET_WATCH_SUPPORTED:Ljava/lang/String;

.field private authorityUri:Landroid/net/Uri;

.field private authorityUriForCmcActivation:Landroid/net/Uri;

.field private authorityUriForCmcCallActivation:Landroid/net/Uri;

.field private authorityUriForCmcMessageActivation:Landroid/net/Uri;

.field private authorityUriForDevices:Landroid/net/Uri;

.field private authorityUriForLines:Landroid/net/Uri;

.field private authorityUriForNetworkMode:Landroid/net/Uri;

.field private authorityUriForSaInfo:Landroid/net/Uri;

.field private authorityUriForWatchActivation:Landroid/net/Uri;

.field private mCmcActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDevicesDbChangeObserver:Landroid/database/ContentObserver;

.field private mLinesDbChangeObserver:Landroid/database/ContentObserver;

.field private mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

.field private mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

.field private mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "pd"

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_TYPE_PD:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "sd"

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_TYPE_SD:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->NETWORK_MODE_USE_MOBILE_NETWORK:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->NETWORK_MODE_WIFI_ONLY:I

    .line 38
    const-string v1, "Phone"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_PHONE:Ljava/lang/String;

    .line 39
    const-string v1, "Tablet"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_TABLET:Ljava/lang/String;

    .line 40
    const-string v1, "BT-Watch"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_BT_WATCH:Ljava/lang/String;

    .line 41
    const-string v1, "Speaker"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_SPEAKER:Ljava/lang/String;

    .line 42
    const-string v1, "PC"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_PC:Ljava/lang/String;

    .line 43
    const-string v1, "TV"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_TV:Ljava/lang/String;

    .line 44
    const-string v1, "Laptop"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_LAPTOP:Ljava/lang/String;

    .line 45
    const-string v1, "Undefined"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->DEVICE_CATEGORY_UNDEFINED:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "open_cmc_setting_menu"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_OPEN_CMC_SETTING_MENU:Ljava/lang/String;

    .line 48
    const-string v1, "get_cmc_supported"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_CMC_SUPPORTED:Ljava/lang/String;

    .line 49
    const-string v1, "get_watch_supported"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_WATCH_SUPPORTED:Ljava/lang/String;

    .line 50
    const-string v1, "get_fre"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_FRE:Ljava/lang/String;

    .line 51
    const-string v1, "get_watch_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_WATCH_ACTIVATION:Ljava/lang/String;

    .line 52
    const-string v1, "get_own_device_type"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_DEVICE_TYPE:Ljava/lang/String;

    .line 53
    const-string v1, "get_own_device_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_DEVICE_ID:Ljava/lang/String;

    .line 54
    const-string v1, "get_own_device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_DEVICE_NAME:Ljava/lang/String;

    .line 55
    const-string v1, "get_own_service_version"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_SERVICE_VERSION:Ljava/lang/String;

    .line 56
    const-string v1, "get_own_network_mode"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_NETWORK_MODE:Ljava/lang/String;

    .line 57
    const-string v1, "get_own_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_ACTIVATION_TIME:Ljava/lang/String;

    .line 58
    const-string v1, "get_own_message_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String;

    .line 59
    const-string v1, "get_own_call_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String;

    .line 60
    const-string v1, "get_line_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_ID:Ljava/lang/String;

    .line 61
    const-string v1, "get_line_msisdn"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_MSISDN:Ljava/lang/String;

    .line 62
    const-string v1, "get_line_nms_addr_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_NMS_ADDR_LIST:Ljava/lang/String;

    .line 63
    const-string v1, "get_line_pcscf_addr_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_PCSCF_ADDR_LIST:Ljava/lang/String;

    .line 64
    const-string v1, "get_line_active_sim_slot"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_ACTIVE_SIM_SLOT:Ljava/lang/String;

    .line 65
    const-string v1, "get_line_impu"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_IMPU:Ljava/lang/String;

    .line 66
    const-string v1, "get_device_id_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_DEVICE_ID_LIST:Ljava/lang/String;

    .line 67
    const-string v1, "get_device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_DEVICE_NAME:Ljava/lang/String;

    .line 68
    const-string v1, "get_device_category"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_DEVICE_CATEGORY:Ljava/lang/String;

    .line 69
    const-string v1, "get_device_type"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_DEVICE_TYPE:Ljava/lang/String;

    .line 70
    const-string v1, "get_pd_device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_PD_DEVICE_NAME:Ljava/lang/String;

    .line 71
    const-string v1, "get_line_info"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_LINE_INFO:Ljava/lang/String;

    .line 72
    const-string v1, "get_device_info"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_DEVICE_INFO:Ljava/lang/String;

    .line 73
    const-string v1, "get_watch_registered"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_WATCH_REGISTERED:Ljava/lang/String;

    .line 74
    const-string v1, "get_message_allowed_sd_by_pd"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String;

    .line 75
    const-string v1, "get_call_allowed_sd_by_pd"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String;

    .line 76
    const-string v1, "get_activations"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_ACTIVATIONS:Ljava/lang/String;

    .line 77
    const-string v1, "get_sa_info"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_SA_INFO:Ljava/lang/String;

    .line 78
    const-string v1, "get_cmc_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_GET_CMC_ACTIVATION:Ljava/lang/String;

    .line 80
    const-string v1, "auto_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->PARAM_AUTO_ACTIVATION:Ljava/lang/String;

    .line 81
    const-string v1, "device_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->PARAM_DEVICE_ID:Ljava/lang/String;

    .line 82
    const-string v1, "bt_mac_address"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->PARAM_BT_MAC_ID:Ljava/lang/String;

    .line 84
    const-string v1, "cmc_supported"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_CMC_SUPPORTED:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "watch_supported"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_WATCH_SUPPORTED:Ljava/lang/String;

    .line 86
    const-string v1, "Fre"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_FRE:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "watch_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_WATCH_ACTIVATION:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "own_device_type"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_DEVICE_TYPE:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "own_device_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_DEVICE_ID:Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "own_device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_DEVICE_NAME:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "own_service_version"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_SERVICE_VERSION:Ljava/lang/String;

    .line 92
    const-string v1, "network_mode"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_NETWORK_MODE:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "own_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_ACTIVATION_TIME:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "own_message_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_MESSAGE_ACTIVATION_TIME:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "own_call_activation_time"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_OWN_CALL_ACTIVATION_TIME:Ljava/lang/String;

    .line 96
    const-string v1, "line_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_LINE_ID:Ljava/lang/String;

    .line 97
    const-string v1, "msisdn"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_MSISDN:Ljava/lang/String;

    .line 98
    const-string v1, "impu"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_IMPU:Ljava/lang/String;

    .line 99
    const-string v1, "nms_addr_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_NMS_ADDR_LIST:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "pcscf_addr_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_PCSCF_ADDR_LIST:Ljava/lang/String;

    .line 101
    const-string v1, "active_sim_slot"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_ACTIVE_SIM_SLOT:Ljava/lang/String;

    .line 102
    const-string v1, "device_id_list"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_ID_LIST:Ljava/lang/String;

    .line 103
    const-string v1, "device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_NAME:Ljava/lang/String;

    .line 104
    const-string v1, "device_category"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_CATEGORY:Ljava/lang/String;

    .line 105
    const-string v1, "device_type"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_TYPE:Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "pd_device_name"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_PD_DEVICE_NAME:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "result"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_RESULT:Ljava/lang/String;

    .line 108
    const-string v1, "error_reason"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_ERROR_REASON:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "watch_register"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_WATCH_REGISTER:Ljava/lang/String;

    .line 110
    const-string v1, "message_allowed_sd_by_pd"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_MESSAGE_ALLOWED_SD_BY_PD:Ljava/lang/String;

    .line 111
    const-string v1, "call_allowed_sd_by_pd"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_CALL_ALLOWED_SD_BY_PD:Ljava/lang/String;

    .line 112
    const-string v1, "activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_ACTIVATION:Ljava/lang/String;

    .line 113
    const-string v1, "message_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_MESSAGE_ACTIVATION:Ljava/lang/String;

    .line 114
    const-string v1, "call_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_DEVICE_CALL_ACTIVATION:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "samsung_user_id"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_SAMSUNG_USER_ID:Ljava/lang/String;

    .line 116
    const-string v1, "access_token"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_ACCESS_TOKEN:Ljava/lang/String;

    .line 117
    const-string v1, "cmc_activation"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RET_CMC_ACTIVATION:Ljava/lang/String;

    .line 119
    const-string v1, "com.samsung.android.mdec.provider.setting"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->AUTHORITY:Ljava/lang/String;

    .line 120
    const-string/jumbo v1, "v1"

    iput-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->METHOD_VERSION:Ljava/lang/String;

    .line 121
    iput v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->RESULT_OK:I

    .line 123
    const-string v0, "content://com.samsung.android.mdec.provider.setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    .line 124
    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_activation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    .line 125
    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_message_activation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    .line 126
    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_call_activation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    .line 127
    const-string v0, "content://com.samsung.android.mdec.provider.setting/watch_activation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    .line 128
    const-string v0, "content://com.samsung.android.mdec.provider.setting/network_mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    .line 129
    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    .line 130
    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    .line 131
    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 134
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 135
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 136
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 137
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 138
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 139
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 140
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 142
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 143
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 144
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 145
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 147
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 148
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 149
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcActivation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcMessageActivation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcCallActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcWatchActivation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcNetworkMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcLines()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcDevices()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcSaInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 2360
    const-string v0, "Phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_0
    nop

    .line 2363
    const-string v0, "Tablet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2364
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_1
    nop

    .line 2366
    const-string v0, "BT-Watch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2367
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_2
    nop

    .line 2369
    const-string v0, "Speaker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2370
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_3
    nop

    .line 2372
    const-string v0, "PC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2373
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_4
    nop

    .line 2375
    const-string v0, "TV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2376
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    :cond_5
    nop

    .line 2378
    const-string v0, "Laptop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2379
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_0

    .line 2382
    :cond_6
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    :goto_0
    return-object p1
.end method

.method private getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 2345
    const-string/jumbo v0, "pd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2346
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_0
    nop

    .line 2348
    const-string/jumbo v0, "sd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2349
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    .line 2352
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object p1
.end method

.method private inspector(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2438
    :cond_0
    sget-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo p1, "xxxxx"

    return-object p1

    .line 2441
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isExistActivationSd(Z)Z
    .locals 4

    .line 2389
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2391
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2392
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2394
    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    const-string v3, "CmcSettingManager"

    if-eqz p1, :cond_1

    .line 2396
    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2397
    const-string p1, "call activation sd is exist"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2402
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    const-string p1, "message activation sd is exist"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isSupportVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    .line 2418
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2419
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur version : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "2.2.00.00"

    .line 2421
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Not supported version or not exist"

    .line 2425
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2428
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private registerCmcActivationObserver()V
    .locals 4

    .line 2143
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2144
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2151
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcCallActivationObserver()V
    .locals 4

    .line 2169
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2170
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2177
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcDeviceInfoObserver()V
    .locals 4

    .line 2221
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2222
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2229
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcLineInfoObserver()V
    .locals 4

    .line 2208
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2209
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2216
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcMessageActivationObserver()V
    .locals 4

    .line 2156
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2157
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2164
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcNetworkModeObserver()V
    .locals 4

    .line 2195
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2196
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 2203
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcWatchActivationObserver()V
    .locals 4

    .line 2182
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2183
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2190
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .locals 2

    .line 2107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2108
    const-string v0, "CmcSettingManager"

    const-string v1, "looper is null create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2112
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2135
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSamsungAccountInfoObserver()V

    goto :goto_0

    .line 2132
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcDeviceInfoObserver()V

    goto :goto_0

    .line 2129
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcLineInfoObserver()V

    goto :goto_0

    .line 2126
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcNetworkModeObserver()V

    goto :goto_0

    .line 2123
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcWatchActivationObserver()V

    goto :goto_0

    .line 2120
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcCallActivationObserver()V

    goto :goto_0

    .line 2117
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcMessageActivationObserver()V

    goto :goto_0

    .line 2114
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcActivationObserver()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private registerSamsungAccountInfoObserver()V
    .locals 4

    .line 2234
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2235
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 2242
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private sendEventCmcActivation()V
    .locals 2

    .line 2445
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2456
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcCallActivation()V
    .locals 2

    .line 2475
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2486
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcDevices()V
    .locals 2

    .line 2535
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2546
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcLines()V
    .locals 2

    .line 2520
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2531
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcMessageActivation()V
    .locals 2

    .line 2460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2471
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcNetworkMode()V
    .locals 2

    .line 2505
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2516
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcSaInfo()V
    .locals 2

    .line 2550
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2561
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcWatchActivation()V
    .locals 2

    .line 2490
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2501
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterCmcActivationObserver()V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2290
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcCallActivationObserver()V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2304
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcDeviceInfoObserver()V
    .locals 2

    .line 2330
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2332
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcLineInfoObserver()V
    .locals 2

    .line 2323
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2325
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcMessageActivationObserver()V
    .locals 2

    .line 2295
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2297
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcNetworkModeObserver()V
    .locals 2

    .line 2316
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2318
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcWatchActivationObserver()V
    .locals 2

    .line 2309
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2311
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .locals 1

    .line 2247
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2273
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    .line 2274
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    .line 2275
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    .line 2276
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    .line 2277
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    .line 2278
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    .line 2279
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    .line 2280
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    goto :goto_0

    .line 2270
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    goto :goto_0

    .line 2267
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    goto :goto_0

    .line 2264
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    goto :goto_0

    .line 2261
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    goto :goto_0

    .line 2258
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    goto :goto_0

    .line 2255
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    goto :goto_0

    .line 2252
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    goto :goto_0

    .line 2249
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private unregisterSamsungAccountInfoObserver()V
    .locals 2

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2339
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 191
    const-string v0, "CmcSettingManager"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterListener()Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getCallActivation(Ljava/lang/String;)Z
    .locals 2

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2003
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 2007
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getCmcActivation()Z
    .locals 2

    .line 1973
    const-string v0, "CmcSettingManager"

    const-string v1, "getCmcActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1975
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 1979
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v0

    return v0
.end method

.method public getCmcActivation(Ljava/lang/String;)Z
    .locals 8

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 917
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 923
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 924
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v6, "v1/get_activations"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "result"

    .line 927
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_1

    const-string v4, "activation"

    .line 929
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getCmcActivation success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_1
    nop

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getCmcActivation fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception is occured : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 940
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmc_device_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 942
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "cmc_activation"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmc activation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2

    .line 930
    :goto_0
    move v2, v0

    goto :goto_2

    :cond_2
    goto :goto_2

    .line 943
    :cond_3
    :goto_1
    nop

    :goto_2
    return v2
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 7

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 993
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 999
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1000
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_activations"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "result"

    .line 1003
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const-string v3, "call_activation"

    .line 1005
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getCmcCallActivation success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_1
    nop

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getCmcCallActivation fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public getCmcMessageActivation(Ljava/lang/String;)Z
    .locals 7

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcMessageActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 959
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 965
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 966
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_activations"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "result"

    .line 969
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const-string v3, "message_activation"

    .line 971
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getCmcMessageActivation success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_1
    nop

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getCmcMessageActivation fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public getCmcSupported()Z
    .locals 6

    .line 690
    const-string v0, "CmcSettingManager"

    const-string v1, "getCmcSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 692
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 698
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_cmc_supported"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 700
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "cmc_supported"

    .line 702
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getCmcSupported success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getCmcSupported fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 6

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceCategory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1634
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1638
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 1640
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1641
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_category"

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1644
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "device_category"

    const-string v3, ""

    .line 1646
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceCategory success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v0

    goto :goto_0

    :cond_1
    nop

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceCategory fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1565
    const-string v0, "CmcSettingManager"

    const-string v1, "getDeviceIdList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1567
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    .line 1573
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_device_id_list"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1575
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "device_id_list"

    .line 1577
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getDeviceIdList success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getDeviceIdList fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
    .locals 8

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1853
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    .line 1859
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_id"

    .line 1860
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_info"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1863
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 1865
    new-instance v3, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;-><init>()V

    .line 1866
    invoke-virtual {v3, p1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1869
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "device_name"

    .line 1870
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1871
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "device_category"

    .line 1873
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1874
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V

    goto :goto_0

    :cond_3
    const-string v6, "device_type"

    .line 1876
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1877
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V

    goto :goto_0

    :cond_4
    const-string v6, "activation"

    .line 1879
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1880
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_5

    move v7, v4

    :cond_5
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setActivation(Z)V

    goto :goto_0

    :cond_6
    const-string v6, "message_activation"

    .line 1882
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1883
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_7

    move v7, v4

    :cond_7
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageActivation(Z)V

    goto :goto_0

    :cond_8
    const-string v6, "call_activation"

    .line 1885
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1886
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_9

    move v7, v4

    :cond_9
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallActivation(Z)V

    goto :goto_0

    :cond_a
    const-string v6, "message_allowed_sd_by_pd"

    .line 1888
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1889
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_b

    move v7, v4

    :cond_b
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageAllowedSdByPd(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v6, "call_allowed_sd_by_pd"

    .line 1891
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1892
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_d

    move v7, v4

    :cond_d
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallAllowedSdByPd(Z)V

    goto/16 :goto_0

    .line 1869
    :cond_e
    move-object v2, v3

    goto :goto_1

    .line 1892
    :cond_f
    nop

    .line 1898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceInfo fail : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    goto :goto_1

    :catch_0
    move-exception p1

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1597
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcSettingManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1599
    const-string p1, "context is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1605
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1606
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_name"

    invoke-virtual {p1, v4, v5, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v1, "result"

    const/4 v4, -0x1

    .line 1609
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const-string v1, "device_name"

    .line 1611
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call inf : getDeviceName success : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getDeviceName fail : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception is occured : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 6

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1668
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1672
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 1674
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1675
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_type"

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1678
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "device_type"

    const-string v3, ""

    .line 1680
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceType success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    goto :goto_0

    :cond_1
    nop

    .line 1685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceType fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getFre()Z
    .locals 6

    .line 752
    const-string v0, "CmcSettingManager"

    const-string v1, "getFre"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 754
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 760
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_fre"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 762
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "Fre"

    .line 764
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getFre success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getFre fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getLineActiveSimSlot()I
    .locals 6

    .line 1502
    const-string v0, "CmcSettingManager"

    const-string v1, "getLineActiveSimSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1504
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 1510
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_active_sim_slot"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    .line 1512
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "active_sim_slot"

    .line 1514
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getActiveSimSlot success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getActiveSimSlot fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getLineId()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1375
    const-string v1, "CmcSettingManager"

    const-string v2, "getLineId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1377
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1383
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_line_id"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    .line 1385
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "line_id"

    .line 1387
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineId success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLineId fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1533
    const-string v1, "CmcSettingManager"

    const-string v2, "getLineImpu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1535
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1541
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_line_impu"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    .line 1543
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "impu"

    .line 1545
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getLineImpu success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getLineImpu fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getLineInfo()Lcom/samsung/android/cmcsetting/CmcLineInfo;
    .locals 7

    .line 1799
    const-string v0, "CmcSettingManager"

    const-string v1, "getLineInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1801
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    .line 1807
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_info"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1809
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1811
    new-instance v3, Lcom/samsung/android/cmcsetting/CmcLineInfo;

    invoke-direct {v3}, Lcom/samsung/android/cmcsetting/CmcLineInfo;-><init>()V

    .line 1812
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1813
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "line_id"

    .line 1814
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1815
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setLineId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "msisdn"

    .line 1817
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1818
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setMsisdn(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v6, "impu"

    .line 1820
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1821
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setImpu(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "active_sim_slot"

    .line 1823
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1824
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setLineSlotIndex(I)V

    goto :goto_0

    :cond_5
    const-string v6, "nms_addr_list"

    .line 1826
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1827
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setNmsAddrList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "pcscf_addr_list"

    .line 1829
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1830
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcLineInfo;->setPcscfAddrList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1813
    :cond_7
    move-object v2, v3

    goto :goto_1

    .line 1830
    :cond_8
    nop

    .line 1836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getLineInfo fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v1

    .line 1840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2
.end method

.method public getLineMsisdn()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1407
    const-string v1, "CmcSettingManager"

    const-string v2, "getLineMsisdn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1409
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1415
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_line_msisdn"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    .line 1417
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "msisdn"

    .line 1419
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getMsisdn success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getMsisdn fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getLineNmsAddrList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1439
    const-string v0, "CmcSettingManager"

    const-string v1, "getLineNmsAddrList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1441
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    .line 1447
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_nms_addr_list"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1449
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "nms_addr_list"

    .line 1451
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getNmsAddrList success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 1456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getNmsAddrList fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public getLinePcscfAddrList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1471
    const-string v0, "CmcSettingManager"

    const-string v1, "getLinePcscfAddrList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1473
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    nop

    .line 1479
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_pcscf_addr_list"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1481
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "pcscf_addr_list"

    .line 1483
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getPcscfAddrList success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 1488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getPcscfAddrList fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public getMessageActivation(Ljava/lang/String;)Z
    .locals 2

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1989
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1993
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isMessageAllowedSdByPd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getOwnCallActivationTime()J
    .locals 5

    .line 1340
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCallActivationTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1342
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1365
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "cmc_call_activation_time"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "own call activation time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getOwnCmcActivation()Z
    .locals 5

    .line 783
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCmcActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 785
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 810
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_activation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmc activation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public getOwnCmcActivationTime()J
    .locals 5

    .line 1270
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCmcActivationTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1272
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1295
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "cmc_activation_time"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "own activation time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getOwnCmcCallActivation()Z
    .locals 6

    .line 867
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCmcCallActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 869
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 895
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_device_type"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    const-string/jumbo v3, "pd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "cmc_activation"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pd : cmc activation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "cmc_call_activation"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sd : cmc call activation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_2

    .line 898
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    nop

    .line 903
    :goto_1
    return v2
.end method

.method public getOwnCmcMessageActivation()Z
    .locals 6

    .line 820
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCmcMessageActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 822
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 848
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_device_type"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    const-string/jumbo v3, "pd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "cmc_activation"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pd : cmc activation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "cmc_message_activation"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sd : cmc message activation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_2

    .line 851
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    nop

    .line 856
    :goto_1
    return v2
.end method

.method public getOwnDeviceId()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1107
    const-string v1, "CmcSettingManager"

    const-string v2, "getOwnDeviceId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1109
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1115
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_own_device_id"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1117
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "own_device_id"

    .line 1119
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getOwnDeviceId success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    nop

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getOwnDeviceId fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    :cond_2
    move-object v0, v3

    goto :goto_0

    .line 1124
    :catch_0
    move-exception v0

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_device_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOwnDeviceName()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1142
    const-string v1, "CmcSettingManager"

    const-string v2, "getOwnDeviceName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1144
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1150
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_own_device_name"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    .line 1152
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "own_device_name"

    .line 1154
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getOwnDeviceName success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getOwnDeviceName fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 4

    .line 1058
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnDeviceType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1060
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1085
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_device_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own device type - db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    const-string/jumbo v1, "ro.cmc.device_type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own device type - ro : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1092
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own device type - characteristics : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 1094
    const-string/jumbo v0, "tablet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object v0

    .line 1099
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getOwnMessageActivationTime()J
    .locals 5

    .line 1305
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnMessageActivationTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1307
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1330
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "cmc_message_activation_time"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "own message activation time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 4

    .line 1215
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnNetworkMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1217
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1250
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "cmc_network_type"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own network mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 1254
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v0, v1, :cond_2

    .line 1257
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_0

    .line 1260
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    :goto_0
    return-object v0
.end method

.method public getOwnServiceVersion()Ljava/lang/String;
    .locals 4

    .line 1173
    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnServiceVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1175
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1201
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_service_version"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own service version in global : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    const-string/jumbo v1, "ro.cmc.version"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "own service version in prop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public getPdDeviceName()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1699
    const-string v1, "CmcSettingManager"

    const-string v2, "getPdDeviceName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1701
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    nop

    .line 1707
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_pd_device_name"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    .line 1709
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "pd_device_name"

    .line 1711
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getPdDeviceName success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    .line 1716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : getPdDeviceName fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;
    .locals 6

    .line 2080
    const-string v0, "CmcSettingManager"

    const-string v1, "getSamsungAccountInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2082
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2086
    :cond_0
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSaInfo;

    invoke-direct {v1}, Lcom/samsung/android/cmcsetting/CmcSaInfo;-><init>()V

    .line 2088
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_sa_info"

    invoke-virtual {v3, v4, v5, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 2090
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "samsung_user_id"

    .line 2092
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaUserId(Ljava/lang/String;)V

    const-string v3, "access_token"

    .line 2093
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaAccessToken(Ljava/lang/String;)V

    const-string v2, "call inf : getSamsungAccountInfo success"

    .line 2094
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    nop

    .line 2096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getSamsungAccountInfo fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    :goto_0
    goto :goto_1

    .line 2096
    :catch_0
    move-exception v2

    .line 2100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getWatchActivation()Z
    .locals 5

    .line 1024
    const-string v0, "CmcSettingManager"

    const-string v1, "getWatchActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1026
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1048
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "cmc_watch_activation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmc watch activation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public getWatchRegistered(Ljava/lang/String;)Z
    .locals 7

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWatchRegistered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1942
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 1948
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "bt_mac_address"

    .line 1949
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_watch_registered"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "result"

    .line 1952
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const-string/jumbo v3, "watch_register"

    .line 1954
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getWatchRegistered success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_1
    nop

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getWatchRegistered fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public getWatchSupported()Z
    .locals 6

    .line 721
    const-string v0, "CmcSettingManager"

    const-string v1, "getWatchSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 723
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 729
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_watch_supported"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 731
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "watch_supported"

    .line 733
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getWatchSupported success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_0

    :cond_1
    nop

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getWatchSupported fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public hasCallAllowedSdByPd()Z
    .locals 2

    .line 1926
    const-string v0, "CmcSettingManager"

    const-string v1, "hasCallAllowedSdByPd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1928
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1932
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistActivationSd(Z)Z

    move-result v0

    return v0
.end method

.method public hasMessageAllowedSdByPd()Z
    .locals 3

    .line 1912
    const-string v0, "CmcSettingManager"

    const-string v1, "hasMessageAllowedSdByPd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1914
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 1918
    invoke-direct {p0, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistActivationSd(Z)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 3

    .line 164
    const-string v0, "CmcSettingManager"

    const-string v1, "init : CmcSettingManager version : 1.3.2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_package_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "com.samsung.android.mdecservice"

    .line 172
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSupportVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 177
    const-string/jumbo p1, "valid package is not exist"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    nop

    .line 181
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 7

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallAllowedSdByPd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1768
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 1774
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1775
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_call_allowed_sd_by_pd"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "result"

    .line 1778
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const-string v3, "call_allowed_sd_by_pd"

    .line 1780
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : isCallAllowedSdByPd success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_1
    nop

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : isCallAllowedSdByPd fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public isExistCallActivationSD()Z
    .locals 2

    .line 2029
    const-string v0, "CmcSettingManager"

    const-string v1, "isExistCallActivationSD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2031
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->hasCallAllowedSdByPd()Z

    move-result v0

    return v0
.end method

.method public isExistMessageActivationSD()Z
    .locals 2

    .line 2015
    const-string v0, "CmcSettingManager"

    const-string v1, "isExistMessageActivationSD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2017
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 2021
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->hasMessageAllowedSdByPd()Z

    move-result v0

    return v0
.end method

.method public isMessageAllowedSdByPd(Ljava/lang/String;)Z
    .locals 7

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMessageAllowedSdByPd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1734
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 1740
    const/4 v0, 0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1741
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_message_allowed_sd_by_pd"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "result"

    .line 1744
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    const-string v3, "message_allowed_sd_by_pd"

    .line 1746
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : isMessageAllowedSdByPd success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_1
    nop

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : isMessageAllowedSdByPd fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception p1

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public isReadyBothPdAndSd()Z
    .locals 9

    .line 2043
    const-string v0, "CmcSettingManager"

    const-string v1, "isReadyBothPdAndSd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2045
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 2050
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 2052
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    move v5, v4

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2053
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v7

    .line 2054
    sget-object v8, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    .line 2055
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcActivation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v3

    goto :goto_0

    .line 2059
    :cond_2
    sget-object v8, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v7, v8, :cond_3

    if-nez v5, :cond_3

    .line 2060
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcActivation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v3

    :cond_3
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2050
    :cond_4
    move v4, v2

    move v5, v4

    .line 2060
    :cond_5
    :goto_1
    nop

    .line 2070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadyBothPdAndSd procedure finish  : isExistPd("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "), isExistSd("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "), ret("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method

.method public openCmcSetting(Z)Z
    .locals 7

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openCmcSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 661
    const-string p1, "context is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    nop

    .line 666
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 667
    const-string v3, "auto_activation"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    const/4 p1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/open_cmc_setting_menu"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 671
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p1, :cond_1

    const-string v0, "call inf : openCmcSetting success"

    .line 673
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    nop

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call inf : openCmcSetting fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error_reason"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    nop

    .line 675
    if-ne v3, p1, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    goto :goto_1

    :catch_0
    move-exception p1

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z
    .locals 3

    .line 202
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 204
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 208
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z
    .locals 3

    .line 310
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcCallActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 312
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 316
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z
    .locals 3

    .line 526
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcDeviceInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 528
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 532
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z
    .locals 3

    .line 472
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcLineInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 474
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 478
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;)Z
    .locals 3

    .line 256
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcMessageActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 258
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 262
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z
    .locals 3

    .line 418
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcNetworkModeInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 420
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 424
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z
    .locals 3

    .line 580
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcSamsungAccountInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 582
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 586
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;)Z
    .locals 3

    .line 364
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcWatchActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 366
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 370
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener()Z
    .locals 3

    .line 633
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 635
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 638
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 641
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 642
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 643
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 644
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 645
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 646
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 647
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 648
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 v0, 0x1

    return v0
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z
    .locals 4

    .line 226
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 228
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 234
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 242
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z
    .locals 4

    .line 334
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcCallActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 336
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 339
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 342
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 350
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z
    .locals 4

    .line 550
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcDeviceInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 552
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 555
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 558
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 564
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 566
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z
    .locals 4

    .line 496
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcLineInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 498
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 501
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 504
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 510
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 511
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 512
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;)Z
    .locals 4

    .line 280
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcMessageActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 282
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 288
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 296
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->messageActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z
    .locals 4

    .line 442
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcNetworkModeInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 444
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 447
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 450
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 456
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 458
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z
    .locals 4

    .line 604
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcSamsungAccountInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 606
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 609
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 612
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 618
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 619
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 620
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;)Z
    .locals 4

    .line 388
    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : CmcWatchActivationInfoChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 390
    const-string p1, "context is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 393
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 396
    const-string p1, "listener is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 402
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 404
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->watchActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
