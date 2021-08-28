.class public Lcom/sec/internal/ims/core/iil/IilManager;
.super Landroid/os/Handler;
.source "IilManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;
    }
.end annotation


# static fields
.field protected static final EVENT_IIL_CONNECTED:I = 0x65

.field private static final EVENT_IMS_READY:I = 0xc

.field private static final EVENT_IMS_SETTING_CHANGED:I = 0x5

.field private static final EVENT_IMS_SETTING_DELAYED:I = 0xb

.field private static final EVENT_IMS_SETTING_REFRESH:I = 0x6

.field private static final EVENT_MODE_CHANGE_DONE:I = 0xa

.field protected static final EVENT_NEW_IPC:I = 0x64

.field private static final EVENT_REGISTRATION_DONE:I = 0x1

.field private static final EVENT_REGISTRATION_E911_DONE:I = 0x3

.field private static final EVENT_REGISTRATION_E911_FAILED:I = 0x4

.field private static final EVENT_REGISTRATION_FAILED:I = 0x2

.field private static final EVENT_REGISTRATION_RETRY_OVER:I = 0x7

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x9

.field private static final EVENT_UPDATE_SSAC_INFO:I = 0xe

.field static final FEATURE_TAG_CS:I = 0x1

.field static final FEATURE_TAG_MMTEL:I = 0x10

.field static final FEATURE_TAG_SMSIP:I = 0x2

.field static final FEATURE_TAG_VIDEO:I = 0x8

.field static final FEATURE_TAG_VOLTE:I = 0x4

.field private static final ISIM_LOADED_BOOTING:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IilManager"

.field static final NET_TYPE_BLUETOOTH:I = 0x3

.field static final NET_TYPE_ETHERNET:I = 0x4

.field static final NET_TYPE_MAX:I = 0x5

.field static final NET_TYPE_MOBILE:I = 0x0

.field static final NET_TYPE_WIFI:I = 0x1

.field static final NET_TYPE_WIMAX:I = 0x2

.field static final PREF_REGISTRATION_DONE:I = 0x3

.field static final PREF_SETTING_CHANGED:I = 0x2

.field static final PREF_SETTING_REFRESH:I = 0x1

.field private static final REQUEST_NETWORK_MODE_CHANGE:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field mEcmp:I

.field mEcmpByNetType:[I

.field mEpdgMode:I

.field mEpdgModeByNetType:[I

.field mFeatureMask:I

.field mFeatureMaskByNetType:[I

.field mFeatureTag:I

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

.field mLimitedMode:I

.field mLimitedModeByNetType:[I

.field private mNetworkClass:I

.field private mNetworkType:I

.field mPdnType:I

.field private mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

.field private mReg:Lcom/sec/ims/ImsRegistration;

.field mSlotId:I

.field mSrvccVersion:I

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    .line 91
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 102
    const/4 v2, 0x5

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    .line 103
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    .line 104
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    .line 105
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    .line 108
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 338
    new-instance v3, Lcom/sec/internal/ims/core/iil/IilManager$2;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/iil/IilManager$2;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;)V

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 892
    iput v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    .line 893
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    .line 111
    const-string v1, "IilManager"

    invoke-static {v1, p2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 116
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 117
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 118
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 119
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 120
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 121
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    .line 122
    iput p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 123
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 126
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aput v0, v3, v1

    .line 127
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    aput v0, v3, v1

    .line 128
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    aput v0, v3, v1

    .line 129
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    aput v0, v3, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 133
    const/16 v2, 0x64

    invoke-virtual {v1, v2, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->setRegistrant(ILandroid/os/Handler;)Z

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->setRegistrantForIilConnected(ILandroid/os/Handler;)Z

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->initDipatcher()V

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/sec/internal/ims/core/iil/IilManager$1;

    invoke-direct {v4, p0, p0}, Lcom/sec/internal/ims/core/iil/IilManager$1;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    return-void
.end method

.method private UpdateImsPreference()V
    .locals 19

    .line 446
    move-object/from16 v1, p0

    const-string v2, "mmtel"

    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;-><init>()V

    iput-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    .line 451
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/core/iil/IilManager;->getSmsFormat(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "smsFormat":Ljava/lang/String;
    iget v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateImsPreference: SmsFormat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IilManager"

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_2

    .line 455
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "3GPP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 458
    iget-object v7, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V

    goto :goto_0

    .line 459
    :cond_1
    const-string v7, "3GPP2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 460
    iget-object v7, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V

    .line 467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    iget v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 468
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/core/iil/IilManager;->getSmsOverIp(Landroid/content/Context;I)Z

    move-result v0

    const/4 v8, 0x3

    if-nez v0, :cond_4

    new-array v0, v8, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v9, v0, v4

    sget-object v9, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v9, v0, v6

    const/4 v9, 0x2

    sget-object v10, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v10, v0, v9

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v6

    :goto_2
    move v9, v0

    .line 469
    .local v9, "smsOverIms":Z
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    if-eqz v9, :cond_5

    move v10, v6

    goto :goto_3

    :cond_5
    move v10, v4

    :goto_3
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsOverIms(B)V

    .line 472
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v10, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v11, "sms_write_uicc"

    const-string v12, "0"

    invoke-interface {v0, v10, v11, v12}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 474
    .local v10, "smsWriteUicc":Z
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsWriteUicc(B)V

    .line 478
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v11, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v12, "voice_domain_pref_eutran"

    invoke-interface {v0, v11, v12, v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v8

    .line 479
    .local v8, "voiceDomainPrefEutran":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v11, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v12, "voice_domain_pref_utran"

    invoke-interface {v0, v11, v12, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v11

    .line 480
    .local v11, "voiceDomainPrefUtran":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v12, v8

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEutranDomain(B)V

    .line 481
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v12, v11

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setUtranDomain(B)V

    .line 484
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v12, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v13, "ss_domain_setting"

    const-string v14, "PS"

    invoke-interface {v0, v12, v13, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 485
    .local v12, "ssDomain":Ljava/lang/String;
    invoke-direct {v1, v12}, Lcom/sec/internal/ims/core/iil/IilManager;->convertSsDomainToByte(Ljava/lang/String;)B

    move-result v13

    .line 486
    .local v13, "byteSsDomain":B
    const/4 v0, -0x1

    if-eq v13, v0, :cond_6

    .line 487
    iget-object v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v15, v13}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSsDomain(B)V

    .line 491
    :cond_6
    iget-object v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v4, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v6, "ussd_domain_setting"

    const-string v0, "CS"

    invoke-interface {v15, v4, v6, v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "ussdDomain":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->convertUssdDomainToByte(Ljava/lang/String;)B

    move-result v6

    .line 493
    .local v6, "byteUssdDomain":B
    const/4 v15, -0x1

    if-eq v6, v15, :cond_7

    .line 494
    iget-object v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v15, v6}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setUssdDomain(B)V

    .line 498
    :cond_7
    iget-object v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v16, v3

    .end local v3    # "smsFormat":Ljava/lang/String;
    .local v16, "smsFormat":Ljava/lang/String;
    iget v3, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    move-object/from16 v17, v4

    .end local v4    # "ussdDomain":Ljava/lang/String;
    .local v17, "ussdDomain":Ljava/lang/String;
    const-string v4, "emergency_domain_setting"

    invoke-interface {v15, v3, v4, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "emergCallDomain":Ljava/lang/String;
    const-string v4, "IMS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 501
    :cond_8
    const-string v4, "CSFB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 504
    :cond_9
    iget v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid emergencyDomainPref="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 502
    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEccPreference(B)V

    goto :goto_6

    .line 500
    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEccPreference(B)V

    .line 508
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v4, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v14, "ss_csfb_with_imserror"

    const/4 v15, 0x1

    invoke-interface {v0, v4, v14, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v4

    .line 509
    .local v4, "ssCsfbOnImsError":Z
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSsCsfb(B)V

    .line 512
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v14, 0xd

    iget v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v0, v2, v14, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    .line 513
    .local v0, "supportVolte":Z
    iget-object v14, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v15, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v3

    const/16 v3, 0x12

    .end local v3    # "emergCallDomain":Ljava/lang/String;
    .local v18, "emergCallDomain":Ljava/lang/String;
    :try_start_2
    invoke-interface {v14, v2, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    .line 519
    .local v2, "supportVowifi":Z
    iget-object v3, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->convertSupportTypeToByte(ZZ)B

    move-result v14

    invoke-virtual {v3, v14}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setImsSupportType(B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    .end local v0    # "supportVolte":Z
    .end local v2    # "supportVowifi":Z
    goto :goto_8

    .line 520
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v18    # "emergCallDomain":Ljava/lang/String;
    .restart local v3    # "emergCallDomain":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    .line 521
    .end local v3    # "emergCallDomain":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "emergCallDomain":Ljava/lang/String;
    :goto_7
    iget v2, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateImsPreference: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 525
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    iget-object v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v2, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const/16 v3, 0xa

    const-string/jumbo v5, "srvcc_version"

    invoke-interface {v0, v2, v5, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    .line 526
    iget-object v2, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSrvccVersion(B)V

    .line 529
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->getRoamingSupportValueforVolte(Z)Z

    move-result v0

    .line 530
    .local v0, "supportVolteRoaming":Z
    iget-object v2, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSupportVolteRoaming(B)V

    .line 531
    return-void
.end method

.method private UpdateImsServiceState()V
    .locals 3

    .line 441
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/iil/IilManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;

    .line 46
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/core/iil/IilManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/iil/IilManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/iil/IilManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;

    .line 46
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/core/iil/IilManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;
    .param p1, "x1"    # Lcom/sec/internal/constants/Mno;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IilManager;
    .param p1, "x1"    # Lcom/sec/ims/ImsRegistration;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeature(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method private convertSsDomainToByte(Ljava/lang/String;)B
    .locals 3
    .param p1, "ssDomain"    # Ljava/lang/String;

    .line 542
    const-string v0, "PS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PS_ALWAYS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 544
    :cond_0
    const-string v0, "CS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CS_ALWAYS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 546
    :cond_1
    const-string v0, "PSCS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 548
    :cond_2
    const-string v0, "PS_ONLY_PSREGIED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    const/4 v0, 0x3

    return v0

    .line 551
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from GENERAL.FIELD for SS_DOMAIN_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    const/4 v0, -0x1

    return v0

    .line 547
    :cond_4
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 545
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private convertSupportTypeToByte(ZZ)B
    .locals 1
    .param p1, "supportVolte"    # Z
    .param p2, "supportVowifi"    # Z

    .line 570
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 571
    const/4 v0, 0x3

    return v0

    .line 572
    :cond_0
    if-eqz p1, :cond_1

    .line 573
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_1
    if-eqz p2, :cond_2

    .line 575
    const/4 v0, 0x2

    return v0

    .line 577
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private convertUssdDomainToByte(Ljava/lang/String;)B
    .locals 3
    .param p1, "ussdDomain"    # Ljava/lang/String;

    .line 557
    const-string v0, "PS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 559
    :cond_0
    const-string v0, "CS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_1
    const-string v0, "PSCS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    const/4 v0, 0x2

    return v0

    .line 564
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UssdDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 565
    const/4 v0, -0x1

    return v0
.end method

.method private disallowReregistration(Lcom/sec/internal/constants/Mno;)Z
    .locals 3
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 771
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_HUNGARY:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_GREECE:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_CROATIA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0
.end method

.method public static featureMaskToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "featureMask"    # I

    .line 416
    const-string v0, ""

    .line 418
    .local v0, "rtString":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VOLTE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    const-string v3, ", "

    if-ne v1, v2, :cond_2

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SMSIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RCS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PSVT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_6
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CDPN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_8
    return-object v0
.end method

.method public static featureTagToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "featureTag"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "tag":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return v0

    .line 396
    :cond_0
    const-string v1, "cs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 397
    or-int/lit8 v0, v0, 0x1

    .line 399
    :cond_1
    const-string/jumbo v1, "smsip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 400
    or-int/lit8 v0, v0, 0x2

    .line 402
    :cond_2
    const-string/jumbo v1, "volte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 403
    or-int/lit8 v0, v0, 0x4

    .line 405
    :cond_3
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 406
    or-int/lit8 v0, v0, 0x8

    .line 408
    :cond_4
    const-string v1, "mmtel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 409
    or-int/lit8 v0, v0, 0x10

    .line 412
    :cond_5
    return v0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .param p1, "subId"    # I

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    .line 884
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 886
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-ltz p1, :cond_0

    .line 887
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    return-object v1

    .line 889
    :cond_0
    return-object v0
.end method

.method private handleNewIpc(Lcom/sec/internal/ims/core/iil/IpcMessage;)V
    .locals 2
    .param p1, "ipcMsg"    # Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 155
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_6

    .line 156
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 157
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSetDeregistration(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 161
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleImsSupportStateChanged(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleIsimLoaded(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 165
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getCmdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleGetImsPreference()V

    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSetPreferredNetworkType(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_6

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSipSuspend(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    .line 174
    :cond_6
    :goto_0
    return-void
.end method

.method private isServiceAvailable()Z
    .locals 5

    .line 790
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 791
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    const/16 v3, 0xd

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    .line 800
    :cond_2
    return v1

    .line 793
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :cond_5
    :goto_2
    return v1
.end method

.method private needSkipDeregister(I)Z
    .locals 4
    .param p1, "netType"    # I

    .line 265
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 266
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    return v2

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 284
    :pswitch_0
    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 280
    :pswitch_1
    return v2

    .line 284
    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 286
    :cond_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onEmergencyRegistrationDone(I)V
    .locals 16
    .param p1, "pdnType"    # I

    .line 867
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string v3, "onRegistrationDone (Emergency)"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    iget-object v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v8, p1

    invoke-static/range {v2 .. v15}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 872
    return-void
.end method

.method private onRegistrationDone(Lcom/sec/internal/ims/core/iil/Registration;)V
    .locals 22
    .param p1, "registrationinfo"    # Lcom/sec/internal/ims/core/iil/Registration;

    .line 805
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->removeMessages(I)V

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getFeatureMask()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getNetworkType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getEcmpMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getLimitedMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 810
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getEpdgMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getFeatureTags()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "featureTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, "errorMessage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getImpu()Ljava/lang/String;

    move-result-object v18

    .line 814
    .local v18, "impu":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getRegiRat()I

    move-result v19

    .line 816
    .local v19, "rat":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/iil/IilManager;->featureTagToInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 818
    const/4 v4, 0x0

    .line 819
    .local v4, "errorCode":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 820
    const/16 v4, 0x646

    move v15, v4

    goto :goto_0

    .line 819
    :cond_0
    move v15, v4

    .line 823
    .end local v4    # "errorCode":I
    .local v15, "errorCode":I
    :goto_0
    iget v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRegistrationDone - FeatureMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    invoke-static {v6}, Lcom/sec/internal/ims/core/iil/IilManager;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), PDN type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", FeatureTag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), Ecmp: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", LimitedMode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", EpdgMode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", errorMessage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IilManager"

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->saveRegistrationInfo()V

    .line 830
    iget-object v14, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 831
    iget v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    const/4 v5, 0x2

    if-nez v4, :cond_1

    .line 832
    move v4, v1

    goto :goto_1

    .line 833
    :cond_1
    move v4, v5

    :goto_1
    iget v6, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/2addr v6, v1

    const/4 v7, 0x0

    if-lez v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    iget v8, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/2addr v5, v8

    if-lez v5, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    iget v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_4

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v7

    :goto_4
    iget v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_5

    move v10, v1

    goto :goto_5

    :cond_5
    move v10, v7

    :goto_5
    iget v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/lit8 v5, v5, 0x20

    if-lez v5, :cond_6

    move v11, v1

    goto :goto_6

    :cond_6
    move v11, v7

    :goto_6
    iget v12, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    iget v13, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    iget v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    const/16 v16, 0x0

    .line 830
    move/from16 v17, v5

    move v5, v6

    move v6, v8

    move/from16 v20, v7

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v20

    move/from16 v13, v17

    move-object v1, v14

    move v14, v15

    move/from16 v21, v15

    .end local v15    # "errorCode":I
    .local v21, "errorCode":I
    move/from16 v15, v16

    move-object/from16 v16, v18

    move/from16 v17, v19

    invoke-static/range {v4 .. v17}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v1

    .line 840
    .local v1, "ret":Z
    if-nez v1, :cond_7

    .line 841
    move-object/from16 v4, p1

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v5, v6, v7}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 842
    return-void

    .line 845
    :cond_7
    move-object/from16 v4, p1

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 846
    iget-object v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v6, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 847
    return-void
.end method

.method private onRegistrationFailed(Lcom/sec/internal/ims/core/iil/Registration;)V
    .locals 16
    .param p1, "deregInfo"    # Lcom/sec/internal/ims/core/iil/Registration;

    .line 850
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 851
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getNetworkType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 852
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 853
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 854
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 856
    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string v3, "onRegistrationFailed"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->saveRegistrationInfo()V

    .line 859
    iget-object v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget v8, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 862
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getDeregiReasonCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getSipError()I

    move-result v13

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getRegiRat()I

    move-result v15

    .line 859
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v15}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 864
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .line 956
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    .line 957
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 960
    return-void
.end method

.method private saveRegistrationInfo()V
    .locals 4

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "netType":I
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    .line 375
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string/jumbo v3, "saveRegistrationInfo : invalid network type"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    const/4 v0, -0x1

    goto :goto_0

    .line 372
    :cond_0
    const/4 v0, 0x4

    .line 373
    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x3

    .line 370
    goto :goto_0

    .line 366
    :cond_2
    const/4 v0, 0x2

    .line 367
    goto :goto_0

    .line 363
    :cond_3
    const/4 v0, 0x1

    .line 364
    goto :goto_0

    .line 360
    :cond_4
    const/4 v0, 0x0

    .line 361
    nop

    .line 380
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 381
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    aput v2, v1, v0

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    aput v2, v1, v0

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    aput v2, v1, v0

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    aput v2, v1, v0

    .line 386
    :cond_5
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    if-nez v0, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 967
    return-void
.end method

.method private updateFeature(Lcom/sec/ims/ImsRegistration;)V
    .locals 11
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 686
    if-eqz p1, :cond_a

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "feature":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 689
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 690
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    const-string v4, "IilManager"

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 691
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFeature: this is not Volte registration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    return-void

    .line 695
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFeature: service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "mNetworkType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 698
    const-string v3, "mmtel"

    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 699
    or-int/lit8 v0, v0, 0x1

    .line 702
    :cond_2
    const-string v3, "mmtel-video"

    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    :cond_3
    or-int/lit8 v0, v0, 0x8

    .line 706
    :cond_4
    const-string/jumbo v3, "smsip"

    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 707
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ORANGE_FR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 708
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 709
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 710
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 711
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 714
    :cond_6
    or-int/lit8 v0, v0, 0x2

    .line 718
    :cond_7
    :goto_0
    const-string v3, "cdpn"

    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 719
    or-int/lit8 v0, v0, 0x20

    .line 722
    :cond_8
    new-instance v10, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v5

    .line 723
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEcmpStatus()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v8

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v9

    move-object v3, v10

    move v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/core/iil/Registration;-><init>(IIIIII)V

    .line 725
    .local v3, "regEvent":Lcom/sec/internal/ims/core/iil/Registration;
    if-eqz v0, :cond_9

    .line 726
    invoke-direct {p0, p1, v3, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeatureWithMmtel(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/core/iil/Registration;I)V

    goto :goto_1

    .line 728
    :cond_9
    invoke-direct {p0, v3, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeatureWithoutMmtel(Lcom/sec/internal/ims/core/iil/Registration;Lcom/sec/ims/settings/ImsProfile;)V

    .line 731
    .end local v0    # "feature":I
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "regEvent":Lcom/sec/internal/ims/core/iil/Registration;
    :cond_a
    :goto_1
    return-void
.end method

.method private updateFeatureWithMmtel(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/core/iil/Registration;I)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "regEvent"    # Lcom/sec/internal/ims/core/iil/Registration;
    .param p3, "feature"    # I

    .line 734
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 737
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "imsi":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 739
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v2, 0x0

    .line 740
    .local v2, "limitedMode":I
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    const-string/jumbo v3, "persist.ims.gcfmode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 743
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/iil/Registration;->setLimitedMode(I)V

    .line 745
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, p3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 747
    const-string v3, "cs"

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/core/iil/Registration;->setFeatureTags(Ljava/lang/String;)V

    .line 750
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 751
    .local v3, "imsUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_3

    .line 752
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "impu":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/iil/Registration;->setImpu(Ljava/lang/String;)V

    .line 755
    .end local v4    # "impu":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 757
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v2    # "limitedMode":I
    .end local v3    # "imsUri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    return-void
.end method

.method private updateFeatureWithoutMmtel(Lcom/sec/internal/ims/core/iil/Registration;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 3
    .param p1, "regEvent"    # Lcom/sec/internal/ims/core/iil/Registration;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 760
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onRegistered: Registration without MMTEL service"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationFailed()V

    goto :goto_0

    .line 764
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/iil/Registration;->setSipError(I)V

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/iil/Registration;->setDeregiReasonCode(I)V

    .line 766
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 768
    :goto_0
    return-void
.end method


# virtual methods
.method public getRoamingSupportValueforVolte(Z)Z
    .locals 3
    .param p1, "defval"    # Z

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 535
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_1

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v1

    return v1

    .line 536
    :cond_1
    :goto_0
    return p1
.end method

.method public getSmsFormat(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 604
    const-string v0, "3GPP"

    .line 606
    .local v0, "smsFormat":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    .line 607
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 608
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 606
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 610
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 612
    nop

    .line 615
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 612
    :cond_0
    return-object v0

    .line 606
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "smsFormat":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/core/iil/IilManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    :cond_1
    :goto_0
    throw v2

    .line 615
    .restart local v0    # "smsFormat":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/core/iil/IilManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "phoneId":I
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0

    .line 617
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Throwable;
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmsFormat: Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IilManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 619
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public getSmsOverIp(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 586
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/sms_over_ip_network_indication"

    .line 587
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 586
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 590
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, "smsOverIms":Z
    const-string v2, "1"

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 593
    nop

    .line 596
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 593
    :cond_0
    return v1

    .line 586
    .end local v1    # "smsOverIms":Z
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/core/iil/IilManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "phoneId":I
    :cond_1
    :goto_0
    throw v1

    .line 596
    .restart local p0    # "this":Lcom/sec/internal/ims/core/iil/IilManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "phoneId":I
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0

    .line 598
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Throwable;
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsOverIp: Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IilManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 600
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getSrvccVersion()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    return v0
.end method

.method public handleGetImsPreference()V
    .locals 3

    .line 208
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "handleGetImsPreference"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceResp(Lcom/sec/internal/ims/core/iil/IilImsPreference;)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 211
    return-void
.end method

.method public handleImsSupportStateChanged(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 231
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v0

    .line 232
    .local v0, "ipcBody":[B
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleImsSupportStateChanged() reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IilManager"

    invoke-static {v3, v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public handleIsimLoaded(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 236
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v0

    .line 237
    .local v0, "ipcBody":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 238
    .local v1, "isRefreshed":I
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIsimLoaded() isRefreshed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IilManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    if-nez v1, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setIsimLoaded()V

    .line 242
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 624
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 626
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 675
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsServiceState()V

    .line 676
    goto/16 :goto_0

    .line 672
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 673
    goto/16 :goto_0

    .line 669
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveModeChangeDone()V

    .line 670
    goto/16 :goto_0

    .line 666
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveSimStateChange(Ljava/lang/String;)V

    .line 667
    goto/16 :goto_0

    .line 663
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveRegistrationRetryOver()V

    .line 664
    goto :goto_0

    .line 660
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingRefresh()V

    .line 661
    goto :goto_0

    .line 657
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingChange()V

    .line 658
    goto :goto_0

    .line 654
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationFailed()V

    .line 655
    goto :goto_0

    .line 651
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationDone(I)V

    .line 652
    goto :goto_0

    .line 648
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->onRegistrationFailed(Lcom/sec/internal/ims/core/iil/Registration;)V

    .line 649
    goto :goto_0

    .line 645
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->onRegistrationDone(Lcom/sec/internal/ims/core/iil/Registration;)V

    .line 646
    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onIilConnected()V

    .line 643
    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 630
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 631
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 632
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v3, "RILD crashed. restarting IMS."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 633
    return-void

    .line 635
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception processing IPC data. Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    return-void

    .line 638
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 639
    .local v1, "ipcMsg":Lcom/sec/internal/ims/core/iil/IpcMessage;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleNewIpc(Lcom/sec/internal/ims/core/iil/IpcMessage;)V

    .line 640
    goto :goto_0

    .line 678
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ipcMsg":Lcom/sec/internal/ims/core/iil/IpcMessage;
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    .line 679
    nop

    .line 683
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 214
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "handleSSACInfo()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v0

    .line 216
    .local v0, "ipcBody":[B
    const/4 v2, 0x0

    aget-byte v3, v0, v2

    .line 217
    .local v3, "voiceFactor":I
    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    .line 218
    .local v4, "voiceTime":I
    const/4 v5, 0x3

    aget-byte v5, v0, v5

    .line 219
    .local v5, "videoFactor":I
    const/4 v6, 0x5

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x4

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v2, v7, 0x0

    add-int/2addr v6, v2

    mul-int/lit16 v6, v6, 0x3e8

    .line 220
    .local v6, "videoTime":I
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->removeMessages(I)V

    .line 222
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v7

    invoke-interface {v7, v3, v4, v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateSSACInfo(IIII)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 223
    :catch_0
    move-exception v7

    .line 224
    .local v7, "e":Ljava/lang/NullPointerException;
    iget v8, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v9, "handleSSACInfo: NPE - resend SSAC to VSM"

    invoke-static {v1, v8, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x1f4

    invoke-virtual {p0, v1, v8, v9}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 227
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method public handleSetDeregistration(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 202
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v0

    .line 203
    .local v0, "ipcBody":[B
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-reg reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IilManager"

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    aget-byte v2, v0, v3

    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    .line 205
    return-void
.end method

.method public handleSetPreferredNetworkType(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v0

    .line 247
    .local v0, "ipcBody":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    .line 248
    .local v2, "reason":I
    aget-byte v1, v0, v1

    .line 249
    .local v1, "netType":I
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPreferredNetworkType reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new NW type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IilManager"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->needSkipDeregister(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_0

    .line 253
    const/16 v4, 0xa

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 255
    :cond_0
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v4, "mReg = null, do nothing!"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v4, 0x5

    iget v5, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    .line 261
    :goto_0
    return-void
.end method

.method public handleSipSuspend(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 13
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    .line 290
    const/4 v0, 0x1

    .line 291
    .local v0, "SUSPEND_CAUSE_HANDOFF_IND":I
    const/4 v1, 0x1

    .line 292
    .local v1, "SUSPEND_ACTION_START":I
    const/4 v2, 0x3

    .line 293
    .local v2, "SUSPEND_RAT_LTE":I
    const/4 v3, 0x6

    .line 295
    .local v3, "SUSPEND_RAT_5G":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->getBody()[B

    move-result-object v4

    .line 296
    .local v4, "ipcBody":[B
    const/4 v5, 0x0

    aget-byte v6, v4, v5

    .line 297
    .local v6, "cause":I
    const/4 v7, 0x1

    aget-byte v8, v4, v7

    .line 298
    .local v8, "action":I
    const/4 v9, 0x2

    aget-byte v9, v4, v9

    .line 299
    .local v9, "srcRat":I
    const/4 v10, 0x3

    aget-byte v11, v4, v10

    .line 300
    .local v11, "tgtRat":I
    if-ne v6, v7, :cond_3

    .line 301
    const/4 v12, 0x6

    if-ne v9, v10, :cond_0

    if-eq v11, v12, :cond_3

    :cond_0
    if-ne v9, v12, :cond_1

    if-eq v11, v10, :cond_3

    .line 303
    :cond_1
    iget-object v10, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-ne v8, v7, :cond_2

    move v5, v7

    :cond_2
    iget v7, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v10, v5, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->suspendRegister(ZI)V

    .line 306
    :cond_3
    return-void
.end method

.method public notifyImsReady(Z)V
    .locals 1
    .param p1, "readiness"    # Z

    .line 971
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->unRegisterPhoneStateListener()V

    .line 972
    if-eqz p1, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->registerPhoneStateListener()V

    .line 975
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 976
    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 9
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 980
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsRegistration: registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " registration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 984
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 986
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 987
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v3, "Not matched slotId. Ignore notification."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 988
    return-void

    .line 991
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 992
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v3, "CMC PD registered. Ignore notification."

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 993
    return-void

    .line 996
    :cond_1
    if-eqz p2, :cond_2

    .line 997
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 998
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 999
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeature(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 1002
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 1005
    :cond_3
    const-string v1, "mmtel"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1006
    const-string v1, "mmtel-video"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1007
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1008
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1010
    :cond_5
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_6

    .line 1011
    const/16 v1, 0xa

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/core/iil/Registration;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v4

    .line 1014
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEcmpStatus()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v7

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/core/iil/Registration;-><init>(IIIIII)V

    .line 1015
    .local v1, "deregEvent":Lcom/sec/internal/ims/core/iil/Registration;
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/Registration;->setSipError(I)V

    .line 1016
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/Registration;->setDeregiReasonCode(I)V

    .line 1017
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    .end local v1    # "deregEvent":Lcom/sec/internal/ims/core/iil/Registration;
    :cond_7
    :goto_0
    return-void
.end method

.method public onEmergencyRegistrationFailed()V
    .locals 15

    .line 875
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onRegistrationFailed (Emergency)"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 880
    return-void
.end method

.method public onIilConnected()V
    .locals 21

    .line 177
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string v3, "onIilConnected"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    .local v1, "netType":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_7

    .line 180
    iget v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS registraton at onIilConnected() : mFeatureMaskByNetType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v3, v3, v1

    if-lez v3, :cond_6

    .line 183
    iget-object v15, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 184
    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 185
    move v3, v5

    goto :goto_1

    .line 186
    :cond_0
    move v3, v4

    :goto_1
    iget-object v6, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v6, v6, v1

    and-int/2addr v6, v5

    const/4 v7, 0x0

    if-lez v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    iget-object v8, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v8, v8, v1

    and-int/2addr v4, v8

    if-lez v4, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v7

    :goto_3
    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_3

    move v9, v5

    goto :goto_4

    :cond_3
    move v9, v7

    :goto_4
    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_4

    move v10, v5

    goto :goto_5

    :cond_4
    move v10, v7

    :goto_5
    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_5

    move v11, v5

    goto :goto_6

    :cond_5
    move v11, v7

    :goto_6
    iget v12, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    aget v13, v4, v1

    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    aget v14, v4, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 183
    move v4, v6

    move v5, v8

    move v6, v9

    move v7, v10

    move v8, v11

    move v9, v1

    move v10, v12

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v18

    move/from16 v16, v19

    invoke-static/range {v3 .. v16}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v3

    .line 193
    .local v3, "ret":Z
    if-nez v3, :cond_6

    .line 194
    iget v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send IMS registraton info failed at onIilConnected() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    .end local v3    # "ret":Z
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v1    # "netType":I
    :cond_7
    return-void
.end method

.method public onReceiveImsSettingChange()V
    .locals 3

    .line 315
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveImsSettingChange"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 318
    return-void
.end method

.method public onReceiveImsSettingRefresh()V
    .locals 3

    .line 320
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveImsSettingRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 323
    return-void
.end method

.method public onReceiveModeChangeDone()V
    .locals 3

    .line 334
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveModeChangeDone()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->ImsChangePreferredNetwork()Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 336
    return-void
.end method

.method public onReceiveRegistrationRetryOver()V
    .locals 9

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRetryOverNoti(IZZZZZII)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 313
    return-void
.end method

.method public onReceiveSimStateChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "simState"    # Ljava/lang/String;

    .line 325
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSimStateChange() : simState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 327
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 328
    const-string v1, "ABSENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingRefresh()V

    .line 332
    :cond_0
    return-void
.end method
