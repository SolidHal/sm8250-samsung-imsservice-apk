.class public Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    }
.end annotation


# static fields
.field public static final AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static AIRPLANE_MODE_ON:I = 0x0

.field public static final AUTHOTIRY_RCS_DM_CONFIG:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field public static final CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static DATA_ROAMING_UNKNOWN:I = 0x0

.field public static final DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static GLOBAL:Ljava/lang/String; = null

.field public static final IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_NV:Ljava/lang/String; = null

.field public static final IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_OMADM:Ljava/lang/String; = null

.field private static IMS_PROFILE:Ljava/lang/String; = null

.field public static final IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_SWITCH:Ljava/lang/String; = null

.field public static final IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_USER:Ljava/lang/String; = null

.field public static final LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final LTE_DATA_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static LTE_DATA_NETWORK_MODE_ENABLED:I = 0x0

.field public static final LTE_DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static LTE_DATA_ROAMING_DISABLED:I = 0x0

.field public static final MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_DISABLED:I = 0x0

.field public static final RCS_DISABLED_BY_NETWORK:I = -0x2

.field public static final RCS_ENABLED:I = 0x1

.field public static final RCS_ENABLED_BY_NETWORK:I = 0x3

.field public static final RCS_NOTSET:I = -0x1

.field public static final RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_SETTING_NOT_FOUND:I = -0x3

.field public static final RCS_TURNING_OFF:I = 0x2

.field public static final RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static ROAMING_DATA_ENABLED:I = 0x0

.field private static SECURE:Ljava/lang/String; = null

.field public static final SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static SIM_MOBILITY:Ljava/lang/String; = null

.field private static SYSTEM:Ljava/lang/String; = null

.field public static final USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VIDEO_DISABLED:I = 0x1

.field public static final VIDEO_ENABLED:I = 0x0

.field public static final VIDEO_UNKNOWN:I = -0x1

.field public static final VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOICE_CS:I = 0x1

.field public static final VOICE_UNKNOWN:I = -0x1

.field public static final VOICE_VOLTE:I = 0x0

.field public static final VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOLTE_PROVISIONING_DISABLED:I = 0x0

.field public static final VOLTE_PROVISIONING_ENABLED:I = 0x1

.field public static final VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static VOLTE_ROAMING_DISABLED:I

.field public static VOLTE_ROAMING_ENABLED:I

.field public static VOLTE_ROAMING_UNKNOWN:I

.field public static final VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    .line 72
    const-string/jumbo v1, "system"

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    .line 73
    const-string v2, "global"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    .line 74
    const-string/jumbo v2, "secure"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    .line 75
    const-string/jumbo v2, "profile"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILE:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "userconfig"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_USER:Ljava/lang/String;

    .line 77
    const-string v2, "imsswitch"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCH:Ljava/lang/String;

    .line 78
    const-string v2, "nvstorage"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV:Ljava/lang/String;

    .line 79
    const-string v2, "omadm/./3GPP_IMS"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_OMADM:Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "simmobility"

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SIM_MOBILITY:Ljava/lang/String;

    .line 87
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "voicecall_type"

    invoke-direct {v2, v3, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 89
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "voicecall_type2"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 96
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "voicecall_type_user_action"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 98
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "voicecall_type_user_action2"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 101
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "videocall_type"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 103
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "videocall_type2"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 109
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "rcs_user_setting"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 111
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v4, "rcs_user_setting2"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 130
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "data_roaming"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 132
    const/4 v1, -0x1

    sput v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 136
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v5, "airplane_mode_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 138
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v5, "mobile_data"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 140
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v5, "mobile_data_pressed"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 142
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string/jumbo v5, "wifi_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 144
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v5, "sms_default_application"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 146
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 148
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v5, "user_setup_complete"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 150
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v5, "hd_voice_roaming_enabled"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 152
    sput v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    .line 153
    const/4 v1, 0x0

    sput v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_DISABLED:I

    .line 154
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    .line 156
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    .line 158
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string v5, "lte_mode_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 161
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_NETWORK_MODE_ENABLED:I

    .line 163
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v4, "lte_roaming_mode_on"

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 166
    sput v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    .line 168
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string/jumbo v2, "preferred_network_mode"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 170
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v2, "prefered_voice_call"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 172
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v2, "allow_volte_provisioning"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 178
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v2, "com.sec.ims.settings"

    const-string v4, ""

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 180
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILE:Ljava/lang/String;

    const-string v5, "*"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 182
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SIM_MOBILITY:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 184
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCH:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 186
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_USER:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 188
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 190
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_OMADM:Ljava/lang/String;

    const-string v6, "com.samsung.rcs.dmconfigurationprovider"

    invoke-direct {v0, v6, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 194
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable1"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 196
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable2"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 198
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred1"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 200
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred2"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 202
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming1"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 204
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming2"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 208
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v2, "com.sec.ims.settings"

    const-string v5, ""

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 214
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "downloadconfig"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 217
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string/jumbo v1, "resetconfig"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 220
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "mnomap_updated"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 223
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "carrier_feature_updated"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    return-object v0
.end method

.method public static addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V
    .locals 2
    .param p0, "matcher"    # Landroid/content/UriMatcher;
    .param p1, "uri"    # Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    .param p2, "event"    # I

    .line 230
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method public static getRcsUserSetting(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 283
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    .locals 1
    .param p0, "item"    # I
    .param p1, "phoneId"    # I

    .line 372
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 384
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 380
    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 381
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 377
    :cond_4
    if-nez p1, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 378
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 374
    :cond_6
    if-nez p1, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0

    .line 375
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object v0
.end method

.method public static getVideoCallType(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 296
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    .line 297
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .local v0, "videoType":I
    goto :goto_0

    .line 299
    .end local v0    # "videoType":I
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 301
    .restart local v0    # "videoType":I
    :goto_0
    return v0
.end method

.method public static getVoiceCallType(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 235
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    .line 236
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .local v0, "voiceType":I
    goto :goto_0

    .line 238
    .end local v0    # "voiceType":I
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 240
    .restart local v0    # "voiceType":I
    :goto_0
    return v0
.end method

.method public static getWiFiCallEnabled(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 329
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 330
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 329
    :goto_0
    return v0
.end method

.method public static getWiFiCallPreferred(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 334
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 334
    :goto_0
    return v0
.end method

.method public static getWiFiCallWhenRoaming(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I
    .param p2, "phoneId"    # I

    .line 339
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 340
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 339
    :goto_0
    return v0
.end method

.method public static isUserToggledVoiceCallType(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 274
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 275
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .local v0, "isToggled":I
    goto :goto_0

    .line 277
    .end local v0    # "isToggled":I
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 279
    .restart local v0    # "isToggled":I
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isWiFiCallEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result v2

    .line 321
    .local v2, "wifiCallEnabled1":I
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result v0

    .line 323
    .local v0, "wifiCallEnabled2":I
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWiFiCallEnabled: wifi_call_enable ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], wifi_call_enable2 ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eq v2, v3, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public static setRcsUserSetting(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newValue"    # I
    .param p2, "phoneId"    # I

    .line 287
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object v0

    .line 288
    .local v0, "si":Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    .line 289
    .local v2, "curValue":I
    if-ne v2, p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 290
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 292
    :cond_1
    return-void
.end method

.method public static setVideoCallType(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newValue"    # I
    .param p2, "phoneId"    # I

    .line 305
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_2

    .line 306
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 307
    .local v0, "curValue":I
    if-ne v0, p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 308
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 310
    .end local v0    # "curValue":I
    :cond_1
    goto :goto_0

    .line 311
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 312
    .restart local v0    # "curValue":I
    if-ne v0, p1, :cond_3

    if-ne p1, v1, :cond_4

    .line 313
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 316
    .end local v0    # "curValue":I
    :cond_4
    :goto_0
    return-void
.end method

.method public static setVoiceCallType(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newValue"    # I
    .param p2, "phoneId"    # I

    .line 244
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_2

    .line 245
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 246
    .local v0, "curValue":I
    if-ne v0, p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 247
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 249
    .end local v0    # "curValue":I
    :cond_1
    goto :goto_0

    .line 250
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 251
    .restart local v0    # "curValue":I
    if-ne v0, p1, :cond_3

    if-ne p1, v1, :cond_4

    .line 252
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 255
    .end local v0    # "curValue":I
    :cond_4
    :goto_0
    return-void
.end method

.method public static setVoiceCallTypeUserAction(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newValue"    # I
    .param p2, "phoneId"    # I

    .line 259
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 260
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 261
    .local v0, "curValue":I
    if-eq v0, p1, :cond_1

    .line 262
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 265
    .end local v0    # "curValue":I
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 266
    .restart local v0    # "curValue":I
    if-eq v0, p1, :cond_1

    .line 267
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 270
    :cond_1
    :goto_0
    return-void
.end method

.method public static setWiFiCallEnabled(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 345
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 346
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 347
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 348
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 350
    :cond_1
    :goto_0
    return-void
.end method

.method public static setWiFiCallPreferred(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 354
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 355
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 356
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 357
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 359
    :cond_1
    :goto_0
    return-void
.end method

.method public static setWiFiCallWhenRoaming(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 363
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 364
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 365
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 366
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 368
    :cond_1
    :goto_0
    return-void
.end method
