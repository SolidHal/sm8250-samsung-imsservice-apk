.class public Lcom/sec/internal/ims/core/RegistrationGovernorKor;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorKor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

.field private static final DEFAULT_TIMS_TIMER:I = 0x3c

.field private static final DNS_RETRY_TIME:I = 0xfa0

.field private static final IMS_NOT_AVAILABLE_REG_FAIL_RETRY:I = 0x2

.field protected static final INTENT_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field protected static final INTENT_USIMDOWNLOAD_END:Ljava/lang/String; = "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

.field protected static final INTENT_WAP_PUSH_DM_NOTI_RECEIVED:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field protected static final LTE_DATA_NETWORK_MODE:Ljava/lang/String; = "lte_mode_on"

.field private static final MAX_REQUESTPDN_COUNT:I = 0x5

.field private static final OMADM_KT_DEFAULT_PCSCF:Ljava/lang/String; = "volte.imskt.com"

.field private static final REG_RETRY_MAX_TIME_FOR_UNLIMITED_404:I = 0x3840

.field private static final REQUESTPDN_INTERVAL:I = 0x3

.field private static final REQUEST_INTERNETPDN_TIMER:I = 0x1e


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mConsecutiveForbiddenCounter:I

.field private mCscConfigApnForHideDataIconRCS:Z

.field protected mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

.field protected mCscSupportLTEPreferred:Z

.field protected mCscSupportOmdVolteRoaming:Z

.field private mDmPollingTimer:Landroid/os/Message;

.field private mDmUpdatedFlag:Z

.field private mDnsQueryCount:I

.field private mHasNetworkFailure:Z

.field protected mHasPendingInitRegistrationByDMConfigChange:Z

.field protected mHasPendingNotifyImsNotAvailable:Z

.field protected mIntentReceiverKor:Landroid/content/BroadcastReceiver;

.field private mIpsecEnabled:Z

.field private mIsAkaChallengeTimeout:Z

.field protected mIsShipBuild:Z

.field private mLocalAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDelayedDeregister:Z

.field protected mPDNdisconnectTimeout:Landroid/os/Message;

.field private mPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPdnTimeoutCount:I

.field private mSmsOverIp:Z

.field private mVolteServiceStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 120
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 123
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 128
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 131
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 133
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    .line 135
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    .line 136
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigApnForHideDataIconRCS:Z

    .line 137
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    .line 138
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 139
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    .line 140
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    .line 143
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setBotAgreementToFile(I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 5
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 120
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 123
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 128
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 131
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 133
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    .line 135
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    .line 136
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigApnForHideDataIconRCS:Z

    .line 137
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    .line 138
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 139
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    .line 140
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    .line 143
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 161
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "RegiGvnKor-RCS"

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "RegiGvnKor-EMC"

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "RegiGvnKor"

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    .line 169
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 170
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 171
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    .line 174
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 175
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 176
    const-string/jumbo v0, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_COMMON_SupportLTEPreferred"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    .line 178
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportOmdVolteRoaming"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    .line 179
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string v2, "CscFeature_IMS_ConfigVerUICCMobilitySpec"

    const-string v4, "2.0"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string v2, "CscFeature_RIL_ConfigApnForHideDataIcon"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigApnForHideDataIconRCS:Z

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCscSupportLTEPreferred("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")mCscSupportOmdVolteRoaming("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")mCscConfigVerUiccMobilitySpec("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")mCscConfigApnForHideDataIconRCS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigApnForHideDataIconRCS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.imsservice.dm_polling_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.LTE_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "intent added"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIntentReceiverKor:Landroid/content/BroadcastReceiver;

    .line 242
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIntentReceiverKor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->updateVolteRoamingSetting()V

    .line 244
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->updateEutranValues()V

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handlePeriodicPollingTimeoutIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleFlightModeIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleAirplaneModeIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleUsimDownloadEndIntent()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleSoftResetIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleNwRejectIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleWapPushDmNotiReceivedIntent()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleNewOutgoingCallIntent()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleBootCompletedIntent()V

    return-void
.end method

.method private checkDMConfigChange(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 7
    .param p1, "dmProfile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1645
    const/4 v0, 0x0

    .line 1648
    .local v0, "isNeedToInitRegi":Z
    if-nez p1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkDMConfigChange : dmProfile in null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-void

    .line 1653
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v1

    .line 1655
    .local v1, "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 1656
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1657
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    if-ne v2, v3, :cond_2

    .line 1658
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    if-ne v2, v3, :cond_2

    .line 1659
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    if-eq v2, v3, :cond_3

    .line 1661
    :cond_2
    const/4 v0, 0x1

    .line 1664
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDMConfigChange : previous pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDMConfigChange : previous IpSecEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", new IpSecEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1666
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDMConfigChange : previous SmsOverIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", new SmsOverIp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDMConfigChange : previous ServiceStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", new ServiceStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1671
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1675
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfList()V

    .line 1676
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 1677
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkDMConfigChange : resetPcscfList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfList:Ljava/util/List;

    .line 1680
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIpsecEnabled:Z

    .line 1681
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mSmsOverIp:Z

    .line 1682
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setOldVolteServiceStatus(Z)V

    .line 1684
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1685
    if-eqz v0, :cond_6

    .line 1686
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_5

    .line 1687
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkDMConfigChange : need de-reg and init reg"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 1689
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x1d

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1690
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v4, v6, v6, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1692
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 1694
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkDMConfigChange : de-reg and init reg after call end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 1699
    :cond_6
    :goto_0
    return-void
.end method

.method private checkOtaStatus()Z
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1155
    const-string/jumbo v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isReadyToRegister : OTA is working, don\'t try register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1158
    const/4 v0, 0x0

    return v0

    .line 1160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkUnprocessedOmadmConfig()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 252
    .local v0, "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkUnprocessedOmadmConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendCheckUnprocessedOmadmConfig()V

    .line 257
    return-void

    .line 253
    :cond_2
    :goto_0
    return-void

    .line 249
    .end local v0    # "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_3
    :goto_1
    return-void
.end method

.method private checkValidRejectCode(I)Z
    .locals 1
    .param p1, "rejectCode"    # I

    .line 1043
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    return v0

    .line 1052
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private deregisterIfConnecting(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 2006
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 2007
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 2010
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 2011
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 2012
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterIfConnecting : stopPdnConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2015
    .local v0, "keepPdn":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v0, v1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 2016
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v4, "user triggered"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 2017
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deregisterIfConnecting : deregister"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    .end local v0    # "keepPdn":Z
    :goto_1
    return-void
.end method

.method private getActualWaitTime()I
    .locals 6

    .line 712
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getWaitTime()I

    move-result v0

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getActualWaitTimeForUnlimited404()I
    .locals 5

    .line 716
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegBaseTime:I

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    const/16 v1, 0x3840

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getVolteServiceStatus()Z
    .locals 5

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1390
    .local v0, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isVolteServiceStatus()Z

    move-result v1

    .line 1391
    .local v1, "isVolteServiceStatusOn":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolteServiceStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return v1
.end method

.method private handleAirplaneModeIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1870
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;

    .line 1872
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 1873
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1871
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    .line 1875
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 1876
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: AIRPLANE_MODE on. reset ACS Info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1879
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfPreference()V

    .line 1881
    :cond_1
    :goto_0
    return-void
.end method

.method private handleBootCompletedIntent()V
    .locals 2

    .line 1951
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: ACTION_BOOT_COMPLETED is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkUnprocessedOmadmConfig()V

    .line 1955
    :cond_0
    return-void
.end method

.method private handleFlightModeIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1836
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1841
    const-string/jumbo v0, "powerofftriggered"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1842
    .local v0, "powerOff":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "powerOff :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    if-eq v0, v2, :cond_0

    .line 1844
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1845
    .local v2, "batteryStatus":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1846
    const-string v3, "level"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1847
    .local v3, "rawlevel":I
    const-string/jumbo v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1849
    .local v6, "scale":I
    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v6

    .line 1851
    .local v7, "batteryLevel":I
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "battery level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    if-gt v7, v1, :cond_0

    .line 1854
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v8, 0x21

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1858
    .end local v2    # "batteryStatus":Landroid/content/Intent;
    .end local v3    # "rawlevel":I
    .end local v6    # "scale":I
    .end local v7    # "batteryLevel":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: FLIGHT_MODE is changed - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setNeedDelayedDeregister(Z)V

    .line 1861
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deregister delay 300 ms for sending BYE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "flight mode enabled"

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1865
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    .line 1867
    .end local v0    # "powerOff":I
    :cond_1
    return-void
.end method

.method private handleNewOutgoingCallIntent()V
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1941
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1942
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->hasCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: INTENT_NEW_OUTGOING_CALL is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1945
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    .line 1946
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    .line 1948
    :cond_1
    return-void
.end method

.method private handleNwRejectIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1898
    const/4 v0, 0x0

    .line 1899
    .local v0, "rejectCode":I
    const-string v1, "CAUSE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1900
    .local v1, "extraCause":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1904
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1907
    goto :goto_0

    .line 1905
    :catch_0
    move-exception v2

    .line 1906
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "invalid CAUSE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", CAUSE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkValidRejectCode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1910
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1911
    const/4 v2, 0x0

    .line 1912
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.status.regist_reject"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1913
    const-string v2, "nw_regist_reject"

    goto :goto_1

    .line 1914
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LTE_REJECT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1915
    const-string v2, "nw_lte_reject"

    .line 1918
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1919
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1920
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    goto :goto_3

    .line 1901
    .end local v2    # "reason":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "empty CAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    .end local v0    # "rejectCode":I
    .end local v1    # "extraCause":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void
.end method

.method private handlePeriodicPollingTimeoutIntent()V
    .locals 2

    .line 1829
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: dm polling timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendRequestDmConfig()V

    .line 1833
    :cond_0
    return-void
.end method

.method private handleSoftResetIntent()V
    .locals 4

    .line 1890
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string/jumbo v2, "volte_domestic_default_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    .line 1891
    invoke-static {v0, v3, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 1894
    :cond_1
    return-void
.end method

.method private handleUsimDownloadEndIntent()V
    .locals 4

    .line 1884
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1887
    :cond_0
    return-void
.end method

.method private handleWapPushDmNotiReceivedIntent()V
    .locals 2

    .line 1927
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive: INTENT_WAP_PUSH_DM_NOTI_RECEIVED is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    .line 1931
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 1932
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurImpu:I

    .line 1933
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string v1, "handleWapPushDmNotiReceivedIntent: reset mIsPermanentStopped"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1937
    :cond_0
    return-void
.end method

.method private hasCall()Z
    .locals 5

    .line 1822
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1823
    .local v0, "ret":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasCall:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1824
    return v0
.end method

.method private isNeedForcibleSmsOverImsOn()Z
    .locals 8

    .line 1798
    const/4 v0, 0x0

    .line 1799
    .local v0, "isNeedSmsOverImsOn":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 1800
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteEnabled()Z

    move-result v1

    .line 1801
    .local v1, "isVolteEnabled":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string/jumbo v4, "sms_over_ip_network_indication"

    const-string v5, ""

    invoke-static {v2, v4, v5, v3}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1802
    .local v2, "isSMSIP":Z
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedForcibleSmsOverImsOn: isVolteEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSMSIP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_2

    .line 1804
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 1805
    .local v3, "isDataRoaming":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v4

    .line 1806
    .local v4, "isEpsOnlyReg":Z
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNeedForcibleSmsOverImsOn: mCscSupportLTEPreferred "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isDataRoaming "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isEpsOnlyReg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 1809
    const/4 v0, 0x1

    .line 1811
    .end local v3    # "isDataRoaming":Z
    .end local v4    # "isEpsOnlyReg":Z
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    .line 1812
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 1813
    const/4 v0, 0x1

    .line 1817
    .end local v1    # "isVolteEnabled":Z
    .end local v2    # "isSMSIP":Z
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedForcibleSmsOverImsOn: isNeedSmsOverImsOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    return v0
.end method

.method private isVolteEnabled()Z
    .locals 1

    .line 1380
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$handleAirplaneModeIntent$1(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "e"    # Landroid/os/Bundle;

    .line 1872
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private makeRegistrationFailedToast()V
    .locals 7

    .line 1788
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1792
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1793
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002f

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1544-0010"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1795
    :cond_2
    :goto_0
    return-void
.end method

.method private moveToNextPcscfAndInitialRegister()V
    .locals 6

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "moveToNextPcscfAndInitialRegister()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 755
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "nextPcscfIp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "moveToNextPcscfAndInitialRegister: null P-CSCF list!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 761
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsValid:Z

    .line 762
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsValid:Z

    if-eqz v1, :cond_2

    .line 763
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "moveToNextPcscfAndInitialRegister: forceInitialRegi"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 765
    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurImpu:I

    .line 766
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 767
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v3

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 769
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsValid:Z

    const-string/jumbo v5, "pcscf updated"

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToNextPcscfAndInitialRegister(): nextPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurPcscfIpIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPcscfIpList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method private needToHandleUnlimited404()Z
    .locals 2

    .line 2034
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onRegErrorforImsNotAvailable(Lcom/sec/ims/util/SipError;I)V
    .locals 10
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegErrorforImsNotAvailable:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v0

    .line 536
    .local v0, "mIsRefreshReg":Z
    const/4 v1, 0x0

    .line 539
    .local v1, "mNeedNotifyImsNotAvailable":Z
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 540
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 543
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getCallStatus()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 544
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 545
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 546
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 547
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 548
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 549
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 550
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 551
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRegErrorforImsNotAvailable(Postpone notifyImsNotAvailable during call)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 555
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->INTERVAL_TOO_BRIEF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 557
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 558
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 559
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 560
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 561
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 562
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 563
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 564
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    const-string v3, "onRegErrorforImsNotAvailable(423)"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 565
    return-void

    .line 568
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRegErrorforImsNotAvailable: 406 error. Ipsec not allow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    .line 571
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 572
    if-lez p2, :cond_2

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v7, p2

    mul-long/2addr v7, v5

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 574
    int-to-long v2, p2

    mul-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    goto :goto_0

    .line 576
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 578
    :goto_0
    return-void

    .line 581
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onRegErrorforImsNotAvailable: ETC error"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-nez v0, :cond_4

    .line 584
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 586
    :cond_4
    const/4 v2, 0x2

    if-nez v0, :cond_5

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    if-lt v7, v2, :cond_5

    .line 587
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 591
    :cond_5
    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    if-ne v7, v2, :cond_6

    .line 592
    const/4 v1, 0x1

    .line 595
    :cond_6
    if-eqz v1, :cond_7

    .line 596
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 597
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 598
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 599
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 600
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 601
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    const-string v3, "onRegErrorforImsNotAvailable(ETC)"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_2

    .line 603
    :cond_7
    if-nez v0, :cond_9

    .line 604
    if-lez p2, :cond_8

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v7, p2

    mul-long/2addr v7, v5

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 606
    int-to-long v2, p2

    mul-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    goto :goto_1

    .line 608
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 610
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRegErrorforImsNotAvailable: ETC error. Initial Reg retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 612
    :cond_9
    if-nez p2, :cond_a

    .line 613
    const/4 p2, 0x1

    .line 615
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 616
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRegErrorforImsNotAvailable: ETC error. Refresh Reg retry with same Call-ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    int-to-long v8, p2

    mul-long/2addr v8, v5

    sget-object v5, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v8, v5

    invoke-virtual {v2, v3, v7, v8, v9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V

    .line 620
    :goto_2
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 621
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 622
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 623
    return-void
.end method

.method private setOldVolteServiceStatus(Z)V
    .locals 3
    .param p1, "serviceStatus"    # Z

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOldVolteServiceStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mVolteServiceStatus:Z

    .line 1386
    return-void
.end method

.method private startDmPollingTimer(I)V
    .locals 6
    .param p1, "secs"    # I

    .line 1019
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPollingTimer()V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDmPollingTimer: Timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startDmConfigTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    .line 1024
    return-void
.end method

.method private stopPollingTimer()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1028
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPollingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    .line 1032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmPollingTimer:Landroid/os/Message;

    .line 1033
    return-void
.end method

.method private updateEutranValues()V
    .locals 5

    .line 2038
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    return-void

    .line 2042
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2043
    .local v0, "eutranValue":Landroid/content/ContentValues;
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "voice_domain_pref_eutran"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2044
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.ims.settings/global"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2045
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2044
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2046
    return-void
.end method


# virtual methods
.method protected applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;
    .locals 2
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1959
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1960
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 1962
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1963
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_0

    .line 1965
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_DM_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_0

    .line 1967
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1968
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_3G_PREFERRED_MODE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1970
    :cond_3
    :goto_0
    const-string v0, "mmtel"

    const-string v1, "isVolteEnabled disabled."

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    :cond_4
    return-object p1
.end method

.method public buildReattachNotiOemHookCmd()[B
    .locals 6

    .line 1059
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1060
    .local v1, "cmd":[B
    const/16 v2, 0x9

    .line 1061
    .local v2, "OEM_FUNCTION_ID_GPRS":B
    const/16 v3, 0xb

    .line 1063
    .local v3, "OEM_GPRS_IMS_REATTACH_NOTI":B
    const/4 v4, 0x0

    aput-byte v2, v1, v4

    .line 1064
    const/4 v5, 0x1

    aput-byte v3, v1, v5

    .line 1065
    const/4 v5, 0x2

    aput-byte v4, v1, v5

    .line 1066
    const/4 v4, 0x3

    aput-byte v0, v1, v4

    .line 1068
    return-object v1
.end method

.method public checkAcsPcscfListChange()V
    .locals 5

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v0, "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const-string v2, "address"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "lboPcscfAddress":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 995
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkAcsPcscfIpListChange : lboPcscfAddress is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 999
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAcsPcscfIpListChange : previous pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new pcscf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    return-void

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfList()V

    .line 1007
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRcsPcscfList:Ljava/util/List;

    .line 1008
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkAcsPcscfIpListChange : resetPcscfList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getTelephonyCallStatus(I)I

    move-result v0

    .line 1213
    .local v0, "callStatus":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isReadyToRegister : getTelephonyCallStatus is CALL_STATE_OFFHOOK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public checkProfileUpdateFromDM(Z)V
    .locals 13
    .param p1, "force"    # Z

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 797
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProfileUpdateFromDM: force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "isKTUnregSIM":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v3, ""

    const-string/jumbo v4, "ril.simtype"

    if-ne v1, v2, :cond_1

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    const/4 v0, 0x1

    .line 806
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkProfileUpdateFromDM : KT_unreg SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_1
    const/4 v1, 0x0

    .line 811
    .local v1, "isLGTUnregSIM":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_2

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "18"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    const/4 v1, 0x1

    .line 813
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkProfileUpdateFromDM : LGT_unreg SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 818
    .local v2, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegBaseTime:I

    .line 819
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMaxTime:I

    .line 821
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isNeedForcibleSmsOverImsOn()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 822
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/ims/settings/NvConfiguration;->setSmsIpNetworkIndi(Landroid/content/Context;ZI)V

    .line 823
    invoke-virtual {v2, v4}, Lcom/sec/ims/settings/ImsProfile;->setSupportSmsOverIms(Z)V

    .line 824
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 825
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkProfileUpdateFromDM: SmsOverIms is false. set it as true forcibly"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v3

    const-string v5, "checkProfileUpdateFromDM : SmsOverIms is false. set it as true forcibly"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 829
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-eqz v1, :cond_16

    .line 830
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->hasOmaDmFinished()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    if-eqz v1, :cond_5

    goto :goto_0

    .line 905
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 906
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v3, :cond_6

    .line 907
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Roaming, so use PCO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 909
    .local v3, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 910
    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 912
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 913
    .end local v3    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_7

    .line 914
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "not Roaming"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 918
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "oversea device and KOR SIM, so use PCO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .restart local v3    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 921
    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 923
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_7

    .line 831
    .end local v3    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "checkProfileUpdateFromDM()"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    .line 834
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mDmUpdatedFlag true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void

    .line 838
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    const-string v6, "3.0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v7, :cond_a

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v3

    if-nez v3, :cond_a

    .line 839
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[KT 5G] P-CSCF discovery PCO>DM>DEFAULT "

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .restart local v3    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 842
    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 843
    .end local v3    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_3

    .line 844
    :cond_a
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v3

    .line 845
    .local v3, "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 846
    .local v7, "bExistValidPcscf":Z
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 847
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 848
    .local v9, "pcscf":Ljava/lang/String;
    sget-object v10, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {v9}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 849
    invoke-static {v9}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_2

    .line 854
    .end local v9    # "pcscf":Ljava/lang/String;
    :cond_b
    goto :goto_1

    .line 850
    .restart local v9    # "pcscf":Ljava/lang/String;
    :cond_c
    :goto_2
    const/4 v7, 0x1

    .line 851
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DM pcscf is valid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v9    # "pcscf":Ljava/lang/String;
    :cond_d
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    if-eqz v7, :cond_f

    .line 857
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfPort()I

    move-result v5

    .line 858
    .local v5, "pcscfPort":I
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 859
    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 860
    if-lez v5, :cond_e

    .line 861
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 862
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DM updated lbo pcscf port found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v5    # "pcscfPort":I
    :cond_e
    goto :goto_3

    .line 865
    :cond_f
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v8, :cond_10

    .line 866
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "DM pcscf is empty. [KT 5G] P-CSCF discovery PCO>DM>DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 868
    :cond_10
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v8, "DM pcscf is empty"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v6, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 871
    invoke-virtual {v2, v6}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 876
    .end local v3    # "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "bExistValidPcscf":Z
    :goto_3
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 877
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SMS over IMS is enabled by OMADM"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v3

    .line 879
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 880
    .local v6, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v6}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v7

    .line 881
    .local v7, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 882
    .local v8, "found":Z
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string/jumbo v11, "smsip"

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 883
    .local v10, "service":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 884
    const/4 v8, 0x1

    .line 885
    goto :goto_6

    .line 887
    .end local v10    # "service":Ljava/lang/String;
    :cond_11
    goto :goto_5

    .line 888
    :cond_12
    :goto_6
    if-nez v8, :cond_13

    .line 889
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9, v7}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 892
    .end local v6    # "key":Ljava/lang/Integer;
    .end local v7    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "found":Z
    :cond_13
    goto :goto_4

    .line 895
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_14
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result v3

    if-lez v3, :cond_15

    .line 896
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DmPollingPeriod : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getDmPollingPeriod()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startDmPollingTimer(I)V

    .line 900
    :cond_15
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkDMConfigChange(Lcom/sec/ims/settings/ImsProfile;)V

    .line 902
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 903
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    .line 927
    :cond_16
    :goto_7
    return-void
.end method

.method protected checkRcsEvent(I)Z
    .locals 10
    .param p1, "rat"    # I

    .line 1178
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1185
    .local v0, "isRcsUserSettingEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    .line 1186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1185
    const-string/jumbo v5, "version"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1187
    .local v3, "configversion":I
    if-gtz v3, :cond_1

    if-nez v0, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isReadyToRegister: User don\'t try RCS service yet"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return v2

    .line 1192
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string v6, "defaultmsgappinuse"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 1193
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isReadyToRegister: Default MSG app isn\'t used for RCS"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v2

    .line 1196
    :cond_2
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    .line 1197
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v4, :cond_3

    .line 1198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1199
    .local v5, "imsi":Ljava/lang/String;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const-string v8, "msisdn_from_pau"

    const-string v9, ""

    invoke-static {v6, v7, v8, v5, v9}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1201
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isReadyToRegister: MSISDN is null, try to RCS ACS after registered VoLTE"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const v1, 0x100a3000

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "PENDING RCS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1203
    return v2

    .line 1207
    .end local v0    # "isRcsUserSettingEnabled":Z
    .end local v3    # "configversion":I
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v5    # "imsi":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method protected checkRegiStatus()Z
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v0, v0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1166
    return v1

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_1

    .line 1168
    return v1

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isReadyToRegister: mPDNdisconnectTimeout is not null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return v1

    .line 1173
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V
    .locals 8
    .param p1, "changedReason"    # Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    .line 1456
    const/4 v0, 0x0

    .line 1457
    .local v0, "needReregi":Z
    const/4 v1, 0x1

    .line 1459
    .local v1, "isVolteOn":Z
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVolteServiceStatus()Z

    move-result v2

    .line 1460
    .local v2, "isServiceStatusOn":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteSettingEnabled()Z

    move-result v3

    .line 1461
    .local v3, "isVolteSettingOn":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isLTEDataModeEnabled()Z

    move-result v4

    .line 1463
    .local v4, "isLTEDataModeOn":Z
    sget-object v5, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    if-ne p1, v5, :cond_0

    .line 1464
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 1465
    const/4 v0, 0x1

    .line 1466
    move v1, v3

    goto :goto_0

    .line 1468
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    if-ne p1, v5, :cond_1

    .line 1469
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1470
    const/4 v0, 0x1

    .line 1471
    move v1, v4

    .line 1475
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkVoLTEStatusChanged : needReregi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    if-eqz v0, :cond_2

    .line 1478
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkVoLTEStatusChanged: force update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1481
    :cond_2
    return-void
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 13
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1073
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1074
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1075
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string v4, "ims"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1076
    .local v2, "isImsEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 1078
    .local v5, "isVoLteEnabled":Z
    :goto_2
    if-nez v2, :cond_3

    .line 1079
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1081
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1084
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1085
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    .line 1086
    .local v6, "networkEvent":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget-boolean v7, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v7, :cond_10

    .line 1087
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v9, "NW is not LTE or IMSVoPS is off"

    const/16 v10, 0x14

    const/16 v11, 0xd

    if-ne v7, v8, :cond_7

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1088
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isVolteRoamingSettingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1089
    if-eq p2, v11, :cond_4

    if-ne p2, v10, :cond_5

    :cond_4
    iget-object v7, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v8, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v7, v8, :cond_10

    .line 1091
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1093
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1096
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1097
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1099
    :cond_7
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_8

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_c

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1100
    :cond_9
    if-eq p2, v11, :cond_a

    if-ne p2, v10, :cond_b

    :cond_a
    iget-object v7, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v8, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v7, v8, :cond_10

    .line 1102
    :cond_b
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1104
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1106
    :cond_c
    iget-boolean v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1107
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filterService: mCscSupportOmdVolteRoaming = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-eq p2, v11, :cond_d

    if-ne p2, v10, :cond_e

    :cond_d
    iget-object v7, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v8, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v7, v8, :cond_10

    .line 1110
    :cond_e
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1112
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1115
    :cond_f
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Mno and OmcCode are different. Can\'t use volte roaming."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_ON_NET_CUSTOM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1117
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    return-object v3

    .line 1121
    :cond_10
    if-eqz v5, :cond_11

    .line 1122
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1123
    const-string v7, "mmtel"

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1124
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1127
    :cond_11
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->applyMmtelUserSettings(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 1129
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    iget v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v7, v8, v9}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    .line 1130
    .local v7, "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    iget-boolean v8, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v8, v9, :cond_12

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v8

    if-eqz v8, :cond_12

    move v3, v4

    .line 1131
    .local v3, "isKTInRoaming":Z
    :cond_12
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filterService: isKTInRoaming: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isSupportSmsOverIms()Z

    move-result v4

    if-nez v4, :cond_13

    if-nez v3, :cond_13

    .line 1133
    const-string/jumbo v4, "smsip"

    const-string v8, "isSupportSmsOverIms disabled"

    invoke-virtual {p0, v0, v4, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .end local v3    # "isKTInRoaming":Z
    .end local v6    # "networkEvent":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .end local v7    # "imsDmProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_13
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1138
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1139
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1142
    :cond_14
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "filterService: skip checking Chatbot agreement. enable chatbot if RCS agreed by user."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_15
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1145
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1148
    :cond_16
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterService : filteredServices = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-object v1
.end method

.method protected getVoiceTechType()I
    .locals 4

    .line 1340
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsShipBuild:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportLTEPreferred:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result v0

    return v0

    .line 1341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVoiceTechType : LGU device or KT LTE Preferred ship device have to enable VOLTE always, regardless of DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 1343
    .local v0, "voicetype":I
    if-eqz v0, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getVoiceTechType : voicecall_type is not 0, correct it"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 1347
    :cond_2
    return v2
.end method

.method protected getWaitTime()I
    .locals 5

    .line 730
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegBaseTime:I

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    .line 732
    .local v0, "waitTime":I
    if-gez v0, :cond_0

    .line 733
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMaxTime:I

    return v1

    .line 735
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMaxTime:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected handleForbiddenError(I)V
    .locals 4
    .param p1, "retryAfter"    # I

    .line 286
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 287
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string v2, "onRegistrationError: Two consecutive 403 errors"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 290
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 291
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 292
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 293
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 294
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 296
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 297
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    .line 298
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->makeRegistrationFailedToast()V

    goto :goto_1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistrationError: 403 error. Need OmaDM trial only for KOR device in domestic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendRequestDmConfig()V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 308
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isNeedOmadmConfig()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 315
    :cond_4
    :goto_1
    return-void
.end method

.method protected handleNormalResponse(Lcom/sec/ims/util/SipError;I)V
    .locals 7
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 273
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 274
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 275
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 276
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 278
    const/4 p2, 0x1

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 280
    int-to-long v1, p2

    mul-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    .line 281
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 282
    return-void
.end method

.method public hasNetworkFailure()Z
    .locals 1

    .line 1410
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    return v0
.end method

.method public isIPSecAllow()Z
    .locals 3

    .line 1356
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isIPSecAllow : oversea device and SKT sim. do not use IPSec"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return v1

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_3

    .line 1361
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1364
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    return v0

    .line 1362
    :cond_2
    :goto_0
    return v1

    .line 1367
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    return v0
.end method

.method protected isLTEDataModeEnabled()Z
    .locals 5

    .line 1446
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "LGU uses only LTE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    return v2

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1451
    .local v0, "isLTEDataMode":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTEDataMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMobilePreferredForRcs()Z
    .locals 3

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigApnForHideDataIconRCS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1418
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v1, :cond_0

    .line 1419
    const/4 v0, 0x1

    .line 1421
    :cond_0
    return v0
.end method

.method public isNeedDelayedDeregister()Z
    .locals 3

    .line 1630
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedDelayedDeregister :  mNeedDelayedDeregister = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1633
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$-5sULNY24W1yYQWrRKJpdAs_3To;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$-5sULNY24W1yYQWrRKJpdAs_3To;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    .line 1634
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 1635
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1632
    :cond_1
    return v1
.end method

.method public isOmadmConfigAvailable()Z
    .locals 5

    .line 1528
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1529
    return v1

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v3, ""

    const-string/jumbo v4, "ril.simtype"

    if-ne v0, v2, :cond_1

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isOmadmConfigAvailable : KT_unreg SIM. do not trigger DM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return v1

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    invoke-static {v4, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isOmadmConfigAvailable : LGT_unreg SIM. do not trigger DM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return v1

    .line 1545
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1546
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isOmadmConfigAvailable : oversea device and KOR sim. do not trigger DM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v1

    .line 1551
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1552
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "com.ims.dm"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    nop

    .line 1558
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x1

    return v0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isOmadmConfigAvailable : DM Package not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return v1
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 1219
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkOtaStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkRcsEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1219
    :goto_1
    return v0
.end method

.method public isThrottled()Z
    .locals 1

    .line 790
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isThrottled()Z

    move-result v0

    return v0
.end method

.method protected isVolteRoamingSettingEnabled()Z
    .locals 5

    .line 1503
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 1504
    .local v0, "isVolteRoaming":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVolteRoaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method protected isVolteSettingEnabled()Z
    .locals 1

    .line 1434
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getVoiceTechType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$isNeedDelayedDeregister$0$RegistrationGovernorKor(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "im"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1634
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->hasIncomingSessionForA2P(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected moveToNextPcscfIp()Ljava/lang/String;
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToNextPcscfIp: mCurPcscfIpIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPcscfIpList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 784
    .local v0, "offset":I
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 785
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 779
    .end local v0    # "offset":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "moveToNextPcscfIp: empty P-CSCF list."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v0, ""

    return-object v0
.end method

.method public needImsNotAvailable()Z
    .locals 8

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscSupportOmdVolteRoaming:Z

    if-eqz v0, :cond_1

    .line 1398
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1399
    .local v0, "isLGUInVoLTERoaming":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSupportImsNotAvailable()Z

    move-result v1

    .line 1400
    .local v1, "isImsNotAvailableSupported":Z
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1401
    .local v4, "isVoLTEOnly":Z
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLGUInVoLTERoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isImsNotAvailableSupported : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isVoLTEOnly : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method public notifyReattachToRil()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyReattachToRil"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->buildReattachNotiOemHookCmd()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->sendRawRequestToTelephony(Landroid/content/Context;[B)Z

    .line 1016
    return-void
.end method

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 661
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStatus: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 669
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 670
    return-void
.end method

.method public onLteDataNetworkModeSettingChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLteDataNetworkModeSettingChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V

    .line 1443
    :cond_0
    return-void
.end method

.method public onPdnConnected()V
    .locals 3

    .line 1977
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v0

    .line 1978
    .local v0, "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    if-nez v0, :cond_0

    .line 1979
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPdnConnected: LinkProperties are not exist! return.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    return-void

    .line 1982
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 1983
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspended()V

    .line 1984
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspendedBySnapshot()V

    .line 1986
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1987
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 1989
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1990
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPdnConnected: local IP is changed. dm&initial regi. are needed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1992
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mLocalAddress:Ljava/util/List;

    .line 1997
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1998
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfPreference()V

    .line 1999
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 2000
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->releaseThrottle(I)V

    .line 2003
    :cond_2
    return-void
.end method

.method public onRegistrationDone()V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistrationDone: clear mConsecutiveForbiddenCounter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 629
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 630
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 631
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 632
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 633
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 634
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 635
    const-string v0, "Registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsTimer(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 11
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " retryAfter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurPcscfIpIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mTask.mIsRefreshReg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 321
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .line 326
    .local v0, "mIsTimeout":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v1

    .line 327
    .local v1, "mIsRefreshReg":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 329
    if-gez p2, :cond_0

    .line 330
    const/4 p2, 0x0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p2, :cond_2

    .line 333
    :cond_1
    const-string v2, "RegistrationError"

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsTimer(Ljava/lang/String;)V

    .line 335
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 337
    return-void

    .line 339
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRegistrationError: Notify terminated expired."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 342
    return-void

    .line 344
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 345
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 346
    iput-wide v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 347
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 348
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 349
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 350
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 351
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 352
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 353
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    const-string v3, "onRegistrationError: Notify terminated rejected."

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 354
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    .line 355
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 356
    return-void

    .line 358
    :cond_5
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorKor;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onRegistrationError: Permanently prohibited."

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 361
    iput-wide v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 362
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 363
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 364
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 365
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 366
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 367
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 368
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 369
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v2

    const-string v3, "onRegistrationError: Aka challenge timeout"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 370
    iput-boolean v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetPcscfList()V

    .line 372
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "Aka challenge timeout"

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 374
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 375
    return-void

    .line 379
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->onRegErrorforImsNotAvailable(Lcom/sec/ims/util/SipError;I)V

    .line 381
    return-void

    .line 384
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 385
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    if-ne v2, v5, :cond_9

    .line 386
    const/4 p2, 0x1

    .line 387
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v5, :cond_8

    .line 388
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_8

    .line 390
    const/4 v0, 0x1

    .line 391
    int-to-long v7, p2

    mul-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    .line 394
    :cond_8
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 395
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 396
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 397
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 398
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 399
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 400
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: 305 error. do initial regi. at the 1st P-CSCF after disconnecting/connecting IMS PDN"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfAndInitialRegister()V

    .line 403
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: 305 error. do initial regi. at the next P-CSCF"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    if-nez v0, :cond_a

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 408
    int-to-long v5, p2

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    .line 410
    :cond_a
    return-void

    .line 412
    :cond_b
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 413
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleForbiddenError(I)V

    .line 414
    return-void

    .line 416
    :cond_c
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: 406 error. Ipsec not allow"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    .line 420
    if-lez p2, :cond_d

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 422
    int-to-long v5, p2

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    goto :goto_1

    .line 424
    :cond_d
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 426
    :goto_1
    return-void

    .line 428
    :cond_e
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-gtz p2, :cond_12

    if-nez v1, :cond_12

    .line 429
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onRegistrationError: 503 error with no retry-after. do initial regi."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 p2, 0x1

    .line 431
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    if-ne v2, v5, :cond_10

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v5, :cond_f

    .line 433
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_f

    .line 435
    int-to-long v7, p2

    mul-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    .line 436
    const/4 v0, 0x1

    .line 439
    :cond_f
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 440
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 441
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 442
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 443
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 444
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 446
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: 503 error with no retry-after. do initial regi. at the 1st P-CSCF after disconnecting/connecting IMS PDN"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 449
    :cond_10
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfAndInitialRegister()V

    .line 450
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onRegistrationError: 503 error with no retry-after. do initial regi. at the next P-CSCF"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_2
    if-nez v0, :cond_11

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 454
    int-to-long v5, p2

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    .line 456
    :cond_11
    return-void

    .line 460
    :cond_12
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onRegistrationError: etc mIsRefreshReg"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz v1, :cond_16

    .line 462
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v5, :cond_13

    .line 464
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_13

    .line 466
    const/4 v0, 0x1

    .line 467
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->notifyReattachToRil()V

    .line 468
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v5, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 471
    :cond_13
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 472
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 473
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 474
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 475
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 476
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 477
    if-lez p2, :cond_14

    .line 478
    if-nez v0, :cond_15

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 480
    int-to-long v5, p2

    mul-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    goto :goto_3

    .line 483
    :cond_14
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 485
    :cond_15
    :goto_3
    return-void

    .line 487
    :cond_16
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 488
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    const/4 v7, 0x2

    if-lt v2, v7, :cond_17

    .line 489
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 493
    :cond_17
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    iget v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ne v2, v7, :cond_1c

    .line 494
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    .line 495
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needToHandleUnlimited404()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 496
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getActualWaitTimeForUnlimited404()I

    move-result p2

    .line 497
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "it would be infinite 404 response. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_18
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 500
    if-lez p2, :cond_19

    .line 501
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onRegistrationError: retryAfter from SIP header"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 503
    :cond_19
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getActualWaitTime()I

    move-result p2

    .line 505
    :goto_4
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 506
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v7, :cond_1b

    .line 507
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 509
    const/4 v0, 0x1

    .line 510
    int-to-long v7, p2

    mul-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startPDNdisconnectTimer(J)V

    goto :goto_5

    .line 513
    :cond_1a
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-interface {v2, v7}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 517
    :cond_1b
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRegistrationError: retry at the 1st P-CSCF in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " seconds."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1c
    if-lez p2, :cond_1d

    .line 521
    if-nez v0, :cond_1e

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p2

    mul-long/2addr v9, v3

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 523
    int-to-long v7, p2

    mul-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startRetryTimer(J)V

    goto :goto_6

    .line 526
    :cond_1d
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 528
    :cond_1e
    :goto_6
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 529
    iput-boolean v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 530
    iput v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 531
    return-void
.end method

.method public onRoamingDataChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1510
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRoamingDataChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRoamingDataChanged: remove dependency for dataRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    return-void
.end method

.method public onRoamingLteChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1519
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRoamingLteChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRoamingLteChanged: remove dependency for lteRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_0
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSipError: service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 678
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSipError: 709 error. Initial Reg at the next P-CSCF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    goto/16 :goto_0

    .line 682
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2b

    if-eqz v0, :cond_2

    .line 683
    const-string/jumbo v0, "smsip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    .line 684
    return-object p2

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "403 Forbidden"

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 690
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v3, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 691
    const-string v3, "mmtel"

    invoke-virtual {v0, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mmtel-video"

    invoke-virtual {v0, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSipError: 406 error. Ipsec not allow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    .line 694
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 695
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->getDeregTimeout(I)I

    move-result v2

    .line 696
    .local v2, "timeout":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try regsiter after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    .line 699
    .end local v2    # "timeout":I
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 700
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string/jumbo v4, "user triggered"

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_5
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "initial_registration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 702
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 703
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Initial Registration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 708
    .end local v0    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_6
    :goto_0
    return-object p2

    .line 705
    .restart local v0    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    return-object v1
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeError: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-nez p1, :cond_0

    .line 642
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1f8

    const-string v2, "Subscribe 504 with init-regi"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscribeError: SUBSCRIBE 504 with init regi."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    const-string v3, "SUBSCRIBE 504 with init regi."

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mFailureCounter:I

    .line 649
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegiAt:J

    .line 650
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 651
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 652
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 653
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 654
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 657
    :cond_0
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 5
    .param p1, "callState"    # I

    .line 1709
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->setCallStatus(I)V

    .line 1710
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTelephonyCallStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTelephonyCallStatusChanged(I)V

    .line 1715
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1716
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->getCallStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 1717
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onTelephonyCallStatusChanged : do pending de-reg and init reg"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x1d

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1721
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v4, v2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1724
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    if-eqz v0, :cond_2

    .line 1725
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string/jumbo v3, "onTelephonyCallStatusChanged : send pending notifyImsNotAvailable"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1726
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    .line 1727
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1728
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 1731
    :cond_2
    return-void
.end method

.method public onTimsTimerExpired()V
    .locals 7

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTimsTimerExpired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1309
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1310
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    .line 1312
    .local v0, "imsNotAvailable":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    return-void

    .line 1315
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    const/16 v2, 0xd

    const-string v3, "TimsExpired"

    if-nez v1, :cond_3

    .line 1316
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTimsTimerExpired. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1317
    if-eqz v0, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",Count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1316
    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1318
    if-eqz v0, :cond_2

    .line 1319
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onTimsTimerExpired()V

    goto :goto_1

    .line 1321
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 1322
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    .line 1324
    :goto_1
    return-void

    .line 1327
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1328
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTimsTimerExpired for RCS. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1330
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 1331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 1332
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->deregisterIfConnecting(I)V

    .line 1333
    return-void

    .line 1336
    :cond_4
    return-void
.end method

.method public onVolteRoamingSettingChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1485
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1486
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolteRoamingSettingChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    if-eqz p1, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_1

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDisconnectPdnByHdVoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1494
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x0

    const-string/jumbo v3, "volte roaming disabled"

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1496
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1497
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    .line 1500
    :cond_2
    :goto_1
    return-void
.end method

.method public onVolteSettingChanged()V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVolteSettingChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkVoLTEStatusChanged(Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;)V

    .line 1431
    :cond_0
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 3
    .param p1, "releaseCase"    # I

    .line 1226
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    goto :goto_0

    .line 1233
    :cond_2
    if-ne p1, v1, :cond_4

    .line 1236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetRetry()V

    .line 1237
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetAllRetryFlow()V

    goto :goto_1

    .line 1230
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    .line 1231
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 1232
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurImpu:I

    .line 1240
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsPermanentStopped:Z

    if-nez v0, :cond_5

    .line 1241
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseThrottle: case by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1243
    :cond_5
    return-void
.end method

.method protected removeCurrentPcscfAndInitialRegister(Z)V
    .locals 4
    .param p1, "forceInitialRegi"    # Z

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeCurrentPcscfAndInitialRegister()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMoveToNextPcscfAfterTimerB:Z

    .line 742
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->resetIPSecAllow()V

    .line 743
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->moveToNextPcscfIp()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "nextPcscfIp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->updatePcscfIpList(Ljava/util/List;Z)V

    .line 747
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCurrentPcscfAndInitialRegister(): nextPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurPcscfIpIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPcscfIpList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public resetAllRetryFlow()V
    .locals 1

    .line 1770
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    .line 1771
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    .line 1772
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 1773
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 1774
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopRetryTimer()V

    .line 1775
    return-void
.end method

.method public resetIPSecAllow()V
    .locals 1

    .line 1735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIPsecAllow:Z

    .line 1736
    return-void
.end method

.method public resetPcscfPreference()V
    .locals 3

    .line 1740
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1741
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1747
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetPcscfPreference : getPcscfPreference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_1
    return-void
.end method

.method public resetPdnFailureInfo()V
    .locals 3

    .line 2023
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->resetPdnFailureInfo()V

    .line 2024
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 2026
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    if-nez v1, :cond_0

    .line 2027
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetPdnFailureInfo: rcs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 2031
    :cond_0
    return-void
.end method

.method public retryDNSQuery()V
    .locals 8

    .line 1563
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 1564
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mCscConfigVerUiccMobilitySpec:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "retryDNSQuery : mDnsQueryCount = "

    const-string/jumbo v2, "volte.imskt.com"

    const-wide/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 1565
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    if-ge v0, v6, :cond_3

    .line 1567
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryDNSQuery : PCO => omadm "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    if-nez v0, :cond_2

    .line 1569
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1570
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryDNSQuery : getPcscfPreference = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryDNSQuery : PCO => omadm mDmUpdatedFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->checkProfileUpdateFromDM(Z)V

    goto :goto_0

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLboPcscfAddressList()Ljava/util/List;

    move-result-object v0

    .line 1576
    .local v0, "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string/jumbo v3, "retryDNSQuery : PCO => omadm no pcscf "

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v1, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1581
    .end local v1    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1582
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1586
    .end local v0    # "lboPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1587
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 1588
    return-void

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_1

    .line 1592
    :cond_3
    if-ne v0, v6, :cond_4

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1597
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1598
    .end local v0    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1605
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    goto :goto_3

    .line 1599
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryDNSQuery : final "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1602
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 1603
    return-void

    .line 1607
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    if-ge v0, v6, :cond_6

    .line 1609
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_2

    .line 1610
    :cond_6
    if-ne v0, v6, :cond_7

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    .restart local v0    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 1615
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1616
    .end local v0    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1623
    :goto_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    goto :goto_3

    .line 1618
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 1619
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 1620
    iput v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDnsQueryCount:I

    .line 1621
    return-void

    .line 1626
    :cond_8
    :goto_3
    return-void
.end method

.method public setNeedDelayedDeregister(Z)V
    .locals 3
    .param p1, "val"    # Z

    .line 1640
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedDelayedDeregister :  val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNeedDelayedDeregister:Z

    .line 1642
    return-void
.end method

.method protected startPDNdisconnectTimer(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 1752
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopPDNdisconnectTimer()V

    .line 1754
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPDNdisconnectTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startDisconnectPdnTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    .line 1756
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimsTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1248
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1249
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1254
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    return-void

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    if-ge v0, v1, :cond_3

    .line 1261
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 1265
    :cond_3
    :goto_0
    return-void

    .line 1268
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1269
    const v0, 0x2bf20

    .line 1270
    .local v0, "mTimsTimer":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v3

    .line 1271
    .local v3, "preferredPdnType":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    .line 1272
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    .line 1273
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 1274
    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1275
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v4, :cond_5

    if-ne v3, v2, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1277
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1278
    const/16 v0, 0x7530

    .line 1279
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v4, v0

    invoke-virtual {p0, v1, v4, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 1280
    return-void

    .line 1283
    :cond_5
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    if-ge v4, v1, :cond_6

    .line 1284
    add-int/2addr v4, v2

    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRequestPdnTimeoutCount:I

    .line 1285
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v4, v0

    invoke-virtual {p0, v1, v4, v5, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 1287
    :cond_6
    return-void

    .line 1290
    .end local v0    # "mTimsTimer":I
    .end local v3    # "preferredPdnType":I
    :cond_7
    return-void
.end method

.method protected stopPDNdisconnectTimer()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1760
    return-void

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPDNdisconnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->stopTimer(Landroid/os/Message;)V

    .line 1764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPDNdisconnectTimeout:Landroid/os/Message;

    .line 1765
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1294
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTimsTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Pdn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1295
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1296
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasNetworkFailure:Z

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationGovernorKor [mRegBaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mRegBaseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDmUpdatedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mDmUpdatedFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConsecutiveForbiddenCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mConsecutiveForbiddenCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingInitRegistrationByDMConfigChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingInitRegistrationByDMConfigChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAkaChallengeTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsAkaChallengeTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasPendingNotifyImsNotAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mHasPendingNotifyImsNotAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1373
    return-object v0
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    .line 1779
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Un-register Intent receiver(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIntentReceiverKor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unRegisterIntentReceiver: Receiver not registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 931
    .local p1, "pcscfIpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePcscfIpList: null P-CSCF list!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void

    .line 936
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v0

    .line 938
    .local v0, "linkProp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 939
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updatePcscfIpList: null LinkProperties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsValid:Z

    .line 941
    return-void

    .line 944
    :cond_1
    const/4 v2, 0x0

    .line 945
    .local v2, "hasipv4address":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 946
    .local v4, "pcscf":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 947
    const/4 v2, 0x1

    .line 948
    goto :goto_1

    .line 950
    .end local v4    # "pcscf":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 952
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasGlobalIPv6Address()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv6DefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v4

    .line 954
    .local v3, "localIpType":I
    :goto_3
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    .line 955
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "updatePcscfIpList: value ipv4 addr above ipv6 addr for RCS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v4

    :goto_4
    move v3, v6

    .line 959
    :cond_7
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePcscfIpList: localIpType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 961
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getIpVer()I

    move-result v7

    if-ne v7, v5, :cond_8

    .line 962
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 963
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 965
    :cond_8
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getIpVer()I

    move-result v7

    if-ne v7, v4, :cond_9

    .line 966
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 967
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 969
    :cond_9
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getIpVer()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    .line 970
    if-ne v3, v5, :cond_a

    .line 971
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 972
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 975
    :cond_a
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 976
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 982
    .end local v6    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePcscfIpList mPcscfIpList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mPcscfIpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    .line 985
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mNumOfPcscfIp:I

    if-lez v4, :cond_d

    move v1, v5

    :cond_d
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mIsValid:Z

    .line 986
    return-void
.end method

.method protected updateVolteRoamingSetting()V
    .locals 4

    .line 260
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 262
    .local v0, "roamingHDVoiceOn":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    :cond_0
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    if-ne v0, v1, :cond_1

    .line 263
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RegistrationManagerBase: roamingHDVoiceOn has no value. set default value as 1 in the first place"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegistrationManagerBase: roamingHDVoiceOn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method
