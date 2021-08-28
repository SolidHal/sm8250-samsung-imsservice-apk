.class public Lcom/sec/internal/ims/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SettingsProvider$ImpuRecordTable;
    }
.end annotation


# static fields
.field private static final ACS_INFO:I = 0x25

.field private static final ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field private static final CONFIG_DB_RESET:I = 0x1c

.field private static final CSC_PROFILE:I = 0x7

.field private static final CSC_PROFILE_ID:I = 0x8

.field private static final CSC_SETTING:I = 0x9

.field private static final CSC_SETTING_ID:I = 0xa

.field private static final DEBUG_CONFIG:I = 0x15

.field private static final DM_ACCESS:I = 0x18

.field private static final DM_CONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field private static final DNS_BLOCK:I = 0x14

.field private static final DOWNLOAD_CONFIG:I = 0x1d

.field private static final DT_LOC_USER_CONSENT:I = 0x28

.field private static final EPDG_SYSTEM_SETTINGS:I = 0x27

.field private static final EXTRA_CARRIER_PHONEID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field private static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field private static final GCF_CONFIG_NAME:I = 0x13

.field private static final GCF_INIT_RAT:I = 0x23

.field private static final IMPU:I = 0x11

.field private static final IMS_GLOBAL:I = 0x4

.field private static final IMS_GLOBAL_ID:I = 0x5

.field private static final IMS_GLOBAL_RESET:I = 0x6

.field private static final IMS_PROFILE:I = 0x1

.field private static final IMS_PROFILE_ID:I = 0x2

.field private static final IMS_PROFILE_RESET:I = 0x3

.field private static final IMS_SMK_SECRET_KEY:I = 0x21

.field private static final IMS_SWITCH:I = 0xb

.field private static final IMS_SWITCH_NAME:I = 0xd

.field private static final IMS_SWITCH_RESET:I = 0xc

.field private static final IMS_USER_SETTING:I = 0x24

.field private static final LOG_DELETE:Ljava/lang/String; = "Delete"

.field private static final LOG_INSERT:Ljava/lang/String; = "Insert"

.field private static final LOG_QUERY:Ljava/lang/String; = "Query"

.field public static final LOG_TAG:Ljava/lang/String; = "ImsSettingsProvider"

.field private static final LOG_UPDATE:Ljava/lang/String; = "Update"

.field private static final MNO:I = 0x17

.field private static final NV_LIST:I = 0x1a

.field private static final NV_STORAGE:I = 0xf

.field private static final PROFILE_MATCHER:I = 0x0

.field private static final RCS_VER:I = 0x1f

.field private static final RCS_VERSION:Ljava/lang/String; = "6.0.3"

.field private static final READ_ALL_OMADM:I = 0x19

.field private static final RESET_DOWNLOAD_CONFIG:I = 0x1e

.field private static final SELF_PROVISIONING:I = 0x12

.field private static final SELF_WIFICALLINGACTIVATION:I = 0x16

.field private static final SIM_DATA:I = 0xe

.field private static final SIM_MOBILITY:I = 0x20

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SMK_UPDATED_INFO:I = 0x22

.field private static final SMS_SETTING:I = 0x26

.field private static final USER_CONFIG:I = 0x10

.field private static final mSecretKey:Ljava/lang/String; = "3C061A6726A7E3CAF9634D43D93CAC61"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceConfigManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/DeviceConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 129
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 131
    const-string v1, "com.sec.ims.settings"

    const-string v2, "match_profile_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "profile"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "profile/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "profile/reset"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "global"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "global/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "global/reset"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/reset"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cscprofile"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cscprofile/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cscsetting"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "cscsetting/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "imsswitch"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "imsswitch/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "imsswitchreset"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "simdata"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "nvstorage/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "userconfig"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "impu"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "selfprovisioning"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "gcfconfig"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "dnsblock"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "debugconfig/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "selfwificallingactivation"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mno"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.samsung.rcs.dmconfigurationprovider"

    const-string v3, "omadm/./3GPP_IMS/*"

    const/16 v4, 0x18

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "omadm"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v3, "presence"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "*"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v3, "omadm/*"

    const/16 v4, 0x19

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "nvlist"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "ims_info/rcs_ver"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "secretkey"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloadconfig"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "resetconfig"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "smkupdatedinfo"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 183
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "simmobility"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "gcfinitrat"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "imsusersetting"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "acsinfo"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "sms_setting"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "epdgsettings"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "dtlocuserconsent"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    .line 271
    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/SettingsProvider$1;-><init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/SettingsProvider;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/SettingsProvider;
    .param p1, "x1"    # Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/settings/SettingsProvider;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/SettingsProvider;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedCarrierId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/settings/SettingsProvider;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedSwVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 4
    .param p1, "autoUpdate"    # Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .param p2, "phoneId"    # I
    .param p3, "currentCarrierId"    # I

    .line 219
    const/4 v0, 0x0

    .line 222
    .local v0, "isMnoMapUpdated":Z
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    const/4 v1, 0x4

    const-string/jumbo v2, "remove_mnomap"

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v2, v3, :cond_1

    .line 225
    const-string v2, "add_mnomap"

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 228
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 229
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(IIZ)V

    .line 232
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    const-string v3, "content://com.sec.ims.settings/mnomap_updated"

    invoke-static {v3, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 232
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 235
    return-void

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 238
    const-string v3, "content://com.sec.ims.settings/carrier_feature_updated"

    invoke-static {v3, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 237
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 243
    :cond_3
    invoke-direct {p0, p2, p3, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(IIZ)V

    .line 245
    return-void
.end method

.method private dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "useEventLog"    # Z
    .param p3, "additionalInfo"    # Ljava/lang/String;
    .param p4, "showCaller"    # Z

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 868
    .local v0, "pid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "logs":Ljava/lang/String;
    const-string v2, ") : "

    if-eqz p4, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, "processName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    .end local v3    # "processName":Ljava/lang/String;
    goto :goto_0

    .line 873
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    :goto_0
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 877
    const-string v2, "impu"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "imsi"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 881
    :cond_1
    const-string v2, "\\d++@"

    const-string/jumbo v3, "xxx@"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 878
    :cond_2
    :goto_1
    const-string v2, "\\d"

    const-string/jumbo v3, "x"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 884
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    if-eqz p2, :cond_4

    .line 887
    iget-object v2, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_3

    .line 889
    :cond_4
    const-string v2, "ImsSettingsProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_3
    return-void
.end method

.method private getAllServiceSwitches()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "volte"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string/jumbo v1, "rcs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v1, "defaultmsgappinuse"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v1, "mmtel-call-composer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string/jumbo v1, "smsip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "cdpn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "options"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string/jumbo v1, "presence"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "im"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v1, "ft"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "ft_http"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v1, "slm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "lastseen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const-string/jumbo v1, "vs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v1, "euc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "gls"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "ec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v1, "cab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v1, "cms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v1, "chatbot-communication"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    return-object v0
.end method

.method private getSavedCarrierId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string/jumbo v2, "saved_impu"

    const-string v3, ""

    invoke-static {v1, v0, v2, p1, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "impuString":Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "impu"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 361
    .local v1, "c":Landroid/database/MatrixCursor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 362
    return-object v1
.end method

.method private getSavedSwVersion(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    const-string/jumbo v2, "swversion"

    const-string v3, ""

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "xNodeKey"    # Ljava/lang/String;

    .line 977
    const-string v0, "\\./3GPP_IMS/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "shortenKey":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v2, "rtn":Ljava/lang/StringBuilder;
    array-length v3, v0

    .line 981
    .local v3, "len":I
    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 982
    add-int/lit8 v4, v3, -0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 983
    :cond_0
    if-lez v3, :cond_1

    .line 984
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isCmcSecondaryDevice()Z
    .locals 8

    .line 997
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 998
    .local v0, "cmcSettingMgr":Lcom/samsung/android/cmcsetting/CmcSettingManager;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 999
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v1

    .line 1000
    .local v1, "type":Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: isCmcSecondaryDevice: api: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsSettingsProvider"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 1003
    return v4

    .line 1004
    :cond_0
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    .line 1005
    return v5

    .line 1007
    :cond_1
    const-string/jumbo v2, "ro.cmc.device_type"

    const-string v6, ""

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "deviceType_prop":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: isCmcSecondaryDevice: prop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v3, "sd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1011
    return v4

    .line 1013
    :cond_2
    return v5

    .line 1016
    :cond_3
    return v5
.end method

.method static synthetic lambda$resetStoredConfig$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 1
    .param p0, "dcm"    # Lcom/sec/internal/ims/settings/DeviceConfigManager;

    .line 851
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 852
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 853
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadByDynamicConfig()V

    .line 854
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    .line 855
    return-void
.end method

.method private resetStoredConfig(Z)V
    .locals 5
    .param p1, "isMnoMapUpdate"    # Z

    .line 835
    if-eqz p1, :cond_1

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 841
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 842
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 843
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mnoname"

    const-string v4, "default"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 839
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    .end local v0    # "i":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 850
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$SettingsProvider$dto_6VMgBRlj66nRZ_9Q1tnQHlI;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 856
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    .line 857
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 858
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 860
    .end local v0    # "phoneId":I
    :cond_2
    return-void
.end method

.method private saveUpdatedCarrierId(IIZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "carrierId"    # I
    .param p3, "isMnoUpdated"    # Z

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    invoke-static {p1, v0, v1, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v3, "swversion"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "needMnoUpdate"

    invoke-static {p1, v0, v1, v2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method private sendData(ILandroid/content/ContentValues;)V
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 895
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 896
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .local v3, "data":Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v4, "itemInfo":Ljava/lang/StringBuilder;
    const-string v5, "INTERNAL_KEY_PROCESS_NAME"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .local v6, "processName":Ljava/lang/String;
    goto :goto_0

    .line 903
    .end local v6    # "processName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 905
    .restart local v6    # "processName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 907
    const/high16 v5, 0x10040000

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",UPD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 907
    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 910
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "^"

    const-string v11, "ImsSettingsProvider"

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 912
    .local v9, "key":Ljava/lang/String;
    const-string v12, "nv_init_done"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 913
    goto :goto_1

    .line 917
    :cond_1
    const/4 v12, -0x1

    .line 918
    .local v12, "idxOfKey":I
    sget-object v13, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 919
    .local v14, "field":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v15

    .line 920
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 921
    invoke-virtual {v14}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result v12

    .line 922
    goto :goto_3

    .line 924
    .end local v14    # "field":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    .end local v15    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 927
    :cond_3
    :goto_3
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "value":Ljava/lang/String;
    const/4 v14, -0x1

    if-ne v12, v14, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 929
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignore: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": ["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    goto :goto_1

    .line 934
    :cond_4
    const-string v14, ":"

    if-ltz v12, :cond_5

    .line 935
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 937
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xNode item: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v2, "X:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 943
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 944
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Replace sensitive data: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "HIDE"

    move-object v13, v2

    .line 947
    :cond_7
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_8
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const v2, 0x10040001

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/settings/SettingsProvider;->getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 951
    invoke-static {v2, v10}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 953
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "idxOfKey":I
    .end local v13    # "value":Ljava/lang/String;
    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 955
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 957
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 958
    const/4 v2, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "DMST"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v2, "USRC"

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendData : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v2, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v8, "DMUI"

    invoke-static {v1, v2, v8, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 965
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 966
    .local v2, "dailyReport":Landroid/content/ContentValues;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "send_mode"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "overwrite_mode"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "DMUC"

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    iget-object v7, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v8, "DRPT"

    invoke-static {v1, v7, v8, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 973
    .end local v2    # "dailyReport":Landroid/content/ContentValues;
    .end local v3    # "data":Landroid/content/ContentValues;
    .end local v4    # "itemInfo":Ljava/lang/StringBuilder;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "processName":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private setSavedImpu(Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 367
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    const-string v2, "impu"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    const/4 v3, -0x1

    const-string/jumbo v4, "saved_impu"

    invoke-static {v3, v0, v4, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method private updateEpdgSystemSettings(Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1034
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1035
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1036
    .local v2, "key":Ljava/lang/String;
    const-string v3, ".+[1-9]$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1037
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    .line 1039
    .local v3, "lastChar":I
    :goto_1
    const/4 v5, -0x1

    .line 1040
    .local v5, "val":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1041
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 1042
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 1043
    :cond_1
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1045
    :try_start_0
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 1048
    goto :goto_2

    .line 1046
    :catch_0
    move-exception v7

    .line 1051
    :cond_2
    :goto_2
    if-ltz v3, :cond_7

    if-gez v5, :cond_3

    goto :goto_4

    .line 1058
    :cond_3
    const-string/jumbo v7, "wifi_call_enable"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 1059
    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v7, v3, -0x1

    invoke-static {v4, v7, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    goto :goto_3

    .line 1060
    :cond_4
    const-string/jumbo v7, "wifi_call_preferred"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_5

    .line 1061
    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v7, v3, -0x1

    invoke-static {v4, v7, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    goto :goto_3

    .line 1062
    :cond_5
    const-string/jumbo v7, "wifi_call_when_roaming"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 1063
    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v7, v3, -0x1

    invoke-static {v4, v7, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    .line 1065
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "lastChar":I
    .end local v5    # "val":I
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_3
    goto/16 :goto_0

    .line 1052
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lastChar":I
    .restart local v5    # "val":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEpdgSystemSettings: Skip wrong input ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/ims/settings/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    const-string v8, "null!"

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] => lastChar ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], val ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    const-string v7, "ImsSettingsProvider"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    goto/16 :goto_0

    .line 1066
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "lastChar":I
    .end local v5    # "val":I
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_8
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 318
    .local p1, "arg0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 827
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0, v1, v1, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 831
    :cond_0
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 626
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 627
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    .line 628
    .local v1, "dcm":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 629
    return v2

    .line 632
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Delete"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 634
    move-object v3, p1

    .line 635
    .local v3, "uriWoFragment":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "frag":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 637
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 640
    :cond_1
    const/4 v5, 0x0

    .line 641
    .local v5, "count":I
    sget-object v6, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/16 v7, 0xf

    if-eq v6, v7, :cond_3

    const/16 v7, 0x18

    if-eq v6, v7, :cond_3

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_2

    .line 650
    iget-object v6, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->clearSmkConfig()V

    .line 651
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 652
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 653
    goto :goto_0

    .line 655
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_3
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->deleteDm(Landroid/net/Uri;)I

    move-result v5

    .line 648
    goto :goto_0

    .line 643
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/settings/ImsProfileCache;->remove(I)V

    .line 644
    nop

    .line 658
    :goto_0
    return v5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/settings/-$$Lambda$LsiG4Tuwsh8ilkgtfIEqgb3hFVY;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$LsiG4Tuwsh8ilkgtfIEqgb3hFVY;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 994
    return-void
.end method

.method getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;
    .locals 3
    .param p1, "phoneId"    # I

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    .line 308
    .local v0, "res":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    if-nez v0, :cond_0

    .line 309
    const-string v1, "ImsSettingsProvider"

    const-string v2, "getDeviceConfigManager: Not exist."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    :cond_0
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 578
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 579
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    .line 580
    .local v1, "dcm":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 584
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Insert"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 586
    move-object v3, p1

    .line 587
    .local v3, "uriWoFragment":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "frag":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 589
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 592
    :cond_1
    const-wide/16 v6, 0x0

    .line 593
    .local v6, "id":J
    sget-object v8, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    if-eq v8, v5, :cond_5

    const/16 v5, 0x15

    if-eq v8, v5, :cond_4

    const/16 v5, 0x18

    if-eq v8, v5, :cond_3

    const/16 v5, 0x27

    if-eq v8, v5, :cond_2

    packed-switch v8, :pswitch_data_0

    .line 615
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->setSavedImpu(Landroid/content/ContentValues;)I

    .line 596
    goto :goto_0

    .line 598
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    .line 599
    goto :goto_0

    .line 612
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateEpdgSystemSettings(Landroid/content/ContentValues;)V

    .line 613
    goto :goto_0

    .line 608
    :cond_3
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 609
    invoke-virtual {v1, v3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 610
    goto :goto_0

    .line 604
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->insert(ILandroid/content/ContentValues;)V

    .line 605
    goto :goto_0

    .line 601
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v5

    new-instance v8, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v8, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/settings/ImsProfileCache;->insert(Lcom/sec/ims/settings/ImsProfile;)I

    move-result v5

    int-to-long v6, v5

    .line 602
    nop

    .line 618
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 620
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 581
    .end local v3    # "uriWoFragment":Landroid/net/Uri;
    .end local v4    # "frag":Ljava/lang/String;
    .end local v6    # "id":J
    :cond_6
    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "ImsSettingsProvider"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->isCmcSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "CMC supported no NOSIM model : DeviceConfigManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 374
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v12

    .line 375
    .local v12, "phoneId":I
    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v13

    .line 376
    .local v13, "dcm":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    if-nez v13, :cond_0

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "uriInfo":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 383
    .local v3, "uriWoFragment":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 384
    .local v14, "frag":Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_1

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v15, v3

    goto :goto_0

    .line 384
    :cond_1
    move-object v15, v3

    .line 388
    .end local v3    # "uriWoFragment":Landroid/net/Uri;
    .local v15, "uriWoFragment":Landroid/net/Uri;
    :goto_0
    if-eqz v10, :cond_2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_2
    if-eqz v9, :cond_3

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pro : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 391
    :cond_3
    move-object v8, v0

    .line 395
    .end local v0    # "uriInfo":Ljava/lang/String;
    .local v8, "uriInfo":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 396
    const-string v0, "Query"

    invoke-direct {v1, v0, v3, v8, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 399
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v15}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v4, "ImsSettingsProvider"

    const-string v6, "mnoname"

    const-string/jumbo v7, "profile"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 v3, 0x4

    if-eq v0, v3, :cond_11

    const/16 v3, 0xb

    if-eq v0, v3, :cond_f

    const/16 v3, 0xd

    if-eq v0, v3, :cond_f

    const/16 v3, 0x13

    if-eq v0, v3, :cond_e

    const/16 v3, 0x15

    if-eq v0, v3, :cond_d

    const/16 v3, 0x28

    const/4 v7, -0x1

    if-eq v0, v3, :cond_c

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_0
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->getAsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 454
    :pswitch_1
    const/4 v0, 0x0

    .line 455
    .local v0, "result":I
    const/4 v3, 0x0

    .line 456
    .local v3, "acsCur":Landroid/database/MatrixCursor;
    const-string v4, "acsversion"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 457
    new-instance v5, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v5

    .line 458
    iget-object v4, v1, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 459
    const-string/jumbo v5, "version"

    invoke-static {v5, v12}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 458
    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 460
    :cond_5
    const-string v4, "acscount"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 461
    new-instance v5, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v5

    .line 462
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getAcsTriggerCount()I

    move-result v0

    .line 464
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 465
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 467
    :cond_7
    return-object v3

    .line 451
    .end local v0    # "result":I
    .end local v3    # "acsCur":Landroid/database/MatrixCursor;
    :pswitch_2
    invoke-virtual {v13, v9}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 528
    :pswitch_3
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v3, "smkupdatedinfo"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v0

    .line 529
    .local v3, "cur":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 531
    .local v6, "updatedInfo":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 534
    goto :goto_3

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get SMK Updated Information : "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 536
    const-string/jumbo v0, "updated info return, query to ImsSettings"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 538
    return-object v3

    .line 543
    .end local v3    # "cur":Landroid/database/MatrixCursor;
    .end local v6    # "updatedInfo":Ljava/lang/String;
    :cond_8
    :pswitch_4
    const-string v0, ""

    .line 544
    .local v0, "gcfInitRat":Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v3, "gcf_init_rat"

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v6, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 546
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "rat"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v4, Landroid/database/MatrixCursor;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v4

    .line 548
    .restart local v3    # "cur":Landroid/database/MatrixCursor;
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 549
    return-object v3

    .line 510
    .end local v0    # "gcfInitRat":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "cur":Landroid/database/MatrixCursor;
    :pswitch_5
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "secretkey"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 511
    .local v0, "cur":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v3, "3C061A6726A7E3CAF9634D43D93CAC61"

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 512
    return-object v0

    .line 522
    .end local v0    # "cur":Landroid/database/MatrixCursor;
    :pswitch_6
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "simmobility"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 523
    .restart local v0    # "cur":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 524
    return-object v0

    .line 516
    .end local v0    # "cur":Landroid/database/MatrixCursor;
    :pswitch_7
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "rcs_ver"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 517
    .restart local v0    # "cur":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v3, "6.0.3"

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 518
    return-object v0

    .line 494
    .end local v0    # "cur":Landroid/database/MatrixCursor;
    :pswitch_8
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "NVLIST"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 495
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 496
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 498
    :cond_a
    return-object v0

    .line 486
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    :pswitch_9
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 487
    const/4 v0, 0x1

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v2, v8

    .end local v8    # "uriInfo":Ljava/lang/String;
    .local v2, "uriInfo":Ljava/lang/String;
    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 486
    .end local v2    # "uriInfo":Ljava/lang/String;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    :cond_b
    move-object v2, v8

    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    goto :goto_5

    .line 399
    .end local v2    # "uriInfo":Ljava/lang/String;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    :pswitch_a
    move-object v2, v8

    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    goto :goto_5

    .line 502
    .end local v2    # "uriInfo":Ljava/lang/String;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    :pswitch_b
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v3, "mvnoname"

    const-string v4, "hassim"

    filled-new-array {v6, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 504
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 505
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMvnoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 506
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getHasSim()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 507
    return-object v0

    .line 401
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    :pswitch_c
    const/4 v3, 0x0

    aget-object v0, v11, v3

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 477
    :pswitch_d
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/settings/UserConfigStorage;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 491
    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    :goto_5
    const/4 v8, 0x0

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 557
    .end local v2    # "uriInfo":Ljava/lang/String;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    :cond_c
    const/4 v0, -0x1

    .line 558
    .local v0, "dtLocUserConsent":I
    iget-object v3, v1, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v4, "dtlocuserconsent"

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 560
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "dtlocation"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 561
    new-instance v5, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v4, v5

    .line 562
    .local v4, "cur":Landroid/database/MatrixCursor;
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 563
    return-object v4

    .line 483
    .end local v0    # "dtLocUserConsent":I
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "cur":Landroid/database/MatrixCursor;
    :cond_d
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v12, v9}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->query(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 480
    :cond_e
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryGcfConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 399
    :cond_f
    move-object v2, v8

    .line 471
    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    if-nez v9, :cond_10

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getAllServiceSwitches()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .end local p2    # "projection":[Ljava/lang/String;
    .local v0, "projection":[Ljava/lang/String;
    goto :goto_6

    .line 471
    .end local v0    # "projection":[Ljava/lang/String;
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_10
    move-object v0, v9

    .line 474
    .end local p2    # "projection":[Ljava/lang/String;
    .restart local v0    # "projection":[Ljava/lang/String;
    :goto_6
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 448
    .end local v0    # "projection":[Ljava/lang/String;
    .end local v2    # "uriInfo":Ljava/lang/String;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_11
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 438
    :cond_12
    move-object v2, v8

    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 439
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v3

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 441
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_13

    .line 442
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 444
    :cond_13
    return-object v0

    .line 408
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "uriInfo":Ljava/lang/String;
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v8    # "uriInfo":Ljava/lang/String;
    :cond_14
    move-object v2, v8

    .end local v8    # "uriInfo":Ljava/lang/String;
    .restart local v2    # "uriInfo":Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 411
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 412
    const-string v3, "="

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "token":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ImsProfile query with  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v12, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    const-string v4, "mdmn_type"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 416
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    goto :goto_7

    .line 417
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_15
    const-string/jumbo v4, "salescode"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 418
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    goto :goto_7

    .line 419
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_16
    const-string v4, "mccmnc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    goto :goto_7

    .line 421
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_17
    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 422
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v4

    .line 423
    .local v4, "isGlobalGcEnabled":Z
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 424
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    goto :goto_7

    .line 425
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .end local v3    # "token":Ljava/lang/String;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :goto_7
    goto :goto_8

    .line 428
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_19
    invoke-virtual {v13}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileList()Ljava/util/List;

    move-result-object v4

    .line 431
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 432
    .local v5, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 433
    .end local v5    # "p":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_9

    .line 434
    :cond_1a
    return-object v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_a
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 664
    .local v3, "notifyChange":Z
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v4

    .line 665
    .local v4, "phoneId":I
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v5

    .line 666
    .local v5, "dcm":Lcom/sec/internal/ims/settings/DeviceConfigManager;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 667
    return v6

    .line 670
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uri["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Update"

    const/4 v9, 0x1

    invoke-direct {v0, v8, v9, v7, v9}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 672
    move-object/from16 v7, p1

    .line 673
    .local v7, "uriWoFragment":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "frag":Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 678
    :cond_1
    const/4 v10, 0x0

    .line 679
    .local v10, "count":I
    sget-object v11, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v11, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    const/16 v12, 0xf

    const/4 v13, 0x0

    const-string v14, "ImsSettingsProvider"

    if-eq v11, v12, :cond_b

    const/16 v12, 0x28

    if-eq v11, v12, :cond_a

    const/16 v12, 0x1c

    if-eq v11, v12, :cond_9

    const/16 v12, 0x1d

    if-eq v11, v12, :cond_6

    const/16 v9, 0x23

    if-eq v11, v9, :cond_5

    const/16 v9, 0x24

    if-eq v11, v9, :cond_4

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    packed-switch v11, :pswitch_data_3

    .line 814
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URI "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 802
    :pswitch_0
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 803
    invoke-virtual {v5, v7, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I

    .line 804
    goto/16 :goto_0

    .line 798
    :pswitch_1
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateMno(Landroid/content/ContentValues;)V

    .line 799
    goto/16 :goto_0

    .line 794
    :pswitch_2
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateWificallingProperty(Landroid/content/ContentValues;)V

    .line 795
    goto/16 :goto_0

    .line 790
    :pswitch_3
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDnsBlock(Landroid/content/ContentValues;)V

    .line 791
    goto/16 :goto_0

    .line 786
    :pswitch_4
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfConfig(Landroid/content/ContentValues;)V

    .line 787
    goto/16 :goto_0

    .line 782
    :pswitch_5
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateProvisioningProperty(Landroid/content/ContentValues;)V

    .line 783
    goto/16 :goto_0

    .line 774
    :pswitch_6
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->resetImsSwitch()V

    .line 775
    goto/16 :goto_0

    .line 765
    :pswitch_7
    const-string/jumbo v6, "service"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "service":Ljava/lang/String;
    const-string v9, "enabled"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 767
    .local v9, "enabled":Z
    const-string v11, "ipme"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 768
    const/4 v3, 0x0

    .line 770
    :cond_2
    invoke-virtual {v5, v6, v9}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->enableImsSwitch(Ljava/lang/String;Z)V

    .line 771
    goto/16 :goto_0

    .line 748
    .end local v6    # "service":Ljava/lang/String;
    .end local v9    # "enabled":Z
    :pswitch_8
    const-string/jumbo v6, "update: reset."

    invoke-static {v14, v4, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 750
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->load()V

    .line 751
    goto/16 :goto_0

    .line 744
    :pswitch_9
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    .line 745
    goto/16 :goto_0

    .line 739
    :pswitch_a
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 740
    goto/16 :goto_0

    .line 702
    :pswitch_b
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 704
    .local v6, "id":I
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 705
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v11

    .line 706
    .local v11, "badEventExpiry":I
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v12

    .line 708
    .local v12, "extendedPublishTimer":I
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v15

    invoke-virtual {v15, v6, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->update(ILandroid/content/ContentValues;)I

    move-result v10

    .line 709
    sget-object v15, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v9, v15, :cond_c

    .line 710
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v15

    if-ne v11, v15, :cond_3

    .line 711
    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v15

    .line 712
    invoke-virtual {v15}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v15

    if-eq v12, v15, :cond_c

    .line 714
    :cond_3
    const-string/jumbo v13, "update : badEventExpiry or badEventExpiry for ATT"

    invoke-static {v14, v4, v13}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    return v10

    .line 681
    .end local v6    # "id":I
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v11    # "badEventExpiry":I
    .end local v12    # "extendedPublishTimer":I
    :pswitch_c
    const-string/jumbo v9, "update: Bulk edit not supported."

    invoke-static {v14, v4, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 682
    return v6

    .line 758
    :cond_4
    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v9, "value"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 760
    .local v9, "value":I
    invoke-virtual {v5, v6, v9}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->setImsUserSetting(Ljava/lang/String;I)V

    .line 761
    goto :goto_0

    .line 807
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_5
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    .line 808
    goto :goto_0

    .line 721
    :cond_6
    const v11, 0x10040010

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",SMK UPDATE"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 723
    iget-object v11, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v11

    .line 724
    .local v11, "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    sget-object v12, Lcom/sec/internal/constants/ims/ImsConstants;->DOWNLOAD_CONFIG:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->updateSmkConfig(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v12, "remove_mnomap"

    invoke-virtual {v11, v6, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    sget-object v15, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v12, v15, :cond_7

    .line 728
    const-string v12, "add_mnomap"

    invoke-virtual {v11, v6, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    sget-object v15, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq v12, v15, :cond_8

    :cond_7
    move v6, v9

    .line 730
    .local v6, "isMnoMapUpdated":Z
    :cond_8
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 731
    if-eqz v6, :cond_c

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 733
    const-string v12, "content://com.sec.ims.settings/mnomap_updated"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 732
    invoke-virtual {v9, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 734
    const/4 v3, 0x0

    goto :goto_0

    .line 754
    .end local v6    # "isMnoMapUpdated":Z
    .end local v11    # "autoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :cond_9
    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iget-object v9, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->forceDeleteALL(Landroid/content/Context;)V

    .line 755
    goto :goto_0

    .line 811
    :cond_a
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDtLocUserConsent(Landroid/content/ContentValues;)V

    .line 812
    goto :goto_0

    .line 778
    :cond_b
    const-string/jumbo v6, "update: not supported in NV_STORAGE. use insert"

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    nop

    .line 817
    :cond_c
    :goto_0
    if-eqz v3, :cond_d

    .line 818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyChange uri ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 821
    :cond_d
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
