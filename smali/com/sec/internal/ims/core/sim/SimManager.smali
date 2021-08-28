.class public Lcom/sec/internal/ims/core/sim/SimManager;
.super Landroid/os/Handler;
.source "SimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;,
        Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;,
        Lcom/sec/internal/ims/core/sim/SimManager$AuthRequest;,
        Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;,
        Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;,
        Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;
    }
.end annotation


# static fields
.field private static final DELAYED_ISIM_LOAD:Ljava/lang/String; = "DELAYED_ISIM_LOAD"

.field protected static final EVENT_DDS_CHANGED:I = 0x6

.field protected static final EVENT_IMSSWITCH_UPDATED:I = 0x7

.field private static final EVENT_LOAD_MNOMAP:I = 0x8

.field protected static final EVENT_SIM_REFRESH:I = 0x3

.field protected static final EVENT_SIM_STATE_CHANGED:I = 0x1

.field protected static final EVENT_SOFTPHONE_AUTH_FAILED:I = 0x5

.field protected static final EVENT_UICC_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SimManager"

.field private static final SMF_MNONAME_PROP:Ljava/lang/String; = "sys.smf.mnoname"

.field protected static final SOFTPHONE_OPERATOR_CODE:Ljava/lang/String; = "310999"

.field private static final URI_UPDATE_GLOBAL:Landroid/net/Uri;

.field private static final URI_UPDATE_MNO:Landroid/net/Uri;

.field private static mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap; = null

.field private static final sInteractAcrossUsersFullPermission:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"


# instance fields
.field private OMCNW_CODE:Ljava/lang/String;

.field private OMC_CODE:Ljava/lang/String;

.field private final mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDDSIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDevMno:Lcom/sec/internal/constants/Mno;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHighestPriorityEhplmn:Ljava/lang/String;

.field private mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mImsi:Ljava/lang/String;

.field private mImsiFromImpi:Ljava/lang/String;

.field private mIsCrashSimEvent:Z

.field private mIsGtsAppInstalled:Z

.field private mIsGuestMode:Z

.field private mIsOutBoundSIM:Z

.field private mIsRefresh:Z

.field private mIsimLoaded:Z

.field private mLabSimCard:Z

.field private mLastImsi:Ljava/lang/String;

.field private mMnoInfo:Landroid/content/ContentValues;

.field private final mMultiUserReceiver:Landroid/content/BroadcastReceiver;

.field private mNetMno:Lcom/sec/internal/constants/Mno;

.field private mOperatorFromImpi:Ljava/lang/String;

.field private mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

.field private final mSimIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimMnoName:Ljava/lang/String;

.field protected final mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimSlot:I

.field protected mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field protected final mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field private mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

.field private mSubscriptionId:I

.field private final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    .line 112
    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simSlot"    # I
    .param p4, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 182
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 87
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 90
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 119
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    .line 120
    new-instance v3, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    invoke-direct {v3, p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimManager$1;)V

    iput-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    .line 121
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 122
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 126
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 127
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 128
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    .line 129
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 131
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 132
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 133
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 134
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 136
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 138
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 139
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 140
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 141
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 142
    new-instance v2, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v2}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 143
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    .line 1481
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1529
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDDSIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1544
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 1588
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$4;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$4;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "SimManager"

    const/16 v3, 0x1f4

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 185
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 186
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 187
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p4, :cond_0

    .line 191
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 192
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 196
    :cond_0
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 202
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 204
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(create): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMCNW_CODE(create): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mNetMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 208
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 80
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 80
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/core/sim/SimManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/sim/SimManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setGtsAppInstalled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/sim/SimManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 80
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/core/sim/SimManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGuestMode:Z

    return p1
.end method

.method private checkOutBoundSIM()Z
    .locals 4

    .line 492
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz v0, :cond_0

    .line 493
    const-string v0, "isOutboundSim, SIM not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v1

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "operator":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "45001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 499
    :cond_2
    :goto_0
    const-string v3, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1
.end method

.method private getGtsAppInstalled()Z
    .locals 1

    .line 1996
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return v0
.end method

.method private getISimDataValidity()I
    .locals 10

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "isimValidity":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "impi":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "homedomainName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "impuList":[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "isIsimDataValid: "

    const-string v6, "SimManager"

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v4, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "impu":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 642
    sget-object v7, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->getValue()I

    move-result v7

    or-int/2addr v0, v7

    .line 643
    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 634
    .end local v4    # "impu":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 648
    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 653
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 654
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available"

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    .line 656
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_5
    :goto_2
    return v0
.end method

.method private getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2000
    move-object v0, p1

    .line 2001
    .local v0, "mnoname":Ljava/lang/String;
    sget-char v1, Lcom/sec/internal/constants/Mno;->GC_DELIMITER:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2002
    .local v1, "delimiterPos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2003
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2005
    :cond_0
    return-object v0
.end method

.method private handldle_Locked(Ljava/lang/String;)V
    .locals 6
    .param p1, "operator"    # Ljava/lang/String;

    .line 1228
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1231
    .local v0, "changed":Z
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1232
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SIM LOCKED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(locked): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.smf.mnoname"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1245
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "hassim"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1246
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mnoname"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mvnoname"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "imsSwitchType"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1251
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v5, v4, v3

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->isOneOf([Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1254
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    .line 1256
    :cond_1
    return-void
.end method

.method private handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "lastMno"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .line 1259
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1260
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SimManager"

    const-string v4, "handleSimChange: SIM is ready."

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 1269
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1270
    .local v0, "cvSIMI":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 1272
    .local v4, "gid1":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1273
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getEventType(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;ZZ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1272
    const-string v6, "EVTT"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SCID"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1276
    const/16 v5, 0x10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GID1"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_1
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ISIM"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5, v6, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "VLTS"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5, v6, v7}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "VILS"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    const/4 v5, 0x1

    .line 1283
    .local v5, "validForNotify":Z
    const/4 v6, 0x0

    .line 1287
    .local v6, "simValidity":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isGBASupported()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1288
    sget-object v7, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->getValue()I

    move-result v7

    or-int/2addr v6, v7

    .line 1292
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->hasValidMsisdn()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1293
    sget-object v7, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->getValue()I

    move-result v7

    or-int/2addr v6, v7

    .line 1294
    const/4 v5, 0x0

    .line 1297
    :cond_3
    if-lez v6, :cond_4

    .line 1298
    invoke-static {v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SMVL"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_4
    iget-boolean v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v7, :cond_5

    .line 1303
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result v7

    .line 1304
    .local v7, "isimValidity":I
    if-lez v7, :cond_5

    .line 1305
    invoke-static {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ISVL"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v9, "block_regi_on_invalid_isim"

    invoke-static {v8, v9, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1308
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v8, "onSimStateChange: invalid ISIM!"

    invoke-static {v3, v1, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1309
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1310
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v8, "INVALID_FIELD"

    invoke-virtual {v1, v3, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1311
    const v1, 0x10000005

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",INVLD ISIM,"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1316
    .end local v7    # "isimValidity":I
    :cond_5
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v7, "SIMI"

    invoke-static {v1, v3, v7, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1319
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1321
    if-eqz v5, :cond_8

    .line 1322
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_1

    .line 1324
    .end local v0    # "cvSIMI":Landroid/content/ContentValues;
    .end local v4    # "gid1":Ljava/lang/String;
    .end local v5    # "validForNotify":Z
    .end local v6    # "simValidity":I
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1326
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v0, :cond_7

    .line 1327
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1328
    const-string v0, "ISIM_LOADED"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 1329
    return-void

    .line 1332
    :cond_7
    const-string v0, "DELAYED_ISIM_LOAD"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1324
    :cond_8
    :goto_1
    nop

    .line 1334
    :goto_2
    return-void
.end method

.method private handleSubscriptionId()Z
    .locals 5

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 886
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 887
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SimManager"

    const-string/jumbo v4, "onSimStateChange:[LOADED] subInfo is not created yet. retry in 1 sec."

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    const v2, 0x10000002

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NO SUBINFO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 889
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 890
    const-string v2, "LOADED"

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 891
    const/4 v1, 0x0

    return v1

    .line 894
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 895
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 896
    return v1
.end method

.method private handleVsim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "iccState"    # Ljava/lang/String;

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 871
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 872
    const-string v0, "SimManager"

    const-string v1, "Enable virtual SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imsSwitchType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "VSIM LOADED"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 877
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_0
    const-string v0, "LOADED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    .line 881
    :cond_1
    :goto_0
    return-void
.end method

.method private handle_Delayed_IsimLoaded()Z
    .locals 4

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "ISIM_LOADED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1098
    const/4 v0, 0x1

    .line 1099
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1101
    :cond_0
    return v0
.end method

.method private handle_IsimLoaded()Z
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v1, :cond_0

    .line 1108
    const/4 v0, 0x1

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_1

    .line 1111
    const/4 v0, 0x1

    .line 1112
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1114
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 1116
    const-string v1, "SimManager"

    const-string v2, "fix for exceptional case : LOADED notified before ISIM_LOADED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v0, 0x1

    .line 1119
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1120
    return v0
.end method

.method private handle_Loaded(Ljava/lang/String;)Z
    .locals 20
    .param p1, "operator"    # Ljava/lang/String;

    .line 901
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 902
    const/4 v2, 0x1

    .line 966
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 902
    const-string v4, "LOADED"

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->removeMessages(ILjava/lang/Object;)V

    .line 904
    sget-object v5, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v5

    .line 905
    .local v5, "changed":Z
    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v6

    if-nez v6, :cond_0

    .line 906
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 907
    const/4 v5, 0x1

    .line 910
    :cond_0
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 911
    const/4 v5, 0x1

    .line 914
    :cond_1
    if-eqz v5, :cond_1a

    .line 915
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidOperator(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, 0x3e8

    const-string v9, "SimManager"

    const/4 v10, 0x0

    if-nez v6, :cond_2

    .line 916
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v6, "onSimStateChange: [LOADED] but operator is invalid. retry in 1 sec."

    invoke-static {v9, v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    const v3, 0x10000001

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",INVLD OP:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 919
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 920
    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v8}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 921
    return v10

    .line 924
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    move-result v6

    if-nez v6, :cond_3

    .line 925
    return v10

    .line 928
    :cond_3
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v11

    invoke-interface {v6, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 929
    .local v6, "imsi":Ljava/lang/String;
    iget-object v11, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v11

    .line 930
    .local v11, "impi":Ljava/lang/String;
    iget-object v12, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v12

    .line 931
    .local v12, "gid1":Ljava/lang/String;
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v13

    .line 932
    .local v13, "spname":Ljava/lang/String;
    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v15

    .line 934
    .local v15, "gid2":Ljava/lang/String;
    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " gid1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " gid2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " impi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-static {v11}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " spname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 934
    invoke-virtual {v14, v10, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 936
    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 937
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v7, "onSimStateChange: [LOADED] but imsi is invalid. retry in 1 sec."

    invoke-static {v9, v3, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 938
    const v3, 0x10000003

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",INVLD IMSI,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 940
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 941
    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 942
    const/4 v2, 0x0

    return v2

    .line 946
    :cond_4
    const-string/jumbo v4, "ro.csc.sales_code"

    const-string/jumbo v7, "unknown"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 948
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 949
    iget-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 951
    :cond_5
    iget-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OMC_CODE(loaded): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mDevMno: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 953
    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 954
    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 955
    iget-object v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OMCNW_CODE(loaded): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mNetMno: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 957
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v4

    .line 958
    .local v4, "cscFeature":Lcom/sec/internal/helper/os/ImsCscFeature;
    if-nez v4, :cond_6

    .line 959
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v3, "onSimStateChanged, cscFeature is absent."

    invoke-static {v9, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    const/4 v2, 0x0

    return v2

    .line 962
    :cond_6
    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v7}, Lcom/sec/internal/helper/os/ImsCscFeature;->clear(I)V

    .line 964
    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    const-string v8, "CPW"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "00101"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 965
    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v8, "CPW and 00101 sim card, Enable GCF mode"

    invoke-static {v9, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 966
    invoke-static {v3}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Ljava/lang/Boolean;)V

    .line 969
    :cond_7
    const-string v7, ""

    iput-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    .line 970
    const/4 v7, 0x0

    .line 971
    .local v7, "isGlobalGcEnabled":Z
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 972
    sget-object v8, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-direct {v0, v8, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    move-object v2, v15

    goto/16 :goto_3

    .line 974
    :cond_8
    sget-object v8, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v8, :cond_9

    .line 975
    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v14, "mnomap is empty"

    invoke-virtual {v8, v10, v14}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 976
    new-instance v8, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v8, v10, v14}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    sput-object v8, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    .line 979
    :cond_9
    if-eqz v11, :cond_b

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 980
    invoke-static {v11}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 981
    .local v8, "operatorFromImpi":Ljava/lang/String;
    move-object v10, v6

    .line 982
    .local v10, "imsiFromImpi":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 983
    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v14, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 985
    :cond_a
    sget-object v14, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v2, v15

    .end local v15    # "gid2":Ljava/lang/String;
    .local v2, "gid2":Ljava/lang/String;
    move-object v15, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v14

    .line 986
    .local v14, "simMno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v14}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 987
    move-object v1, v8

    .end local p1    # "operator":Ljava/lang/String;
    .local v1, "operator":Ljava/lang/String;
    iput-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    .line 988
    move-object v6, v10

    iput-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    goto :goto_0

    .line 979
    .end local v1    # "operator":Ljava/lang/String;
    .end local v2    # "gid2":Ljava/lang/String;
    .end local v8    # "operatorFromImpi":Ljava/lang/String;
    .end local v10    # "imsiFromImpi":Ljava/lang/String;
    .end local v14    # "simMno":Lcom/sec/internal/constants/Mno;
    .restart local v15    # "gid2":Ljava/lang/String;
    .restart local p1    # "operator":Ljava/lang/String;
    :cond_b
    move-object v2, v15

    .line 992
    .end local v15    # "gid2":Ljava/lang/String;
    .end local p1    # "operator":Ljava/lang/String;
    .restart local v1    # "operator":Ljava/lang/String;
    .restart local v2    # "gid2":Ljava/lang/String;
    :cond_c
    :goto_0
    sget-object v14, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v15, v1

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 993
    .local v8, "mnoname":Ljava/lang/String;
    sget-object v10, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-direct {v0, v8}, Lcom/sec/internal/ims/core/sim/SimManager;->isMnoHasGcBlockExtension(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v10, 0x1

    goto :goto_1

    :cond_d
    const/4 v10, 0x0

    :goto_1
    move v7, v10

    .line 994
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isGlobalGcEnabled: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v10, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 995
    sget-object v10, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 996
    const/4 v7, 0x0

    .line 998
    :cond_e
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 999
    const-string v14, "LABSIM"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1000
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    const/4 v14, 0x1

    invoke-direct {v0, v10, v14}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1001
    iput-boolean v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 1002
    const/4 v7, 0x0

    goto :goto_2

    .line 1004
    :cond_f
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    const/4 v14, 0x0

    invoke-direct {v0, v10, v14}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1005
    iput-boolean v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 1010
    :goto_2
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v14, "SUP"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v14, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v10, v14, :cond_10

    .line 1011
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v14, "With SUP CSC, use GCF profile for GTS testing."

    invoke-static {v9, v10, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    sget-object v10, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v14, 0x1

    invoke-direct {v0, v10, v14}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1015
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v14, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v10, v14, :cond_11

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    const-string v14, "DEFAULT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 1016
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v15, "handle_Loaded: Mno.GENERIC Update Name, Country, Region"

    invoke-virtual {v10, v14, v15}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1017
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->updateGenerictMno(Ljava/lang/String;)V

    .line 1018
    sget-object v10, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v14, 0x0

    invoke-direct {v0, v10, v14}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1022
    .end local v8    # "mnoname":Ljava/lang/String;
    :cond_11
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sys.smf.mnoname"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "|LOADED"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM PLMN: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", mSimMno: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v10, v14}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1025
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1028
    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 1029
    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v10, "hassim"

    invoke-virtual {v8, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1030
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v10, "globalgcenabled"

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1031
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "mnoname"

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "mvnoname"

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v8, "imsi"

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3, v8, v10, v14, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->updateCommonHeader(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->checkOutBoundSIM()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 1040
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3, v8, v10}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1041
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v8, 0x0

    .line 1042
    .local v8, "isSimMobility":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/settings/ImsProfile;

    .line 1043
    .local v14, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1044
    const/4 v8, 0x1

    .line 1045
    goto :goto_5

    .line 1047
    .end local v14    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_12
    goto :goto_4

    .line 1049
    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v14, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const-string v15, "imsSwitchType"

    if-ne v10, v14, :cond_14

    .line 1050
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 1051
    :cond_14
    if-eqz v8, :cond_15

    .line 1052
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v14, "isSimMobility true"

    invoke-static {v9, v10, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1053
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSimMobilityImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v9

    .line 1055
    .local v9, "imsSettings":Landroid/content/ContentValues;
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1057
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v10, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;

    move-result-object v10

    .line 1058
    .local v10, "rcsSettings":Landroid/content/ContentValues;
    iget-object v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v14, v10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1059
    .end local v9    # "imsSettings":Landroid/content/ContentValues;
    .end local v10    # "rcsSettings":Landroid/content/ContentValues;
    goto/16 :goto_6

    :cond_15
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v10}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1064
    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v14, "for XAS use internal IMSSetting"

    invoke-static {v9, v10, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1065
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getXasImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v9

    .line 1067
    .local v9, "XasSetting":Landroid/content/ContentValues;
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1068
    .end local v9    # "XasSetting":Landroid/content/ContentValues;
    goto :goto_6

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->useImsSwitch()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1069
    iget v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v9}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "XAA"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUSOpenDevice()Z

    move-result v9

    if-nez v9, :cond_17

    .line 1071
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v10, "Turned off all switches for OYN/XAA case"

    invoke-virtual {v9, v14, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1072
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1073
    :cond_17
    iget-boolean v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v9, :cond_18

    .line 1079
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v14, "Turned off all switches for OutBoundSIM && not SimMo"

    invoke-virtual {v9, v10, v14}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1080
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1082
    :cond_18
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    iget v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    goto :goto_6

    .line 1086
    :cond_19
    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1091
    .end local v2    # "gid2":Ljava/lang/String;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    .end local v4    # "cscFeature":Lcom/sec/internal/helper/os/ImsCscFeature;
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v7    # "isGlobalGcEnabled":Z
    .end local v8    # "isSimMobility":Z
    .end local v11    # "impi":Ljava/lang/String;
    .end local v12    # "gid1":Ljava/lang/String;
    .end local v13    # "spname":Ljava/lang/String;
    :cond_1a
    return v5
.end method

.method private handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "iccState"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1126
    const-string v0, "LOADED"

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->removeMessages(ILjava/lang/Object;)V

    .line 1127
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimNotReady()V

    .line 1128
    return-void

    .line 1132
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1134
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1135
    .local v0, "salesCodeMno":Lcom/sec/internal/constants/Mno;
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1139
    :cond_1
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1140
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "SIM UNKNOWN"

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMC_CODE(unknown): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mDevMno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1143
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.smf.mnoname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1148
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hassim"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1149
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mnoname"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mvnoname"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imsSwitchType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1154
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1157
    .end local v0    # "salesCodeMno":Lcom/sec/internal/constants/Mno;
    :cond_2
    return-void
.end method

.method private handle_absent(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "isMultiSim"    # Z

    .line 1161
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1163
    .local v0, "changed":Z
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v3, "imsSwitchType"

    const-string v4, "hassim"

    const-string v5, "mvnoname"

    const-string v6, "mnoname"

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1179
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1176
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1165
    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "SIM ABSENT"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1187
    iput-boolean v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1188
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1189
    if-eqz v0, :cond_1

    .line 1190
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    .line 1194
    :cond_1
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1195
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1196
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1198
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OMC_CODE(absent): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mDevMno: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1201
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1202
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1203
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " OMCNW_CODE(absent): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mNetMno: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v1, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.smf.mnoname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|ABSENT"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1211
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1212
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 1217
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v1

    .line 1218
    .local v1, "defaultPhoneId":I
    if-eqz p2, :cond_3

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne v1, v2, :cond_4

    .line 1219
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1221
    .end local v1    # "defaultPhoneId":I
    :cond_4
    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1222
    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v7, :cond_7

    .line 1223
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1225
    :cond_7
    :goto_0
    return-void

    .line 1167
    :cond_8
    :goto_1
    const-string v1, "LOADED"

    invoke-virtual {p0, v7, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->removeMessages(ILjava/lang/Object;)V

    .line 1170
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "SIM REMOVED"

    invoke-virtual {v1, v2, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1171
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRemoved()V

    .line 1173
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "lastMnoName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1176
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1177
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1183
    return-void
.end method

.method private isISimAppLoaded()Z
    .locals 4

    .line 483
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 484
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "block_regi_on_invalid_isim"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    .line 485
    :cond_1
    return v1

    .line 488
    :cond_2
    return v1
.end method

.method private isMnoHasGcBlockExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2009
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidImpu(Ljava/lang/String;)Z
    .locals 3
    .param p0, "impu"    # Ljava/lang/String;

    .line 665
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 666
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_0

    .line 667
    const/4 v1, 0x1

    return v1

    .line 670
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid impu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v1, 0x0

    return v1
.end method

.method private isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 824
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidOperator(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;

    .line 820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifySimReady(Ljava/lang/String;)V
    .locals 6
    .param p1, "operator"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimReady: state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOTI SIM EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000001f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SimManager"

    const-string/jumbo v4, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 388
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 390
    .local v0, "absent":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v2, :cond_3

    .line 393
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM READY by needHandleLoadedAgain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 391
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 399
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v2

    .line 400
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 401
    .local v4, "listener":Lcom/sec/internal/interfaces/ims/core/ISimEventListener;
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v4, v5, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    .line 402
    .end local v4    # "listener":Lcom/sec/internal/interfaces/ims/core/ISimEventListener;
    goto :goto_3

    .line 403
    :cond_4
    monitor-exit v2

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private notifySimRefresh()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method private notifySimRemoved()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method private notifySimStateChanged()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method private notifyUiccChanged()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    .line 416
    return-void
.end method

.method private onDDSChanged(I)V
    .locals 2
    .param p1, "defaultPhoneId"    # I

    .line 1581
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    .line 1584
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno()V

    .line 1586
    :cond_1
    return-void
.end method

.method private onSimRefresh()V
    .locals 3

    .line 1394
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "onSimRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SIM REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000000f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1397
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1399
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 1400
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1405
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-nez v0, :cond_0

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1407
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRefresh()V

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    .line 1411
    return-void
.end method

.method private onSoftphoneAuthDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LEN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000031

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 792
    :cond_0
    const-string v0, "aka failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->sendEmptyMessage(I)Z

    .line 795
    :cond_1
    :goto_0
    return-void
.end method

.method private onSoftphoneAuthFailed()V
    .locals 2

    .line 798
    const-string v0, "SimManager"

    const-string/jumbo v1, "onSoftphoneAuthFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void
.end method

.method private setGtsAppInstalled(Z)V
    .locals 0
    .param p1, "installed"    # Z

    .line 1992
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 1993
    return-void
.end method

.method private setSimMno(Lcom/sec/internal/constants/Mno;Z)V
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "updateMnoName"    # Z

    .line 1356
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, p1}, Lcom/sec/internal/helper/SimUtil;->setSimMno(ILcom/sec/internal/constants/Mno;)V

    .line 1357
    if-eqz p2, :cond_0

    .line 1358
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1360
    :cond_0
    return-void
.end method

.method private updateGlobalSetting(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v1, "imsSwitchType"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "switchType":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v3, "enableIms"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    .line 259
    .local v1, "isEnableIms":Z
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v4, "enableServiceVolte"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    .line 260
    .local v3, "isEnableVolte":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v5, "enableServiceVowifi"

    invoke-static {v4, v5, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 262
    .local v2, "isEnableVowifi":Z
    if-eqz v1, :cond_1

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 263
    :cond_1
    const-string v4, "SimManager"

    const-string/jumbo v5, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable"

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v4, "disableVolte":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v5

    const-string v6, "CS"

    const-string v7, "emergency_domain_setting"

    const-string/jumbo v8, "voice_domain_pref_eutran"

    if-eqz v5, :cond_2

    .line 266
    const/4 v5, 0x3

    .line 267
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 266
    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v5, "PS"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    const-string/jumbo v5, "ss_domain_setting"

    const-string v7, "CS_ALWAYS"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v5, "ussd_domain_setting"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "simslot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 277
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v4    # "disableVolte":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private updateMno()V
    .locals 8

    .line 1363
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "updateMno:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v2, "imsSwitchType"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1368
    .local v0, "imsSwitchType":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1369
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1374
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v3, "imsi"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1375
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_1
    const v2, 0x1000000d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1379
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1381
    const v2, 0x1000000e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1384
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1385
    .local v2, "uri":Landroid/net/Uri;
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMno ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1386
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1387
    return-void
.end method

.method private updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 2
    .param p1, "state"    # Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 806
    return v1

    .line 809
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 810
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 812
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_1

    .line 813
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 816
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private useImsSwitch()Z
    .locals 2

    .line 828
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v1, "GCF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    const-string v1, "SUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 1706
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1707
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1708
    monitor-exit v0

    .line 1709
    return-void

    .line 1708
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deregisterForSimReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 375
    return-void
.end method

.method public deregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method public deregisterForSimRemoved(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 443
    return-void
.end method

.method public deregisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 460
    return-void
.end method

.method public dump()V
    .locals 5

    .line 1956
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

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

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1957
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1958
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1959
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStatePrev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1960
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1961
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsimLoaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1962
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsOutBound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_0

    .line 1964
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimDataAdaptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_2

    .line 1967
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1968
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impi: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1969
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1970
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homedomainName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1971
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impuFromSim[]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1973
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1974
    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1976
    :cond_2
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1980
    return-void
.end method

.method public getDerivedImpi()Ljava/lang/String;
    .locals 9

    .line 1773
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpi:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1774
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1775
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 1777
    .local v2, "imsi":Ljava/lang/String;
    const-string v3, "111@example.com"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1782
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 1784
    .local v4, "operator":Ljava/lang/String;
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5, v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isValidSimOperator(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1785
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "getDerivedImpi: operator is invalid"

    invoke-static {v1, v3, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1786
    const/4 v1, 0x0

    return-object v1

    .line 1791
    :cond_1
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1792
    .local v7, "mcc":I
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    .local v1, "mnc":I
    nop

    .line 1799
    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x1

    if-ne v0, v3, :cond_2

    .line 1800
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v6, "%s@lte-lguplus.co.kr"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "impi":Ljava/lang/String;
    goto :goto_0

    .line 1801
    .end local v3    # "impi":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1802
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v6, "%s@ims.taiwanmobile.com"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "impi":Ljava/lang/String;
    goto :goto_0

    .line 1803
    .end local v3    # "impi":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 1804
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v6, "%s@ims.mnc011.mcc460.3gppnetwork.org"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "impi":Ljava/lang/String;
    goto :goto_0

    .line 1805
    .end local v3    # "impi":Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_5

    .line 1806
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v6, "%s@ims.mnc007.mcc455.3gppnetwork.org"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "impi":Ljava/lang/String;
    goto :goto_0

    .line 1808
    .end local v3    # "impi":Ljava/lang/String;
    :cond_5
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 1809
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1808
    const-string v6, "%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    .restart local v3    # "impi":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1793
    .end local v1    # "mnc":I
    .end local v3    # "impi":Ljava/lang/String;
    .end local v7    # "mcc":I
    :catch_0
    move-exception v5

    .line 1794
    .local v5, "e":Ljava/lang/NumberFormatException;
    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1795
    return-object v3

    .line 1778
    .end local v4    # "operator":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_1
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1779
    return-object v3
.end method

.method public getDerivedImpu()Ljava/lang/String;
    .locals 8

    .line 1819
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpu:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1820
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1821
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 1823
    .local v2, "imsi":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1828
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object v1

    .line 1829
    .local v1, "mccmnc":[I
    if-nez v1, :cond_1

    .line 1830
    return-object v3

    .line 1834
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_2

    .line 1835
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string/jumbo v4, "sip:%s@ims.taiwanmobile.com"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "impu":Ljava/lang/String;
    goto :goto_0

    .line 1836
    .end local v3    # "impu":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1837
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string/jumbo v4, "sip:%s@ims.mnc011.mcc460.3gppnetwork.org"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "impu":Ljava/lang/String;
    goto :goto_0

    .line 1838
    .end local v3    # "impu":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 1839
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string/jumbo v4, "sip:%s@ims.mnc007.mcc455.3gppnetwork.org"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "impu":Ljava/lang/String;
    goto :goto_0

    .line 1841
    .end local v3    # "impu":Ljava/lang/String;
    :cond_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aget v7, v1, v5

    .line 1842
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    .line 1841
    const-string/jumbo v4, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1844
    .restart local v3    # "impu":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1824
    .end local v1    # "mccmnc":[I
    .end local v3    # "impu":Ljava/lang/String;
    :cond_5
    :goto_1
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "getDerivedImpu: IMSI is not found."

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1825
    return-object v3
.end method

.method public getDerivedImpuFromMsisdn()Ljava/lang/String;
    .locals 8

    .line 1738
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "getDerivedImpuFromMsisdn:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1739
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1741
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 1743
    .local v2, "msisdn":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1744
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "getDerivedImpuFromMsisdn: msisdn is not found"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1745
    const/4 v1, 0x0

    return-object v1

    .line 1748
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)[I

    move-result-object v3

    .line 1749
    .local v3, "mccmnc":[I
    if-nez v3, :cond_1

    .line 1750
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    const-string v1, "111@example.com"

    return-object v1

    .line 1755
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_2

    .line 1756
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string/jumbo v4, "sip:%s@ims.bell.ca"

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "impu":Ljava/lang/String;
    goto :goto_0

    .line 1757
    .end local v1    # "impu":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1758
    const-string v1, "+82"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1759
    const-string v6, "0"

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1761
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string/jumbo v4, "sip:%s@lte-lguplus.co.kr"

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "impu":Ljava/lang/String;
    goto :goto_0

    .line 1763
    .end local v1    # "impu":Ljava/lang/String;
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    aget v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    const-string/jumbo v4, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1765
    .restart local v1    # "impu":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public getDevMno()Lcom/sec/internal/constants/Mno;
    .locals 1

    .line 1925
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method public getEfImpuList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    .local v0, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v1

    .line 1852
    .local v1, "efImpus":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1853
    return-object v0

    .line 1856
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1857
    .local v4, "impu":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1858
    goto :goto_1

    .line 1860
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    .end local v4    # "impu":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1862
    :cond_3
    return-object v0
.end method

.method public getEmergencyImpu()Ljava/lang/String;
    .locals 3

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1898
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, "impu":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1904
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    if-nez v0, :cond_4

    .line 1905
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1906
    const-string/jumbo v0, "sip:anonymous@anonymous.invalid"

    goto :goto_0

    .line 1907
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 1909
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1910
    if-nez v0, :cond_4

    .line 1911
    const-string/jumbo v0, "sip:anonymous@anonymous.invalid"

    goto :goto_0

    .line 1913
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 1914
    const-string/jumbo v0, "sip:anonymous@anonymous.invalid"

    goto :goto_0

    .line 1916
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    .line 1920
    :cond_4
    :goto_0
    return-object v0
.end method

.method public getHighestPriorityEhplmn()Ljava/lang/String;
    .locals 1

    .line 1620
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    return-object v0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 2

    .line 1713
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpuFromIsim(I)Ljava/lang/String;
    .locals 3
    .param p1, "idx"    # I

    .line 1886
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0

    .line 1888
    .local v0, "impus":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 1892
    :cond_0
    aget-object v1, v0, p1

    return-object v1

    .line 1889
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImpuFromSim()Ljava/lang/String;
    .locals 3

    .line 1867
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1869
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1870
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1873
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1874
    .local v1, "impu":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1875
    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v1, v2

    .line 1878
    :cond_3
    return-object v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1677
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, "tmpImsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1680
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 1682
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    return-object v1
.end method

.method public getImsiFromImpi()Ljava/lang/String;
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "appType":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isIsimLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v0, 0x5

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isIsimLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    const/4 v0, 0x2

    .line 683
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .line 689
    const/16 v0, 0x81

    .line 690
    .local v0, "authType":I
    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 695
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getIsimAuthentication calling - AppType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/2addr v3, v4

    new-array v3, v3, [B

    .line 698
    .local v3, "hexBytes":[B
    const/4 v5, 0x0

    .line 699
    .local v5, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 700
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "j":I
    .local v7, "j":I
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 699
    add-int/lit8 v6, v6, 0x2

    move v5, v7

    goto :goto_0

    .line 703
    .end local v6    # "i":I
    .end local v7    # "j":I
    .restart local v5    # "j":I
    :cond_1
    const v6, 0x10000020

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",REQ ISIM AUTH"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 704
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 705
    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7, p2, v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    const v8, 0x10000021

    const-string v9, "null"

    if-eqz v7, :cond_3

    const-string v7, "2wQAAAAAAAA="

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 713
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIsimAuthentication result:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",getIsimAuthentication result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 716
    const-string v1, "mGI="

    .line 717
    .end local v6    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 720
    .end local v1    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 724
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",LEN:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 727
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 729
    .local v1, "resultBytes":[B
    :try_start_0
    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 735
    nop

    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    array-length v8, v1

    mul-int/2addr v8, v4

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v7

    .line 737
    .local v4, "ret":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resultBytes.length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_5

    .line 740
    aget-byte v8, v1, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 741
    .local v8, "b":I
    const-string v9, "0123456789abcdef"

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    aget-byte v10, v1, v7

    and-int/lit8 v8, v10, 0xf

    .line 743
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    .end local v8    # "b":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 745
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 746
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decoded result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-object v6

    .line 730
    .end local v4    # "ret":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 731
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 732
    const-string v7, "Failed to decode the AKA RESPONSE - retry as MAC ERROR"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v2, "9862"

    return-object v2

    .line 721
    .end local v1    # "resultBytes":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    const-string v4, "getIccAuthentication failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-object v1

    .line 691
    .end local v3    # "hexBytes":[B
    .end local v5    # "j":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong parameter - AppType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nonce : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMnoInfo()Landroid/content/ContentValues;
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .line 1666
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetMno()Lcom/sec/internal/constants/Mno;
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method public getNetworkNames()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 507
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 509
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 510
    .local v2, "onlyMccmnc":Z
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "gid1":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    const/4 v2, 0x1

    .line 515
    :cond_1
    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperatorFromImpi()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "operatorCode":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "imsi":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v6, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 518
    invoke-interface {v8, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 517
    move v10, v2

    invoke-static/range {v4 .. v10}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public getRilSimOperator()Ljava/lang/String;
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v2, "ril.simoperator"

    const-string v3, "ETC"

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "simOp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRilSimOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v0
.end method

.method public getSimEmergencyDomain()Ljava/lang/String;
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimEmergencyDomain(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimMno()Lcom/sec/internal/constants/Mno;
    .locals 1

    .line 1941
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0
.end method

.method public getSimMnoName()Ljava/lang/String;
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .line 567
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    return-object v0

    .line 573
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const-string v1, "310999"

    return-object v1

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator: value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v0
.end method

.method public getSimOperatorFromImpi()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlotCount()I
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    .line 1615
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return v0
.end method

.method public getSimState()I
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1724
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v0

    return v0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    return v0

    .line 1730
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1

    .line 1983
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1607
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v0, :cond_0

    .line 1608
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1610
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1441
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1443
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1466
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v0, :cond_0

    .line 1467
    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    goto :goto_0

    .line 1472
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1473
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateGlobalSetting(I)V

    .line 1474
    goto :goto_0

    .line 1462
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onDDSChanged(I)V

    .line 1463
    goto :goto_0

    .line 1458
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthFailed()V

    .line 1459
    goto :goto_0

    .line 1454
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRefresh()V

    .line 1455
    goto :goto_0

    .line 1450
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyUiccChanged()V

    .line 1451
    goto :goto_0

    .line 1445
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimStateChanged()V

    .line 1447
    nop

    .line 1479
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasIsim()Z
    .locals 9

    .line 523
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 524
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "simOp":Ljava/lang/String;
    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "hwVendor":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v4, "SimManager"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 528
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-static {v4, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    return v5

    .line 531
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 532
    const-string v3, "hasIsim safariCom_kenya : false"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v5

    .line 536
    :cond_3
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v3, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v3

    .line 537
    .local v3, "hasIsim":Z
    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIsim: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v6, "use_usim_on_invalid_isim"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    move v3, v5

    .line 544
    :cond_6
    return v3
.end method

.method public hasNoSim()Z
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVsim()Z
    .locals 1

    .line 556
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    return v0
.end method

.method public initSequentially()V
    .locals 10

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v0, "simFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "com.android.intent.isim_refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v1, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DSDS_SI_DDS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v2, "ddsFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    .end local v2    # "ddsFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 307
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v2, "mumFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v3, "akaFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v4, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;

    sget-object v6, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    .end local v2    # "mumFilter":Landroid/content/IntentFilter;
    .end local v3    # "akaFilter":Landroid/content/IntentFilter;
    :cond_1
    const-string v2, "SimManager"

    const-string v3, "init mno map"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method protected initializeSimState()V
    .locals 7

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1338
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, "simState":Ljava/lang/String;
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSimState (gsm.sim.state) : =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1340
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "LOADED"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_2

    .line 1349
    :cond_1
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1350
    invoke-virtual {p0, v6, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1344
    :cond_2
    invoke-virtual {p0, v6, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 1345
    nop

    .line 1353
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch
.end method

.method public isGBASupported()Z
    .locals 4

    .line 607
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x1

    return v0

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    const/4 v0, 0x0

    return v0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    .line 617
    .local v0, "isGbaSupported":Z
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGbaSupported ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 618
    return v0
.end method

.method public isISimDataValid()Z
    .locals 1

    .line 623
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIsimLoaded()Z
    .locals 8

    .line 1642
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1643
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, "simOp":Ljava/lang/String;
    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1645
    .local v2, "hwVendor":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1646
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1647
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "isIsimLoaded: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1648
    return v4

    .line 1650
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1651
    return v4

    .line 1657
    :cond_3
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v3, v5

    const/4 v5, 0x3

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    aput-object v7, v3, v5

    const/4 v5, 0x4

    sget-object v7, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    aput-object v7, v3, v5

    const/4 v5, 0x5

    sget-object v7, Lcom/sec/internal/constants/Mno;->ROBI:Lcom/sec/internal/constants/Mno;

    aput-object v7, v3, v5

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1661
    :cond_4
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    return v3

    .line 1658
    :cond_5
    :goto_0
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v6

    :cond_6
    return v4
.end method

.method public isLabSimCard()Z
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLabSimCard: state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] isLabSim ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutBoundSIM()Z
    .locals 2

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOutBoundSIM: state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] isOutBoundSIM ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimAvailable()Z
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsimLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasIsim():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimLoaded()Z
    .locals 2

    .line 1637
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDDSChanged(I)V
    .locals 2
    .param p1, "defaultPhoneId"    # I

    .line 1577
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 1578
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, "spSwitch":Landroid/content/SharedPreferences;
    const-string v3, "enableIms"

    const-string v4, "enableServiceVowifi"

    const-string v5, "enableServiceSmsip"

    const-string v6, "enableServiceVilte"

    const-string v7, "enableServiceVolte"

    const-string v8, "enableServiceRcs"

    const-string v9, "enableServiceRcschat"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "switchval":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 247
    .local v5, "var":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 246
    .end local v5    # "var":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", onImsSwitchUpdated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 250
    return-void
.end method

.method protected onSimNotReady()V
    .locals 3

    .line 1428
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "onSimNotReady"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1430
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1432
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 1433
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1435
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1436
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    .line 1437
    return-void
.end method

.method protected onSimRemoved()V
    .locals 3

    .line 1418
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "onSimRemoved:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1420
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1423
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1424
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    .line 1425
    return-void
.end method

.method protected onSimStateChange(Ljava/lang/String;)V
    .locals 7
    .param p1, "iccState"    # Ljava/lang/String;

    .line 832
    const-string v0, ""

    .line 833
    .local v0, "lastMno":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "operator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 835
    .local v2, "changed":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v3

    .line 837
    .local v3, "isMultiSim":Z
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSimStateChange: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], operator: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SimManager"

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",,EVT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleVsim(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void

    .line 846
    :cond_0
    const-string v4, "LOADED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "mnoname"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Loaded(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 849
    :cond_1
    const-string v4, "DELAYED_ISIM_LOAD"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 850
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Delayed_IsimLoaded()Z

    move-result v2

    goto :goto_0

    .line 851
    :cond_2
    const-string v4, "ISIM_LOADED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 852
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_IsimLoaded()Z

    move-result v2

    goto :goto_0

    .line 853
    :cond_3
    const-string v4, "NOT_READY"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "UNKNOWN"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 856
    :cond_4
    const-string v4, "ABSENT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 857
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_absent(Ljava/lang/String;Z)V

    .line 858
    return-void

    .line 859
    :cond_5
    const-string v4, "LOCKED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 860
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handldle_Locked(Ljava/lang/String;)V

    .line 861
    return-void

    .line 864
    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    .line 865
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_7
    return-void

    .line 854
    :cond_8
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method public registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 362
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string v2, "Register for sim ready"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 364
    .local v0, "register":Lcom/sec/internal/helper/Registrant;
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 366
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 367
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 370
    :cond_1
    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 424
    return-void
.end method

.method public registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 438
    return-void
.end method

.method public registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 455
    return-void
.end method

.method public registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 412
    return-void
.end method

.method public registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 1695
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1696
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_1

    .line 1700
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    .line 1702
    :cond_1
    return-void

    .line 1697
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 754
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 757
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 761
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 763
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 764
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 766
    :cond_0
    return-void
.end method

.method public requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "impi"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "id"    # I

    .line 771
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSoftphoneAuthentication, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",REQ AUTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10000030

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nonce"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string v1, "impi"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v1, "id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 780
    return-void
.end method

.method public setIsimLoaded()V
    .locals 1

    .line 479
    const-string v0, "ISIM_LOADED"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public setSimRefreshed()V
    .locals 2

    .line 561
    const-string v0, "SimManager"

    const-string/jumbo v1, "setSimRefreshed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method public declared-synchronized setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    monitor-enter p0

    .line 1625
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    const-string v0, "SimManager"

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubscriptionInfo : mSubscriptionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSimSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1626
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1628
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1629
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1630
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 1631
    const-string v0, "SimManager"

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored EHPLMN ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    .end local p0    # "this":Lcom/sec/internal/ims/core/sim/SimManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 1624
    .end local p1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
