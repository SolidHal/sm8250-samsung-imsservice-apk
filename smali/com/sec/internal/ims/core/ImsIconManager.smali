.class public Lcom/sec/internal/ims/core/ImsIconManager;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;,
        Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    }
.end annotation


# static fields
.field private static final CMC_SD_ICON:Ljava/lang/String; = "stat_sys_phone_call_skt"

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field private static final DUAL_IMS_NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_hd"

.field private static final INTENT_ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final INTENT_ACTION_SILENT_REDIAL:Ljava/lang/String; = "android.intent.action.PHONE_NEED_SILENT_REDIAL"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_BUILDER__ID:I = -0x6687

.field private static final NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_ctc"

.field private static final PRIMARY_CHANNEL:Ljava/lang/String; = "imsicon_channel"

.field private static final RCS_ICON_DESCRIPTION:Ljava/lang/String; = "RCS"

.field private static final RCS_ICON_NAME:Ljava/lang/String; = "stat_notify_rcs_service_avaliable"

.field private static final RCS_ICON_NAME_CMCC:Ljava/lang/String; = "stat_notify_rcs"

.field private static final RCS_ICON_NAME_DUAL:[Ljava/lang/String;

.field private static final RCS_ICON_SLOT:Ljava/lang/String; = "com.samsung.rcs"

.field private static final VOLTE_ICON_SLOT_HEAD:Ljava/lang/String; = "ims_volte"

.field private static mRegiIndicatorID:Ljava/lang/String;

.field private static mShowVoWIFILabel:[Z

.field private static mVowifiOperatorLabel:[Ljava/lang/String;

.field private static mVowifiOperatorLabelOngoing:[I

.field private static mWifiSubTextOnLockScreen:[Ljava/lang/String;


# instance fields
.field private VOLTE_ICON_SLOT:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field protected mCurrentInRoaming:Z

.field protected mCurrentNetworkType:I

.field private mCurrentPhoneState:I

.field protected mCurrentServiceState:I

.field protected mCurrentVoiceRatType:I

.field private mDisplayDensity:I

.field private mForceRefreshIcon:Z

.field private final mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDuringEmergencyCall:Z

.field private mIsFirstVoLTEIconShown:Z

.field private mIsSilentRedialInProgress:Z

.field private mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field private mLastVoLTEResourceId:I

.field private mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOmcCode:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field private final mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mUseDualVolteIcon:Z

.field private final mVolteNotiObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-class v0, Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "stat_notify_rcs_service_avaliable_1"

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable_2"

    const-string/jumbo v2, "stat_notify_rcs_service_avaliable_dual"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegiIndicatorID:Ljava/lang/String;

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 118
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 119
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regMgr"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p3, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 109
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 110
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 125
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 126
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 128
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 1038
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1108
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$2;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1146
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$3;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 138
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 139
    iput-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 147
    iput p5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 149
    const/16 v0, 0x21

    .line 151
    .local v0, "events":I
    new-instance v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 153
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "volte_noti_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, "iconIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHONE_NEED_SILENT_REDIAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 166
    invoke-virtual {p0, p4, p5}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/ImsIconManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/core/ImsIconManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p1, "x1"    # Lcom/sec/internal/constants/Mno;

    .line 54
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needHideIconWhenCSCall(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/ImsIconManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/ims/core/PdnController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/ImsIconManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/ImsIconManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 54
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/internal/ims/core/ImsIconManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    return p1
.end method

.method private checkKORVolteIcon()Z
    .locals 6

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "isVolteFeatureEnabled":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 856
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v3, "mmtel"

    invoke-virtual {v2, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 860
    :cond_0
    const/4 v0, 0x1

    .line 862
    .end local v2    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    goto :goto_0

    .line 863
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v1

    .line 864
    .local v1, "mSimState":I
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 870
    :cond_3
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-nez v3, :cond_4

    .line 871
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIcon : network is unknown."

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 872
    return v2

    .line 874
    :cond_4
    const-string/jumbo v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oversea"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 875
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkKORVolteIcon : on roaming. Volte featuremask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 877
    return v0

    .line 880
    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIconOperatorSpecifics(Z)Z

    move-result v2

    return v2

    .line 866
    :cond_6
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "SIM state is unknown or absent"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 867
    return v2
.end method

.method private checkKORVolteIconOperatorSpecifics(Z)Z
    .locals 8
    .param p1, "isVolteFeatureEnabled"    # Z

    .line 884
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 885
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 888
    .local v0, "voicecallType":I
    if-ne v0, v4, :cond_1

    .line 889
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIcon : Settings not found, return VOLTE_PREFERRED"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    goto :goto_0

    .line 894
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIcon : Settings not found"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 895
    const/4 v0, -0x1

    .line 898
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkKORVolteIcon : KT device and KT sim, ServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 899
    invoke-interface {v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", voicecall_type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 898
    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 901
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 902
    .end local v0    # "voicecallType":I
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 903
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "checkKORVolteIcon : SIM card is LGT and device is not KOR open, return false"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    return v2

    .line 906
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "isHide":Z
    const/4 v3, 0x1

    .line 909
    .local v3, "volteNoti":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_7

    .line 910
    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v4, :cond_6

    .line 911
    const/4 v0, 0x1

    .line 913
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 914
    const/4 v3, 0x0

    .line 916
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volte_noti_settings"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 921
    goto :goto_2

    .line 918
    :catch_0
    move-exception v4

    .line 919
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v7, "checkKORVolteIcon : volte_noti_settings is not exists"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    :goto_2
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkKORVolteIcon : volte_noti_settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 928
    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 926
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    if-ne v3, v1, :cond_8

    if-eqz p1, :cond_8

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 930
    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    .line 929
    :goto_3
    return v1

    .line 932
    .end local v0    # "isHide":Z
    .end local v3    # "volteNoti":I
    :cond_9
    return v2
.end method

.method private checkSameVoWIFILabel()Z
    .locals 4

    .line 649
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 651
    .local v0, "otherSlotIndex":I
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget v3, v1, v2

    aget v1, v1, v0

    if-ne v3, v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 652
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 653
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 651
    :goto_0
    return v1
.end method

.method private clearIcon(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1155
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowRcsIcon(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "com.samsung.rcs"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 1158
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 1161
    :cond_1
    return-void
.end method

.method private fillWifiLabel()V
    .locals 8

    .line 625
    const-string/jumbo v0, "stat_notify_wfc_warning"

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegiIndicatorID:Ljava/lang/String;

    .line 627
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 628
    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 630
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 631
    const-string/jumbo v4, "vowifi_subtext_on_lockscreen"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 633
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 634
    const-string/jumbo v6, "vowifi_operator_label"

    invoke-static {v1, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 636
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 638
    .local v0, "otherSlotIndex":I
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 639
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 641
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 642
    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 644
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    .line 645
    invoke-static {v0, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 646
    return-void
.end method

.method private getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;
    .locals 5
    .param p1, "select"    # Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    .line 969
    const-string/jumbo v0, "stat_notify_volte_service_avaliable"

    .line 971
    .local v0, "iconName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-eqz v1, :cond_3

    .line 972
    const-string v1, ""

    .line 973
    .local v1, "projection":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$4;->$SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 981
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Wrong select"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vowifi_regi_icon_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    goto :goto_0

    .line 975
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volte_regi_icon_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 976
    nop

    .line 985
    :goto_0
    const-string v2, ""

    .line 986
    .local v2, "volteIconId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 987
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, ""

    invoke-static {v3, v1, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 990
    :cond_2
    move-object v0, v2

    .line 992
    .end local v1    # "projection":Ljava/lang/String;
    .end local v2    # "volteIconId":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1
    .param p1, "visibility"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .param p2, "registrationStatus"    # Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    .line 535
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object v0
.end method

.method private getVolteIconName()Ljava/lang/String;
    .locals 4

    .line 942
    const-string/jumbo v0, "stat_notify_volte_service_avaliable"

    .line 944
    .local v0, "iconName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 947
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    const-string/jumbo v0, "stat_sys_phone_call"

    goto :goto_0

    .line 949
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    const-string/jumbo v0, "stat_sys_phone_call_skt"

    goto :goto_0

    .line 951
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    const-string/jumbo v0, "stat_sys_phone_call_kt"

    goto :goto_0

    .line 954
    :cond_2
    const-string/jumbo v0, "stat_sys_phone_call_lgt"

    goto :goto_0

    .line 957
    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 958
    const-string/jumbo v2, "volte_regi_icon_id"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "volteIconId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 961
    move-object v0, v1

    .line 965
    .end local v1    # "volteIconId":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0
.end method

.method private getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1
    .param p1, "visibility"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .param p2, "registrationStatus"    # Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    .line 530
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 530
    :goto_0
    return-object v0
.end method

.method private getVowifiIconName()Ljava/lang/String;
    .locals 3

    .line 936
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 937
    const-string/jumbo v1, "vowifi_regi_icon_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "iconName":Ljava/lang/String;
    return-object v0
.end method

.method private hasVolteService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 616
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 617
    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    const-string v0, "mmtel-video"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 617
    :goto_1
    return v0

    .line 620
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    return v0
.end method

.method private isOtherSimInCallStatus()Z
    .locals 5

    .line 1164
    const/4 v0, 0x0

    .line 1165
    .local v0, "isCallStatus":Z
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1166
    .local v1, "otherPhoneId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result v3

    .line 1167
    .local v3, "otherStatus":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-ne v3, v2, :cond_2

    .line 1168
    :cond_1
    const/4 v0, 0x1

    .line 1170
    :cond_2
    return v0
.end method

.method private isRcsRegistered(IZ)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "isSuspend"    # Z

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 678
    .local v0, "regArray":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 679
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 680
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result v5

    if-nez v5, :cond_2

    .line 683
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 679
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 687
    :cond_3
    return v1
.end method

.method private isServiceAvailable(Ljava/lang/String;)Z
    .locals 8
    .param p1, "service"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mmtel-video"

    const-string v2, "mmtel"

    const/16 v3, 0x12

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v7, "APP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 205
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    return v6

    .line 209
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 210
    .local v0, "currentNetwork":I
    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 212
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 216
    :cond_3
    return v5

    .line 213
    :cond_4
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v5, v6

    .line 213
    :cond_6
    return v5

    .line 187
    .end local v0    # "currentNetwork":I
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    return v6

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 192
    .restart local v0    # "currentNetwork":I
    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move v5, v6

    goto :goto_3

    :cond_9
    nop

    .line 194
    :goto_3
    return v5

    .line 197
    :cond_a
    return v6
.end method

.method private isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 461
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->hasVolteService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const-string v0, "mmtel"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mmtel-video"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0
.end method

.method private isVoWIFIRegistered(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 658
    .local v0, "regArray":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 659
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 660
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 661
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-nez v5, :cond_1

    .line 662
    const-string v5, "mmtel"

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 663
    const-string v5, "mmtel-video"

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 664
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v5

    .line 665
    .local v5, "currentNetwork":I
    const/16 v6, 0x12

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 666
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 667
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "isVoWIFIRegistered"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 668
    const/4 v1, 0x1

    return v1

    .line 659
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v5    # "currentNetwork":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    :cond_2
    return v1
.end method

.method private isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 8
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 466
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 467
    .local v0, "handle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v1

    .line 468
    .local v1, "currentNetwork":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v2

    .line 469
    .local v2, "currentRegiRat":I
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRegiRat ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentNetwork ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    const/4 v3, 0x0

    const/16 v4, 0x12

    if-ne v1, v4, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_0

    if-eq v2, v4, :cond_0

    .line 473
    return v3

    .line 475
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 477
    :cond_1
    return v3
.end method

.method private needHideIconWhenCSCall(Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 225
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->PTR:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_NETHERLAND:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private needShowNoCTCVoLTEIcon()Z
    .locals 6

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 233
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 234
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v2

    .line 237
    .local v2, "voiceType":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 239
    .local v3, "airPlaneModeOn":I
    if-nez v2, :cond_2

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0x14

    if-ne v4, v5, :cond_2

    :cond_1
    if-nez v3, :cond_2

    .line 242
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 243
    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-nez v4, :cond_2

    .line 246
    const/4 v0, 0x1

    .line 250
    .end local v2    # "voiceType":I
    .end local v3    # "airPlaneModeOn":I
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needShowNoCTCVoLTEIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    return v0
.end method

.method private needShowRcsIcon(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1218
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1220
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result v2

    .line 1221
    .local v2, "isSuspend":Z
    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    .line 1222
    .local v4, "counterPhoneId":I
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1223
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "needShowRcsIcon: true"

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1224
    return v3

    .line 1227
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "isSuspend":Z
    .end local v4    # "counterPhoneId":I
    :cond_1
    return v1
.end method

.method private showDualVolteIcon()Z
    .locals 8

    .line 1187
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1188
    .local v0, "supportDualVolte":Z
    const-string/jumbo v1, "persist.ril.esim.slotswitch"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tsds2"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1190
    .local v1, "configESimSlotSwitch":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1192
    .local v2, "supportESimFloatingFeature":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1193
    .local v3, "supportESimCscFeature":Z
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportDualVolte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",configESimSlotSwitch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "ESim Features - floating:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", csc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-eqz v0, :cond_1

    .line 1196
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 1197
    return v4

    .line 1199
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 1202
    :cond_1
    return v4
.end method

.method private declared-synchronized showWifiRegistrationSateQuickPanel(IZ)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "onoff"    # Z

    monitor-enter p0

    .line 697
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v0, v0, v1

    if-ne v0, p2, :cond_0

    .line 698
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to update mShowVoWIFILabel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]  aready ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    .line 703
    .end local p0    # "this":Lcom/sec/internal/ims/core/ImsIconManager;
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 704
    :try_start_1
    const-string v1, "imsicon_channel_both"

    .local v1, "channelName":Ljava/lang/String;
    goto :goto_0

    .line 705
    .end local v1    # "channelName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 706
    const-string v1, "imsicon_channel_0"

    .restart local v1    # "channelName":Ljava/lang/String;
    goto :goto_0

    .line 708
    .end local v1    # "channelName":Ljava/lang/String;
    :cond_2
    const-string v1, "imsicon_channel_1"

    .line 711
    .restart local v1    # "channelName":Ljava/lang/String;
    :goto_0
    const/16 v2, -0x6687

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    aget-boolean v0, v0, v3

    if-ne v0, v4, :cond_3

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "imsicon_channel_both"

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 715
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification VoWiFi tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] in quick panel ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 716
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v5, p1, 0x1

    aput-boolean p2, v0, v5

    .line 719
    if-gtz p1, :cond_4

    .line 720
    const/4 v0, 0x0

    .local v0, "slotIndex":I
    goto :goto_1

    .line 722
    .end local v0    # "slotIndex":I
    :cond_4
    const/4 v0, 0x1

    .line 725
    .restart local v0    # "slotIndex":I
    :goto_1
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "imsicon_channel"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v1, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 727
    .local v5, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 728
    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 730
    if-eqz p2, :cond_7

    .line 731
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v8, "imsicon_channel"

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 732
    .local v6, "mBuilder":Landroid/app/Notification$Builder;
    const-string v7, "drawable"

    sget-object v8, Lcom/sec/internal/ims/core/ImsIconManager;->mRegiIndicatorID:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 733
    sget-object v7, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 734
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 735
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 737
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 738
    const-string/jumbo v3, "string"

    sget-object v7, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v7, v7, v0

    .line 739
    invoke-virtual {p0, v3, v7}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 740
    .local v3, "string_identifier":I
    iget-object v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 741
    .local v7, "wifi_label_msg":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 742
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 745
    .end local v3    # "string_identifier":I
    .end local v7    # "wifi_label_msg":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    aget v3, v3, v0

    if-ne v3, v4, :cond_6

    .line 746
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 749
    :cond_6
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 750
    .local v3, "wifi_notify":Landroid/app/Notification;
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 751
    .end local v3    # "wifi_notify":Landroid/app/Notification;
    .end local v6    # "mBuilder":Landroid/app/Notification$Builder;
    goto :goto_2

    .line 752
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :goto_2
    monitor-exit p0

    return-void

    .line 696
    .end local v0    # "slotIndex":I
    .end local v1    # "channelName":Ljava/lang/String;
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    .end local p1    # "phoneId":I
    .end local p2    # "onoff":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 9
    .param p1, "visibilities"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .param p2, "registrationStatus"    # Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .param p3, "isSuspend"    # Z

    .line 539
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "show_rcs_regi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 541
    .local v0, "isRcsIconVisible":Z
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsIconVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 548
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object v3

    .line 549
    .local v3, "visibility":Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    const-string v7, "com.samsung.rcs"

    if-ne v4, v5, :cond_1

    .line 550
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne v3, v1, :cond_9

    .line 551
    const-string/jumbo v1, "stat_notify_rcs"

    invoke-virtual {p0, v7, v1, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 553
    :cond_1
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_9

    .line 554
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v4

    .line 555
    .local v4, "mSimState":I
    if-eqz v4, :cond_2

    if-ne v4, v2, :cond_3

    .line 556
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 558
    :cond_3
    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    move v1, v2

    .line 559
    .local v1, "counterPhoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 560
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne v3, v2, :cond_6

    .line 561
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {p0, v7, v2, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v2, v2, v5

    invoke-virtual {p0, v7, v2, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :cond_6
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 568
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v7, v2, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_1

    .line 573
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string/jumbo v5, "stat_notify_rcs_service_avaliable"

    if-ne v3, v2, :cond_8

    .line 574
    invoke-virtual {p0, v7, v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_8
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v8

    if-eq v2, v8, :cond_9

    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 577
    invoke-virtual {p0, v7, v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 583
    .end local v1    # "counterPhoneId":I
    .end local v4    # "mSimState":I
    :cond_9
    :goto_1
    invoke-virtual {p0, v7, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 584
    return-void
.end method

.method private updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;ZI)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .locals 8
    .param p1, "regArray"    # [Lcom/sec/ims/ImsRegistration;
    .param p2, "isSuspend"    # Z
    .param p3, "voiceType"    # I

    .line 405
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    .line 407
    .local v0, "registrationStatus":Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 412
    :cond_0
    if-nez p1, :cond_1

    .line 413
    return-object v0

    .line 417
    :cond_1
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_9

    aget-object v5, p1, v4

    .line 420
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 421
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    .line 422
    .local v6, "isVoWiFiConnected":Z
    xor-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 423
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .line 426
    .end local v6    # "isVoWiFiConnected":Z
    :cond_2
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 427
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    .line 428
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 429
    :cond_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCmcRegistered(Z)V

    .line 432
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez p2, :cond_7

    .line 433
    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_5

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez v6, :cond_7

    .line 434
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_6

    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result v6

    if-nez v6, :cond_7

    .line 435
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsRegistered(Z)V

    .line 440
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isAllRegistered()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 441
    goto :goto_1

    .line 417
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 445
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_c

    .line 447
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "APT special requirement"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    if-nez p3, :cond_a

    move v1, v2

    goto :goto_2

    :cond_a
    move v1, v3

    .line 449
    .local v1, "volteTurnon":Z
    :goto_2
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 450
    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .end local v1    # "volteTurnon":Z
    goto :goto_4

    .line 451
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_d

    .line 452
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "Vodafone AUS special requirement"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    nop

    .line 457
    :cond_d
    :goto_4
    return-object v0
.end method

.method private updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .locals 8
    .param p1, "voiceType"    # I

    .line 353
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    .line 354
    .local v0, "visiblities":Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 355
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_vowifi_regi_icon"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 358
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_volte_regi_icon"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 359
    .local v2, "showVolteRegIcon":Z
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v5, "remove_icon_nosvc"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 361
    .local v3, "removeIconNoSvc":I
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v5, :cond_1

    .line 362
    if-nez v2, :cond_0

    .line 363
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v7, "Volte/RCS RegistrationIcon: turned off."

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 367
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_1

    .line 368
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 372
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->needHideIconWhenCSCall(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v5, :cond_2

    .line 374
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v7, "VoWIFI Special Req.: Hide vowifi icon when CSFB"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 379
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v6, :cond_3

    .line 381
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 385
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    goto :goto_0

    .line 388
    :cond_4
    if-eqz p1, :cond_7

    .line 389
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "KOR requirement"

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    goto :goto_0

    .line 392
    :cond_5
    if-ne v3, v1, :cond_7

    .line 393
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v5, 0xd

    if-eq v1, v5, :cond_7

    const/16 v5, 0x14

    if-eq v1, v5, :cond_7

    const/16 v5, 0x12

    if-eq v1, v5, :cond_7

    .line 397
    :cond_6
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 401
    :cond_7
    :goto_0
    return-object v0
.end method

.method private updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 5
    .param p1, "visiblities"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .param p2, "registrationStatus"    # Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    .line 590
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "vowifi_operator_label"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "voWiFiOperatorLabel":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 592
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->fillWifiLabel()V

    .line 593
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkSameVoWIFILabel()Z

    move-result v1

    .line 595
    .local v1, "isSameLabel":Z
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v2

    .line 597
    .local v2, "otherSlotIndex":I
    if-eqz v1, :cond_2

    .line 598
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWIFIRegistered(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationSateQuickPanel(IZ)V

    goto :goto_1

    .line 599
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationSateQuickPanel(IZ)V

    .line 603
    :goto_1
    return-void

    .line 605
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationSateQuickPanel(IZ)V

    .line 607
    .end local v1    # "isSameLabel":Z
    .end local v2    # "otherSlotIndex":I
    :cond_3
    return-void
.end method

.method private updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 6
    .param p1, "visibilities"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .param p2, "registrationStatus"    # Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .param p3, "isCmcRegOnly"    # Z

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "iconNametoSet":Ljava/lang/String;
    const/4 v1, 0x0

    .line 483
    .local v1, "description":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    const v3, 0x7f060001

    const/high16 v4, 0x7f060000

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 484
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 487
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 492
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stat_sys_phone_no_volte_chn_hd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconName()Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 499
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVowifiIconName()Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 502
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 503
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 504
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 505
    const-string/jumbo v0, "stat_sys_phone_no_volte_chn_ctc"

    .line 509
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    .line 511
    const-string v1, ""

    .line 514
    :cond_6
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 515
    const-string/jumbo v0, "stat_sys_phone_call_skt"

    .line 516
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 519
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 520
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 527
    return-void
.end method


# virtual methods
.method public getDuringEmergencyCall()Z
    .locals 1

    .line 1214
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    return v0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initConfiguration(Lcom/sec/internal/constants/Mno;I)V
    .locals 2
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "phoneId"    # I

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 171
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ims_volte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "2"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 174
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->unRegisterPhoneStateListener()V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 181
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->clearIcon(I)V

    .line 182
    return-void
.end method

.method public registerPhoneStateListener()V
    .locals 4

    .line 996
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "registerPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 998
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 999
    .local v0, "subId":I
    if-gez v0, :cond_0

    .line 1000
    return-void

    .line 1003
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 1004
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "do not register to non-DDS PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 1010
    return-void
.end method

.method public setCurrentNetworkType(I)V
    .locals 4
    .param p1, "networkType"    # I

    .line 1019
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentNetworkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1020
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1021
    return-void
.end method

.method public setCurrentRoamingState(Z)V
    .locals 4
    .param p1, "InRoaming"    # Z

    .line 1034
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentRoamingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1035
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    .line 1036
    return-void
.end method

.method public setCurrentServiceState(I)V
    .locals 4
    .param p1, "serviceState"    # I

    .line 1024
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentServiceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1025
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    .line 1026
    return-void
.end method

.method public setCurrentVoiceRatType(I)V
    .locals 4
    .param p1, "VoiceRatType"    # I

    .line 1029
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentVoiceRatType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1030
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 1031
    return-void
.end method

.method public setDuringEmergencyCall(Z)V
    .locals 5
    .param p1, "isDuringEmergencyCall"    # Z

    .line 1207
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 1209
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1211
    :cond_0
    return-void
.end method

.method protected setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "slotName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 766
    const-string v0, "drawable"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 767
    .local v0, "resourceId":I
    const/4 v1, 0x0

    .line 769
    .local v1, "isNeedToUpdate":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    if-eq v2, v0, :cond_1

    .line 771
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 772
    const/4 v1, 0x1

    goto :goto_0

    .line 774
    :cond_0
    const-string v2, "com.samsung.rcs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 775
    const-string p3, "RCS"

    .line 776
    const/4 v1, 0x1

    .line 782
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v2, :cond_3

    .line 784
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 786
    .local v2, "sm":Landroid/app/StatusBarManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3, p3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 788
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setIconSlot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v2    # "sm":Landroid/app/StatusBarManager;
    goto :goto_1

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 794
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    :goto_1
    return-void

    .line 778
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong slot name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 779
    return-void
.end method

.method protected setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V
    .locals 9
    .param p1, "slotName"    # Ljava/lang/String;
    .param p2, "visible"    # Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "isNeedToUpdate":Z
    const-string v1, "!@Boot: "

    .line 807
    .local v1, "prefixBootLog":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v2, p2, :cond_2

    .line 809
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 810
    const/4 v0, 0x1

    goto :goto_0

    .line 812
    :cond_0
    const-string v2, "com.samsung.rcs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 813
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v2, p2, :cond_1

    .line 814
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 815
    const/4 v0, 0x1

    .line 817
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v2, :cond_2

    .line 819
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "RCS not registered on this SIM. Skip refresh."

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    return-void

    .line 827
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v2, :cond_6

    .line 829
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 831
    .local v2, "sm":Landroid/app/StatusBarManager;
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, p1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 833
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "]"

    const-string v6, ": ["

    const-string/jumbo v7, "setIconVisibility: "

    if-eqz v3, :cond_5

    .line 834
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    if-nez v3, :cond_5

    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p2, v3, :cond_5

    .line 835
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 836
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 840
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 844
    .end local v2    # "sm":Landroid/app/StatusBarManager;
    goto :goto_2

    .line 842
    :catch_0
    move-exception v2

    .line 843
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 846
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_6
    :goto_2
    return-void

    .line 823
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong slot name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    return-void
.end method

.method public unRegisterPhoneStateListener()V
    .locals 3

    .line 1013
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "unRegisterPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 1016
    return-void
.end method

.method public updateIconWithDDSChange()V
    .locals 4

    .line 1174
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 1177
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1178
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 1179
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1180
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "updateIconWithDDSChange"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1181
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1184
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    return-void
.end method

.method public updateRegistrationIcon(Z)V
    .locals 10
    .param p1, "isSuspend"    # Z

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 334
    .local v0, "voiceType":I
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    move-result-object v1

    .line 336
    .local v1, "visiblities":Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 337
    .local v3, "regArray":[Lcom/sec/ims/ImsRegistration;
    invoke-direct {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;ZI)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    move-result-object v4

    .line 339
    .local v4, "registrationStatus":Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRegistrationIcon: VoLTE [show: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", regi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] VoWiFi [show: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "] RCS [show: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] (SUSPENDED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCmcRegistered()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    array-length v5, v3

    if-ne v5, v6, :cond_0

    move v2, v6

    .line 346
    .local v2, "isCmcOnlyReg":Z
    :cond_0
    invoke-direct {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 347
    invoke-direct {p0, v1, v4, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 348
    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    .line 349
    return-void
.end method
