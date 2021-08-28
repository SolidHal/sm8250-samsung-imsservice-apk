.class public Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.super Ljava/lang/Object;
.source "CmcAccountManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;
    }
.end annotation


# static fields
.field private static final CMC_ACCOUNT_SP:Ljava/lang/String; = "cmcaccount"

.field public static CMC_CALLFORKING_VERSION:D = 0.0

.field public static final CMC_DEVICE_TYPE_PROP:Ljava/lang/String; = "ro.cmc.device_type"

.field private static final CMC_PROFILE_NAME:Ljava/lang/String; = "SamsungCMC"

.field public static final CMC_SATOKEN_DEFAULT:Ljava/lang/String; = "default_token"

.field private static final CMC_SATOKEN_SP:Ljava/lang/String; = "accesstoken"

.field private static final CMC_SAURL_DEFAULT:Ljava/lang/String; = "us-auth2.samsungosp.comus-aut"

.field private static final CMC_SAURL_SP:Ljava/lang/String; = "saurl"

.field private static final CMC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice"

.field public static final CMC_VERSION_PROP:Ljava/lang/String; = "ro.cmc.version"

.field private static final EVENT_CMC_DEVICE_CHANGED:I = 0x5

.field private static final EVENT_CMC_NW_PREF_CHANGED:I = 0x6

.field private static final EVENT_SA_REQUEST:I = 0x1

.field private static final EVENT_SA_UPDATE:I = 0x2

.field private static final EVENT_START_CMC_REGISTRATION:I = 0x3

.field private static final EVENT_STOP_CMC_REGISTRATION:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CmcAccountManager"

.field private static final PD_PROFILE_NAME:Ljava/lang/String; = "SamsungCMC_PD"

.field private static final SD_PROFILE_NAME:Ljava/lang/String; = "SamsungCMC_SD"

.field public static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"

.field private static mIsCmcServiceInstalled:Z


# instance fields
.field private mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field private mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mDomain:Ljava/lang/String;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

.field private mImpi:Ljava/lang/String;

.field private mIsCmcProfileAdded:Z

.field private mPassword:Ljava/lang/String;

.field private mPhoneCount:I

.field private mPort:I

.field private mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileUpdateReason:Ljava/lang/String;

.field private mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

.field private mRegiEventNotifyHostInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

.field private mSaToken:Ljava/lang/String;

.field private mSaUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sput-wide v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->CMC_CALLFORKING_VERSION:D

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    .line 78
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mDomain:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPassword:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 89
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdateReason:Ljava/lang/String;

    .line 103
    const-string v0, "CmcAccountManager"

    const-string v1, "CmcAccountManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 105
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 106
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    .line 107
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 108
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    .line 109
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->init()V

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v1

    .line 111
    .local v1, "isSecondaryDevice":Z
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_4

    .line 112
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v4, "MDMN"

    invoke-static {v3, v4, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No pre-defined profile slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_2

    .line 117
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    .line 118
    .local v5, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SamsungCMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMC profile found slot: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v1, :cond_1

    .line 121
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v4, "svc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "mmtel"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 124
    const/4 v7, 0x5

    invoke-virtual {v5, v7, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 125
    const/16 v8, 0xc

    invoke-virtual {v5, v8, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 126
    const/16 v9, 0xe

    invoke-virtual {v5, v9, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 127
    const/4 v10, 0x1

    invoke-virtual {v5, v6, v10}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 128
    invoke-virtual {v5, v7, v10}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 129
    invoke-virtual {v5, v8, v10}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 130
    invoke-virtual {v5, v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 132
    .end local v4    # "svc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    goto :goto_2

    .line 135
    .end local v5    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_1

    .line 111
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v2    # "phoneId":I
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 138
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    .line 139
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcServiceInstalled()Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    .line 140
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initCmcFromPref()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onSaUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAServiceInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStartCmcRegistration()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStopCmcRegistration()V

    return-void
.end method

.method private getActiveSimSlot()I
    .locals 2

    .line 641
    const/4 v0, -0x1

    .line 642
    .local v0, "lineSlotIndex":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getActiveSimSlot()I

    move-result v0

    .line 643
    return v0
.end method

.method private getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .locals 2

    .line 567
    const-string v0, "CmcAccountManager"

    const-string v1, "getCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    .line 570
    .local v0, "newCmcInfo":Lcom/sec/internal/ims/core/cmc/CmcInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 571
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 572
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 574
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 575
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 576
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 577
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getImpuFromLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 578
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPcscfAddressList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 580
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getActiveSimSlot()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 581
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasSecondaryDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 582
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPreferedNetwork()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 583
    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 584
    return-object v0
.end method

.method private getImpuFromLineId()Ljava/lang/String;
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineImpu()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "impu":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImpuFromLineId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-object v0
.end method

.method private getLineId()Ljava/lang/String;
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineId()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "lineId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-object v0
.end method

.method private getPcscfAddressList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPcscfAddressList()Ljava/util/List;

    move-result-object v0

    .line 595
    .local v0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfAddressList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-object v0
.end method

.method private getPrimaryDeviceId()Ljava/lang/String;
    .locals 6

    .line 625
    const-string v0, ""

    .line 626
    .local v0, "PrimaryDeviceId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v1

    .line 627
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 629
    .local v3, "dId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "Type":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "pd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 631
    move-object v0, v3

    .line 632
    goto :goto_1

    .line 634
    .end local v3    # "dId":Ljava/lang/String;
    .end local v4    # "Type":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 636
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrimaryDeviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmcAccountManager"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object v0
.end method

.method private initCmcFromPref()V
    .locals 4

    .line 768
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v2, "cmcaccount"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 771
    .local v0, "newSp":Landroid/content/SharedPreferences;
    const-string v1, "accesstoken"

    const-string v2, "default_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 772
    const-string/jumbo v1, "saurl"

    const-string/jumbo v2, "us-auth2.samsungosp.comus-aut"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 773
    const-string v1, "CmcAccountManager"

    const-string v2, "initCmcFromPref: "

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method private isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCmcCallSupported()Z
    .locals 7

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 498
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sget-wide v5, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->CMC_CALLFORKING_VERSION:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_0

    .line 499
    return v2

    .line 501
    :cond_0
    const-string/jumbo v1, "ro.cmc.version"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "versionProp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 503
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sget-wide v5, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->CMC_CALLFORKING_VERSION:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 504
    return v2

    .line 506
    :cond_1
    return v2
.end method

.method private isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 5
    .param p1, "src"    # Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .param p2, "target"    # Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 539
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 540
    return v0

    .line 543
    :cond_0
    const-string v1, ""

    .line 544
    .local v1, "updateReason":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getInfoNameSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 545
    .local v3, "infoName":Ljava/lang/String;
    invoke-virtual {p1, v3, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->compareWithName(Ljava/lang/String;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->isDumpPrintAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValueWithName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 552
    .end local v3    # "infoName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 554
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 555
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    if-ne v2, v3, :cond_3

    .line 556
    const-string v1, "New valid CmcInfo "

    .line 558
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmcInfoEqual: false - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmcAccountManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdateReason:Ljava/lang/String;

    .line 560
    return v0

    .line 562
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 4
    .param p1, "cmcInfo"    # Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 515
    const-string v0, ""

    .line 517
    .local v0, "failReason":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 518
    const-string v0, "OwnDeviceInfo null"

    goto :goto_1

    .line 520
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getInfoNameSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 521
    .local v2, "infoName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->checkValidWithName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " empty"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    goto :goto_1

    .line 525
    .end local v2    # "infoName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 528
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "CmcAccountManager"

    if-nez v1, :cond_3

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmcInfoValid: fail - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdateReason:Ljava/lang/String;

    .line 531
    const/4 v1, 0x0

    return v1

    .line 533
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmcInfoValid: true "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x1

    return v1
.end method

.method private isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1
    .param p1, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 822
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const/4 v0, 0x1

    return v0

    .line 825
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCmcServiceInstalled()Z
    .locals 3

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isCmcServiceInstalled: true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    const/4 v0, 0x1

    return v0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "isCmcServiceInstalled: false"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x0

    return v1
.end method

.method private isReadyRegisterP2p(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 321
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 322
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 323
    const-string v2, "com.samsung.android.mdecservice"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 324
    .local v2, "targetInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 325
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 326
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 327
    const-string v4, "d2d_trial"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 333
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "targetInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmcAccountManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v0
.end method

.method private isSdHasCallForkingService()Z
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 606
    :goto_0
    return v1
.end method

.method private onSaUpdated()V
    .locals 3

    .line 752
    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "onSaUpdated: "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcPref()V

    .line 754
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    return-void

    .line 759
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez v1, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    goto :goto_0

    .line 762
    :cond_1
    const-string/jumbo v1, "onSaUpdated: notifyCmcDeviceChanged with access token"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 765
    :goto_0
    return-void
.end method

.method private onStartCmcRegistration()V
    .locals 5

    .line 253
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onStartCmcRegistration: Cmc not installed"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 255
    return-void

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_1

    .line 258
    const-string/jumbo v0, "onStartCmcRegistration: Cmc Profile is already added"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    const-string/jumbo v0, "onStartCmcRegistration: Cmc not activated"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcCallSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    const-string/jumbo v0, "onStartCmcRegistration: Cmc Call forking not supported"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 270
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 271
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 272
    const-string v2, "Start VoLteService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->start()V

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v2

    if-nez v2, :cond_5

    .line 276
    const-string/jumbo v2, "onStartCmcRegistration: SD CMC Call forking disabled"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 279
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 280
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "onStartCmcRegistration: request SA"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void

    .line 284
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    .line 285
    sget-object v4, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    if-eq v2, v4, :cond_9

    .line 286
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v4, "onStartCmcRegistration: registerProfile"

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v4, :cond_8

    .line 288
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "phoneId":I
    :cond_8
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 291
    if-eqz v0, :cond_a

    .line 292
    const-string/jumbo v2, "onStartCmcRegistration: update lineId and deviceId for p2p"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "deviceId":Ljava/lang/String;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v1    # "deviceId":Ljava/lang/String;
    goto :goto_1

    .line 297
    :cond_9
    const-string/jumbo v2, "onStartCmcRegistration: updateCmcProfile failed"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_a
    :goto_1
    return-void
.end method

.method private onStopCmcRegistration()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez v0, :cond_0

    .line 359
    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "onStopCmcRegistration: no profile added"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopCmcRegistration: deregisterProfile: activation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] isSD["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] sdHasCallForking["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 366
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 367
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 368
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    .line 367
    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    .line 365
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "phoneId":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 372
    return-void
.end method

.method private registerProfile(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p(I)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v0, "registerProfile: ready to D2D register"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->setDeviceIdInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProfile: RegisterTask is already in the slot ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProfile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 315
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 314
    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 316
    return-void
.end method

.method private startSAServiceInternal(Z)V
    .locals 1
    .param p1, "isLocal"    # Z

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    .line 683
    return-void
.end method

.method private stopCmcRegistration()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendEmptyMessage(I)Z

    .line 154
    return-void
.end method

.method private updateCmcPref()V
    .locals 4

    .line 777
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v2, "cmcaccount"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 780
    .local v0, "newSp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 782
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    const-string v3, "accesstoken"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 783
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    const-string/jumbo v3, "saurl"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCmcPref: token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SaUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmcAccountManager"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method private updateCmcProfile()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
    .locals 10

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 459
    .local v0, "oldInfo":Lcom/sec/internal/ims/core/cmc/CmcInfo;
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 461
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCmcProfile: Invalid CmcInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdateReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 463
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v1

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    const-string v1, "CmcAccountManager"

    const-string/jumbo v2, "updateCmcProfile: Same CmcInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v1, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v1

    .line 471
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "deviceIdWithURN":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "priDeviceIdWithURN":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v4, "pd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    const-string v3, "SamsungCMC_PD"

    goto :goto_0

    :cond_2
    const-string v3, "SamsungCMC_SD"

    :goto_0
    move-object v5, v3

    .line 476
    .local v5, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 477
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setPcscfList(Ljava/util/List;)V

    .line 480
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v6, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v8, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    move-object v4, p0

    move-object v7, v1

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCmcProfile: Update CmcInfo: Line["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v6, v6, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdateReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 485
    sget-object v3, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v3
.end method


# virtual methods
.method public dump()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 872
    return-void
.end method

.method public getAccessTokenFromCmcPref()Ljava/lang/String;
    .locals 5

    .line 790
    const-string v0, ""

    .line 791
    .local v0, "accessToken":Ljava/lang/String;
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v3, "cmcaccount"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 794
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "accesstoken"

    const-string v3, "default_token"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessTokenFromCmcPref: token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmcAccountManager"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-object v0
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 6
    .param p1, "phoneId"    # I

    .line 801
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 802
    .local v0, "regiMgr":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 803
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 804
    const-string v3, "CmcAccountManager"

    const-string v4, "getCmcRegisterTask: rtl is null"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-object v2

    .line 807
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 808
    .local v4, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 809
    return-object v4

    .line 811
    .end local v4    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 812
    :cond_2
    return-object v2
.end method

.method public getCmcSaServerUrl()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLineOwnerDeviceId()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLineSlotIndex()I
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    return v0
.end method

.method public getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 3
    .param p1, "phoneId"    # I

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 445
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v0, :cond_0

    .line 446
    const/4 v1, 0x0

    return-object v1

    .line 448
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v0
.end method

.method public getProfileUpdatedResult()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v0
.end method

.method public getRegiEventNotifyHostInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-object v0
.end method

.method public hasSecondaryDevice()Z
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v1

    .line 660
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "pd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 661
    const-string v2, "CmcAccountManager"

    const-string v3, "hasSecondaryDevice : no SD with current PD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, 0x0

    return v2

    .line 664
    :cond_0
    return v3
.end method

.method public initProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newImpu"    # Ljava/lang/String;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "priDeviceIdWithURN"    # Ljava/lang/String;

    .line 414
    const-string v0, "CmcAccountManager"

    const-string v1, "initProfile : build ImsProfile for MDMN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string/jumbo v1, "sip:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPassword:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mDomain:Ljava/lang/String;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "password = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / domain = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPassword:Ljava/lang/String;

    .line 429
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 430
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    .line 431
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 432
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPassword(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 435
    invoke-virtual {v1, p3}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, p4}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, p5}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 439
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_2

    .line 440
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setAccount(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public isCmcActivated()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v0

    return v0
.end method

.method public isCmcDeviceActivated()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCmcEnabled()Z
    .locals 8

    .line 696
    const-string/jumbo v0, "ro.cmc.version"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "cmc_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 698
    .local v1, "isEnabled":Z
    const-wide/16 v2, 0x0

    .line 699
    .local v2, "version":D
    sget-boolean v4, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    const-string v5, "CmcAccountManager"

    if-nez v4, :cond_0

    .line 700
    const-string v4, "isCmcEnabled: Not installed "

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v4, 0x0

    return v4

    .line 703
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 704
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCmcEnabled: from cmc version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_1

    .line 707
    const/4 v1, 0x1

    .line 710
    :cond_1
    if-nez v1, :cond_2

    .line 711
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v1

    .line 713
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCmcEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return v1
.end method

.method public isCmcProfileAdded()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return v0
.end method

.method public isSecondaryDevice()Z
    .locals 7

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    const/4 v1, 0x0

    const-string v2, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 720
    const-string v0, "isSecondaryDevice : cmcsetting is null"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return v1

    .line 723
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v3, "sd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 725
    const-string v1, "isSecondaryDevice: by cmcsetting"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return v5

    .line 728
    :cond_1
    const-string/jumbo v4, "ro.cmc.device_type"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "deviceType_prop":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    const-string v1, "isSecondaryDevice: by prop"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return v5

    .line 733
    :cond_2
    return v1
.end method

.method public isWifiOnly()Z
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyCmcDeviceChanged()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method

.method public notifyCmcNwPrefChanged()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->removeMessages(I)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return-void
.end method

.method public onChangedSamsungAccountInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 686
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const-string v0, "CmcAccountManager"

    const-string v1, "onChangedSamsungAccountInfo: startSAService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAService(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method protected onCmcDeviceChanged()V
    .locals 12

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 173
    .local v0, "regiMgr":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 174
    const-string v2, "onCmcDeviceChanged: RegistrationManagerBase is null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 178
    :cond_0
    const/4 v2, 0x0

    .local v2, "id":I
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_2

    .line 179
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    .line 180
    .local v3, "cmcTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    .line 181
    const-string v4, "onCmcDeviceChanged: deregistering"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    return-void

    .line 178
    .end local v3    # "cmcTask":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "id":I
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    .line 189
    .local v2, "phoneId":I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    .line 190
    .local v3, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-eqz v3, :cond_e

    .line 191
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    .line 192
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v4

    const-string v5, "]"

    if-eqz v4, :cond_d

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_6

    .line 197
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    sget-object v6, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    if-ne v4, v6, :cond_6

    .line 198
    const-string v4, "onCmcDeviceChanged: Not updated"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    return-void

    .line 202
    :cond_6
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 205
    move v4, v2

    .line 206
    .local v4, "lineSlotId":I
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v7, "pd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileUpdatedResult:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    sget-object v7, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    if-ne v6, v7, :cond_7

    .line 208
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v4, v6, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 211
    :cond_7
    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-interface {v3, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 212
    const-string v6, "CMC profile updated"

    .line 213
    .local v6, "deregiReason":Ljava/lang/String;
    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 214
    const/16 v7, 0x1d

    invoke-interface {v3, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 215
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v7

    if-eqz v7, :cond_8

    .line 217
    const-string v5, "onCmcDeviceChanged: call state not idle"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-interface {v3, v10}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setHasPendingDeregister(Z)V

    goto :goto_4

    .line 220
    :cond_8
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCmcDeviceChanged: deregister slot["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 222
    if-eq v4, v2, :cond_9

    goto :goto_3

    :cond_9
    move v10, v9

    :goto_3
    move v5, v10

    .line 223
    .local v5, "localDeregi":Z
    invoke-interface {v0, v3, v5, v9, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_4

    .line 225
    .end local v5    # "localDeregi":Z
    .end local v6    # "deregiReason":Ljava/lang/String;
    :cond_a
    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v9

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v10

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 226
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCmcDeviceChanged: stopPdn slot["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 227
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v5

    invoke-interface {v0, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 228
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_5

    .line 225
    :cond_b
    :goto_4
    nop

    .line 231
    :goto_5
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v5

    .line 232
    .local v5, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v5, :cond_c

    .line 233
    const-string v6, "onCmcDeviceChanged: update lineId and deviceId for p2p"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "urn:duid:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "deviceId":Ljava/lang/String;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v7, v7, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v6, v1, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v1    # "deviceId":Ljava/lang/String;
    :cond_c
    const-wide/16 v6, 0x1f4

    invoke-interface {v0, v4, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    .line 239
    .end local v4    # "lineSlotId":I
    .end local v5    # "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    goto :goto_7

    .line 194
    :cond_d
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCmcDeviceChanged: stopCmcRegistration: Activation["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->stopCmcRegistration()V

    .line 196
    return-void

    .line 240
    :cond_e
    const-string v4, "onCmcDeviceChanged: startCmcRegistration"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    .line 243
    :goto_7
    return-void
.end method

.method public onSimRefresh(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimRefresh("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 3
    .param p1, "newImpu"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 376
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mImpi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v2, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 381
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v2    # "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method public setPcscfList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "inputPcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "setPcscfList: mProfileMap is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 390
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 392
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v3, "strPcscfList":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, "inputPcscf":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    .line 397
    const/4 v6, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 399
    :cond_1
    const/16 v5, 0x1f40

    iput v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    .line 401
    :goto_1
    const-string v5, "(pcscf = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / mPort = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v4    # "inputPcscf":Ljava/lang/String;
    goto :goto_0

    .line 404
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pcscfList size["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 407
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v4, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 408
    iget v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPort:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 409
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_2

    .line 410
    :cond_3
    return-void
.end method

.method public setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 748
    .local p1, "regiEventNotifyHostInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    .line 749
    return-void
.end method

.method public setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0
    .param p1, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 145
    return-void
.end method

.method public startCmcRegistration()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method public startSAService(Z)V
    .locals 3
    .param p1, "isLocal"    # Z

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "startSAService: request SA"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 679
    :cond_0
    return-void
.end method

.method public updateCmcSaInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "serverUrl"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 490
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCmcSaInfo: Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->sendEmptyMessage(I)Z

    .line 493
    return-void
.end method
