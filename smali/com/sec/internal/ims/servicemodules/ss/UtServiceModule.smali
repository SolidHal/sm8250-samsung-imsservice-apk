.class public Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_READY:I = 0x4

.field private static final EVENT_SOFTPHONE_RESPONSE:I = 0x5

.field private static final EVENT_TRIGGER_CONFIG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UtServiceModule"

.field private static final MAX_RETRY_SIM_SERV_DOC:I = 0x3

.field public static final NAME:Ljava/lang/String;

.field private static final XCAP_ROOT_URI_PREF_IMSI:I = 0x2

.field private static final XCAP_ROOT_URI_PREF_MSISDN:I = 0x1

.field private static final XCAP_ROOT_URI_PREF_MSISDN_WITH_DOMAIN:I = 0x3

.field private static mUtIdCounter:I


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field protected mCWDBChangeObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field private mGetSrvDocAfterFlightModeOff:[Z

.field protected final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mIsConfigured:[Z

.field private mIsEpdgAvailable:[Z

.field private mIsRunningRequest:Z

.field private mLastUri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ss/IImsUtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLooper:Landroid/os/Looper;

.field mMnoUpdateObserver:Landroid/database/ContentObserver;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mSentSimServDocCount:[I

.field private mSoftPhoneAccountId:Ljava/lang/String;

.field private mSoftPhoneClientId:I

.field private mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field private mSoftphoneBound:Z

.field private mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

.field private final mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

.field private mUtSwitch:[Z

.field private smUtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->NAME:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 137
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    .line 101
    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    .line 102
    new-array v2, v1, [Z

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    .line 103
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    .line 107
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 121
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    .line 122
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mGetSrvDocAfterFlightModeOff:[Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    .line 125
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 126
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 130
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 133
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    .line 177
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 1072
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1193
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 1204
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1433
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    .line 1513
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    .line 140
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 141
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "UtServiceModule"

    const/16 v3, 0x12c

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    .line 143
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 146
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Create UtServiceModule"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 150
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mGetSrvDocAfterFlightModeOff:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p1, "x1"    # Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 93
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    return p1
.end method

.method private checkSpecificPolicy(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 1041
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1043
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1044
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1045
    .local v2, "mRegiInfo":[Lcom/sec/ims/ImsRegistration;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1046
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 1047
    .local v6, "regi":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1048
    const-string v7, "mmtel"

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1049
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-nez v7, :cond_3

    .line 1050
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    if-ne v0, v4, :cond_2

    .line 1051
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    const/16 v7, 0x12

    if-ne v4, v7, :cond_0

    .line 1052
    return v5

    .line 1053
    :cond_0
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    const/16 v7, 0xd

    if-eq v4, v7, :cond_1

    .line 1054
    return v3

    .line 1055
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v4, v7, :cond_2

    .line 1056
    return v3

    .line 1059
    :cond_2
    return v5

    .line 1046
    .end local v6    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1064
    :cond_4
    return v3
.end method

.method private createRequestId()I
    .locals 2

    .line 711
    sget v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    .line 712
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    .line 714
    :cond_0
    sget v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    .line 716
    return v0
.end method

.method private ctcOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 933
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 935
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 936
    const-string v1, "46003"

    return-object v1

    .line 937
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 938
    const-string v1, "45502"

    return-object v1

    .line 940
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getApnExist(ILjava/lang/String;)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "apntype"    # Ljava/lang/String;

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnExist(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->ctcOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "operator":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 969
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 970
    .local v3, "subId":I
    sget-object v4, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 972
    .local v4, "CONTENT_URI":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 974
    if-ne p1, v2, :cond_0

    .line 975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND current1 = 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 977
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND current = 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 980
    .end local v3    # "subId":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 981
    .end local v4    # "CONTENT_URI":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'and (type LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 982
    .restart local v5    # "selection":Ljava/lang/String;
    const-string v3, "content://telephony/carriers"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 985
    .restart local v4    # "CONTENT_URI":Landroid/net/Uri;
    :goto_1
    invoke-direct {p0, p1, v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 986
    return v2

    .line 989
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApnExist(): There is no apntype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 990
    const/4 v1, 0x0

    return v1
.end method

.method private getEpdgApnExist(ILjava/lang/String;)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 994
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 995
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "mnoName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEpdgApnExist(): mnoName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UtServiceModule"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 998
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 999
    const-string v4, "getEpdgApnExist(): There is no mnoName"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1000
    return v2

    .line 1003
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND apnname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "selection":Ljava/lang/String;
    const-string v5, "content://iwlansettings/todos"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1006
    .local v5, "CONTENT_URI":Landroid/net/Uri;
    invoke-direct {p0, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1007
    const/4 v2, 0x1

    return v2

    .line 1010
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEpdgApnExist(): There is no apntype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p1, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    return v2
.end method

.method private getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 591
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 594
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const-string v2, "mmtel"

    invoke-interface {v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    .line 595
    .local v2, "uaList":[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    array-length v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    aget-object v3, v2, v4

    if-nez v3, :cond_2

    .line 596
    sget-object v3, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    const-string/jumbo v3, "ss"

    invoke-interface {v0, p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    goto :goto_1

    .line 597
    :cond_1
    :goto_0
    const-string/jumbo v3, "smsip"

    invoke-interface {v0, p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    .line 602
    :cond_2
    :goto_1
    array-length v3, v2

    if-nez v3, :cond_3

    .line 603
    const/4 v3, 0x0

    return-object v3

    .line 606
    :cond_3
    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    .line 607
    .local v6, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-nez v6, :cond_4

    .line 608
    goto :goto_3

    .line 611
    :cond_4
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-ne v7, p2, :cond_5

    .line 612
    return-object v6

    .line 606
    .end local v6    # "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 615
    :cond_6
    aget-object v3, v2, v4

    return-object v3
.end method

.method private getUtImpi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 619
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 620
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 622
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v1, :cond_0

    .line 623
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 624
    .local v2, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v2, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 627
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v2    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private handleSoftPhoneEvent(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 772
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    .line 773
    .local v0, "response":Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    const/16 v4, 0x198

    const-string v5, "errorCode"

    const-string v6, "UtServiceModule"

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 776
    :pswitch_0
    iget-boolean v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v7, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 780
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 782
    .local v1, "error":Landroid/os/Bundle;
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 785
    .end local v1    # "error":Landroid/os/Bundle;
    goto/16 :goto_2

    .line 802
    :pswitch_1
    iget-boolean v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz v1, :cond_4

    .line 803
    const-string v1, "Success to get CallForwardingInfo"

    invoke-static {v6, v7, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 805
    new-array v1, v3, [Landroid/os/Bundle;

    .line 806
    .local v1, "callForwardList":[Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 808
    .local v4, "bundle":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 809
    .local v6, "info":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v9, v6, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    if-ne v8, v9, :cond_2

    .line 810
    iget-boolean v8, v6, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v8, :cond_1

    .line 811
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 813
    :cond_1
    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    :goto_1
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v9, "condition"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    iget-object v8, v6, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    const-string v9, "number"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/16 v8, 0x11

    const-string/jumbo v9, "serviceClass"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    .end local v6    # "info":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    :cond_2
    goto :goto_0

    .line 820
    :cond_3
    aput-object v4, v1, v7

    .line 821
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    .line 822
    .end local v1    # "callForwardList":[Landroid/os/Bundle;
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_2

    .line 823
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CallForwardingInfo. reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v1, "error":Landroid/os/Bundle;
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 828
    .end local v1    # "error":Landroid/os/Bundle;
    goto :goto_2

    .line 787
    :pswitch_2
    iget-boolean v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    if-eqz v1, :cond_5

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallWaitingInfo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v4, v4, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-array v1, v3, [Landroid/os/Bundle;

    .line 790
    .local v1, "result":[Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v1, v7

    .line 791
    aget-object v3, v1, v7

    iget-boolean v4, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    .line 793
    .end local v1    # "result":[Landroid/os/Bundle;
    goto :goto_2

    .line 794
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CallWaitingInfo. reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 797
    .local v1, "error":Landroid/os/Bundle;
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 800
    .end local v1    # "error":Landroid/os/Bundle;
    nop

    .line 833
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPsRegistered(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1378
    return v1

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    return v1

    .line 1385
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onEpdgAvailabilityChanged(ZI)V
    .locals 3
    .param p1, "isEpdgAvailable"    # Z
    .param p2, "phoneId"    # I

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean p1, v0, p2

    .line 742
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 743
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handleEpdgAvailabilityChanged(Z)V

    .line 746
    :cond_0
    return-void
.end method

.method private printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1574
    const-string v0, "UtServiceModule"

    if-nez p2, :cond_0

    .line 1575
    const-string v1, "UtProfile is null."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1576
    return-void

    .line 1579
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "log":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v2

    .line 1582
    .local v2, "crLog":Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1584
    const v0, 0x31000005

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1585
    return-void
.end method

.method private processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 9
    .param p1, "mProfile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    .line 1390
    return-void

    .line 1392
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 1395
    :try_start_0
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallWaitingInfo(I)V

    goto/16 :goto_1

    .line 1397
    :cond_1
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 1398
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-direct {v0, v1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    .line 1399
    .local v0, "info":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 1400
    .end local v0    # "info":Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 1401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, v1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallForwardingInfo(I)V

    goto :goto_1

    .line 1402
    :cond_3
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_8

    .line 1403
    const/4 v1, 0x0

    .line 1404
    .local v1, "retained":Z
    const/4 v2, 0x1

    .line 1406
    .local v2, "enable":Z
    iget v3, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1407
    const/4 v2, 0x1

    .line 1408
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1409
    const/4 v1, 0x1

    goto :goto_0

    .line 1411
    :cond_4
    iget v3, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1412
    const/4 v2, 0x0

    .line 1413
    const/4 v1, 0x1

    goto :goto_0

    .line 1414
    :cond_5
    iget v3, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v3, v0, :cond_6

    .line 1415
    const/4 v2, 0x1

    .line 1416
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1417
    const/4 v1, 0x1

    goto :goto_0

    .line 1419
    :cond_6
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v0, :cond_7

    .line 1420
    const/4 v2, 0x0

    .line 1421
    const/4 v1, 0x0

    .line 1423
    :cond_7
    :goto_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    iget v6, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget v7, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v8, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    move v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    .line 1425
    .local v0, "info":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v3, v4, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    .end local v0    # "info":Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .end local v1    # "retained":Z
    .end local v2    # "enable":Z
    :cond_8
    :goto_1
    goto :goto_2

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "UtServiceModule"

    const-string v2, "RemoteException happen"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "CONTENT_URI"    # Landroid/net/Uri;

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "UtServiceModule"

    if-nez v0, :cond_0

    .line 946
    const-string/jumbo v0, "queryApnExist(): There is no ImsContext"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 947
    return v1

    .line 950
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 952
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 953
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryApnExist "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    const/4 v1, 0x1

    .line 958
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_1
    return v1

    .line 950
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 958
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 960
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    return v1
.end method

.method private registerAirplaneModeObserver()V
    .locals 4

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1070
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1171
    const-string v1, "content://com.sec.ims.settings/mno"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 1170
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1173
    return-void
.end method

.method private startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 500
    .local v0, "utsmc":Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    .line 501
    .local v1, "phoneCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "UtServiceModule"

    if-ge v2, v1, :cond_1

    .line 502
    if-eq v2, p1, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    const-string v4, "already connected on another slot"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 504
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    .line 501
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    .line 508
    .local v2, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 510
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    if-eqz v4, :cond_2

    .line 511
    const-string v4, "Other request is processing now..."

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_1

    .line 516
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 518
    :goto_1
    return-void
.end method

.method private updateConfig(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 836
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 837
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mGetSrvDocAfterFlightModeOff:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 838
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 839
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 840
    return-void

    .line 843
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 844
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V

    .line 845
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 846
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 848
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setSentSimServ(Z)V

    .line 849
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aput v2, v3, v0

    .line 850
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aput-boolean v4, v3, v0

    .line 851
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 852
    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v2, v3, :cond_1

    .line 853
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mGetSrvDocAfterFlightModeOff:[Z

    aput-boolean v4, v2, v0

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    goto :goto_0

    .line 859
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 860
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 863
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bindSoftPhoneService()V
    .locals 4

    .line 1493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    .line 1494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1495
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.softphone.SoftphoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1498
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1499
    :cond_0
    const-string v0, "UtServiceModule"

    const-string v1, "mSoftphoneService is not null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    .line 1502
    :goto_0
    return-void
.end method

.method public checkAvailabilityError(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 539
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 540
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v1, "UtServiceModule"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DSDS_SI_DDS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 547
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 548
    const-string v2, "do not trigger XCAP for non dds sim"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 549
    const/16 v1, 0x3ed

    return v1

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 553
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 554
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 555
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz v3, :cond_2

    .line 556
    return v4

    .line 558
    :cond_2
    const-string v3, "isRequestAvailable(): no matched profile with SIM"

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    const/16 v1, 0x3ee

    return v1

    .line 562
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_4

    .line 563
    const-string v3, "isRequestAvailable(): UtStateMachine is not configured"

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    const/16 v1, 0x3ef

    return v1

    .line 567
    :cond_4
    return v4

    .line 541
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_5
    :goto_0
    const-string v2, "isRequestAvailable(): Request not available because SIM is not ready"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    const/16 v1, 0x3ec

    return v1
.end method

.method protected checkXcapApn(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1016
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1017
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    const-string/jumbo v1, "xcap"

    .line 1018
    .local v1, "apnSelection":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v2

    iget-object v1, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    .line 1022
    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    return v2

    .line 1026
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1027
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getEpdgApnExist(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    return v2

    .line 1031
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1032
    const-string v2, "UtServiceModule"

    const-string v3, "checkXcapApn(): ePDG XCAP APN not exist. PS also not registered."

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1033
    const/4 v2, 0x0

    return v2

    .line 1037
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getApnExist(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public connected()V
    .locals 3

    .line 1451
    const-string v0, "UtServiceModule"

    const-string v1, "connected is started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 1453
    if-nez v1, :cond_0

    .line 1454
    const-string v1, "no active account, supplementary service is not available, grey out."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1456
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerSupplementaryServiceListener(Ljava/lang/String;)V

    .line 1459
    :goto_0
    return-void
.end method

.method public deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/ss/IImsUtEventListener;

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    return-void
.end method

.method protected dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 3

    .line 1568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1569
    .local v0, "retProfile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1570
    return-object v0
.end method

.method public dump()V
    .locals 2

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1544
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method public enableUt(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aput-boolean p2, v0, p1

    .line 1132
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1133
    return-void
.end method

.method protected enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1564
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    return-void
.end method

.method public getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .line 1462
    const-string v0, "UtServiceModule"

    const-string v1, "getActiveAccount is started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const/4 v1, 0x0

    .line 1464
    .local v1, "mAccountId":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActiveAccountUri()Landroid/net/Uri;

    move-result-object v8

    .line 1465
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1466
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 1467
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " active users"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    const/4 v1, 0x0

    goto :goto_1

    .line 1471
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    const-string v0, "account_id"

    .line 1473
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1472
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_1

    .line 1465
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    .line 1477
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1478
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 483
    if-eqz p1, :cond_2

    .line 484
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 485
    .local v1, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPublicId for ATT : registered IMPU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    const-string v3, "UtServiceModule"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 490
    .end local v1    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 494
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPublicId(I)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "impu":Ljava/lang/String;
    const/4 v1, 0x0

    .line 658
    .local v1, "impuUri":Lcom/sec/ims/util/ImsUri;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 659
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v2, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 662
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v4

    .line 663
    .local v4, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-eqz v4, :cond_2

    .line 664
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 665
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    sget-object v6, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_1

    .line 666
    if-eqz v5, :cond_2

    .line 667
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 668
    if-eqz v1, :cond_2

    .line 669
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 672
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v6, :cond_2

    .line 673
    if-eqz v5, :cond_2

    .line 674
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 682
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, "impi":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v6, :cond_3

    .line 684
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 685
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 689
    :cond_3
    if-eqz v2, :cond_5

    .line 691
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 695
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_5

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 698
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 703
    const-string v0, ""

    .line 706
    :cond_6
    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 725
    const-string/jumbo v0, "ss"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSetting(ILjava/lang/String;I)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultVal"    # I

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSetting(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Z

    .line 1548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1
    .param p1, "phoneId"    # I

    .line 586
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    return-object v0
.end method

.method protected getimpi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "impi":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUtImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 636
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_1

    .line 637
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 642
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    const-string v0, ""

    .line 648
    const-string v2, "UtServiceModule"

    const-string v3, "There is no impi"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 650
    :cond_2
    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 721
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 752
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 766
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->handleSoftPhoneEvent(Landroid/os/Message;)V

    goto :goto_3

    .line 757
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 758
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 759
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 760
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo()V

    .line 761
    goto :goto_2

    .line 763
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    goto :goto_0

    .line 764
    :cond_4
    :goto_2
    goto :goto_3

    .line 754
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateConfig(Landroid/os/Message;)V

    .line 755
    nop

    .line 769
    :goto_3
    return-void
.end method

.method public init()V
    .locals 11

    .line 154
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    .line 158
    .local v0, "phoneCnt":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 159
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 160
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 161
    new-instance v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UtMachine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V

    .line 162
    .local v4, "utSm":Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->init(I)V

    .line 163
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->start()V

    .line 164
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean v2, v5, v3

    .line 166
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, v5, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 160
    .end local v4    # "utSm":Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    .line 170
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    .line 172
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerObserver()V

    .line 173
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerAirplaneModeObserver()V

    .line 174
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 175
    return-void
.end method

.method public isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 571
    iget v0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    .line 579
    return v1

    .line 573
    :cond_0
    iget v0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const-string v0, "UtServiceModule"

    const-string v1, "Invalid request - Registration should have number."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    const/4 v0, 0x1

    return v0

    .line 582
    :cond_1
    return v1
.end method

.method protected isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_clip_clir_by_network"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, "clipClir":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "ss_callbarring_by_network"

    const/4 v4, 0x1

    invoke-interface {v1, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 523
    .local v1, "cb":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v5, "ss_callwaiting_by_network"

    invoke-interface {v3, p1, v5, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 525
    .local v3, "cw":I
    iget v5, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    if-nez v1, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 527
    :cond_1
    iget v5, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x72

    if-eq v5, v6, :cond_5

    iget v5, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x73

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 530
    :cond_2
    iget v5, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x6a

    if-lt v5, v6, :cond_4

    iget v5, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x6d

    if-gt v5, v6, :cond_4

    .line 532
    if-nez v0, :cond_3

    move v2, v4

    :cond_3
    return v2

    .line 535
    :cond_4
    return v2

    .line 529
    :cond_5
    :goto_0
    if-nez v3, :cond_6

    move v2, v4

    :cond_6
    return v2
.end method

.method public isUssdEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, "enabled":Z
    const-string/jumbo v1, "ussd_domain_setting"

    const-string v2, "CS"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "policy":Ljava/lang/String;
    const-string v3, "PS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PSCS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    const/4 v0, 0x0

    goto :goto_1

    .line 923
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkSpecificPolicy(I)Z

    move-result v0

    .line 928
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUssdEnabled with policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UtServiceModule"

    invoke-static {v3, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    return v0
.end method

.method public isUtEnabled(I)Z
    .locals 11
    .param p1, "phoneId"    # I

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 869
    .local v0, "isUtStateMachineInit":Z
    :goto_0
    const-string v3, "UtServiceModule"

    if-nez v0, :cond_1

    .line 870
    const-string v1, "UtStateMachine is not initialized yet"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 871
    return v2

    .line 874
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_2

    .line 875
    const-string v1, "UtService is disabled"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 876
    return v2

    .line 879
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 880
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v5, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 881
    const-string v1, "Doesn\'t have any XCAP apn"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 882
    return v2

    .line 885
    :cond_3
    const/4 v2, 0x0

    .line 886
    .local v2, "enabled":Z
    const-string/jumbo v5, "ss_domain_setting"

    const-string v6, "CS"

    invoke-virtual {p0, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, "policy":Ljava/lang/String;
    const-string v6, "PS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "PS_ALWAYS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 890
    :cond_4
    const-string v6, "PSCS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 892
    :cond_5
    const-string v6, "PS_ONLY_PSREGIED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 893
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v2

    goto :goto_3

    .line 891
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isVolteServiceRegistered(I)Z

    move-result v2

    goto :goto_3

    .line 889
    :cond_7
    :goto_2
    const/4 v2, 0x1

    .line 896
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 897
    const-string v6, "Ut Request is blocked by previous 403 Error"

    invoke-static {v3, p1, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 898
    const/4 v2, 0x0

    .line 901
    :cond_9
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v4, v6, :cond_a

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_b

    .line 902
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ril.ICC_TYPE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 903
    .local v6, "iccType":Ljava/lang/String;
    const-string/jumbo v7, "ril.IsCSIM"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 904
    .local v7, "isCsim":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iccType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isCsim = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 906
    .local v8, "splitIsCsim":[Ljava/lang/String;
    const-string v9, "4"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    array-length v9, v8

    if-le v9, p1, :cond_b

    aget-object v9, v8, p1

    const-string v10, "0"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 907
    const-string v9, "RUIM did not support UT interface"

    invoke-static {v3, p1, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 908
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v9, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 909
    const/4 v2, 0x0

    .line 913
    .end local v6    # "iccType":Ljava/lang/String;
    .end local v7    # "isCsim":Ljava/lang/String;
    .end local v8    # "splitIsCsim":[Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUtEnabled with policy : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " enabled = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    return v2
.end method

.method protected isVolteServiceRegistered(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1361
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1362
    return v1

    .line 1364
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1365
    .local v3, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_1

    .line 1366
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1367
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1368
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    .line 1369
    const/4 v1, 0x1

    return v1

    .line 1372
    .end local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_1
    goto :goto_0

    .line 1373
    :cond_2
    return v1
.end method

.method protected makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 6
    .param p1, "phoneId"    # I

    .line 208
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;-><init>()V

    .line 209
    .local v0, "config":Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    const-string v1, "http_username"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    .line 210
    const-string v1, "http_password"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "xcap_root_uri_pref"

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, "xcapUriPref":I
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 220
    const-string v3, "auth_proxy_ip"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    .line 221
    const-string v3, "bsf_ip"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNAFDomain(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    .line 218
    nop

    .line 225
    :goto_0
    const-string v3, "auth_proxy_port"

    const/16 v4, 0x50

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    .line 226
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    .line 227
    const-string v3, "bsf_port"

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfPort:I

    .line 229
    const-string/jumbo v3, "user_agent"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->userAgent:Ljava/lang/String;

    .line 230
    const-string/jumbo v3, "xcap_root_uri"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    .line 231
    const-string/jumbo v3, "xdm_user_agent"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    .line 232
    const-string v2, "apn_selection"

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "ro.build.PDA"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "pdaVer":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 235
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[BUILD_VERSION_8_LETTER]"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    .line 237
    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "[PRODUCT_MODEL]"

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    const-string/jumbo v5, "ro.product.base_model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    .line 243
    :goto_1
    const-string/jumbo v3, "ss_domain_setting"

    const-string v4, "CS"

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "policy":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "CS_ALWAYS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 247
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    goto :goto_3

    .line 245
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 250
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UtServiceModule"

    invoke-static {v5, p1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    return-object v0
.end method

.method protected makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;
    .locals 5
    .param p1, "phoneId"    # I

    .line 255
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;-><init>()V

    .line 256
    .local v0, "feature":Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;
    const-string/jumbo v1, "ss_support_tls"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    .line 257
    const-string/jumbo v1, "ss_select_mode"

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    .line 258
    const-string/jumbo v1, "ss_cb_select_mode"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    .line 259
    const-string/jumbo v1, "ss_support_media_type"

    const/16 v4, 0xff

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    .line 260
    const-string/jumbo v1, "ss_support_ss_element"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss:Z

    .line 261
    const-string/jumbo v1, "ss_support_simservs_retry"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    .line 262
    const-string/jumbo v1, "ss_cf_busy_ruleid"

    const-string v4, "call-diversion-busy-audio"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "ss_cf_unconditional_ruleid"

    const-string v4, "call-diversion-unconditional"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "ss_cf_no_answer_ruleId"

    const-string v4, "call-diversion-no-reply"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    .line 265
    const-string/jumbo v1, "ss_cf_not_reachable_ruleid"

    const-string v4, "call-diversion-not-reachable-audio"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    .line 266
    const-string/jumbo v1, "ss_cf_not_logged_in_ruleid"

    const-string v4, "call-diversion-not-logged-in"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    .line 267
    const-string/jumbo v1, "ss_icb_unconditional_ruleid"

    const-string v4, ""

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    .line 268
    const-string/jumbo v1, "ss_icb_roaming_ruleid"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    .line 269
    const-string/jumbo v1, "ss_403_csfb_until_reboot"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isBlockUntilReboot:Z

    .line 270
    const-string/jumbo v1, "ss_need_seperate_CFNL"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    .line 271
    const-string/jumbo v1, "ss_need_seperate_CFNRy"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    .line 272
    const-string/jumbo v1, "ss_need_seperate_CFA"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFA:Z

    .line 273
    const-string/jumbo v1, "ss_is_need_get_first"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    .line 274
    const-string/jumbo v1, "ss_error_msg_display"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    .line 275
    const-string/jumbo v1, "ss_disconnect_xcap_pdn"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    .line 276
    const/4 v1, 0x5

    const-string/jumbo v4, "ss_delay_disconnect_xcap_pdn"

    invoke-virtual {p0, p1, v4, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    .line 277
    const-string/jumbo v1, "ss_csfb_with_imserror"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCsfbWithImserror:Z

    .line 278
    const-string/jumbo v1, "ss_select_ip_version"

    const-string v4, "default"

    invoke-virtual {p0, p1, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doConvertIpVersion(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    .line 279
    const-string/jumbo v1, "ss_insert_new_rule"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    .line 280
    const-string/jumbo v1, "ss_no_media_for_CB"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    .line 281
    const-string/jumbo v1, "ss_cf_set_all_media"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setAllMediaCF:Z

    .line 282
    const-string/jumbo v1, "ss_cf_uri_type"

    const-string v3, "SIP"

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    .line 283
    const-string/jumbo v1, "ss_support_alternative_media_for_cb"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    .line 285
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 286
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "salesCode":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_1

    const-string v4, "CHM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    .line 289
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    .line 292
    :cond_1
    return-object v0
.end method

.method protected needToGetSimservDocOnBootup(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1096
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1097
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    return v2

    .line 1098
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToGetSimservDocOnBootup : mPdnController.isVoiceRoaming(phoneId) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SimUtil.getDefaultPhoneId() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isUtEnabled(phoneId) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", smUtMap.get(phoneId).isSentSimServ() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    .line 1100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSentSimServ()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", = mSentSimServDocCount[phoneId]) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string v3, "UtServiceModule"

    invoke-static {v3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1103
    return v2

    .line 1106
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 1107
    return v2

    .line 1110
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1111
    return v2

    .line 1114
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSentSimServ()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1115
    return v2

    .line 1118
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v1, v1, p1

    const/4 v3, 0x3

    if-le v1, v3, :cond_6

    .line 1119
    return v2

    .line 1122
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method protected declared-synchronized notifyFailResult(IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "requestType"    # I
    .param p3, "requestId"    # I
    .param p4, "response"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 1324
    :try_start_0
    const-string v0, "UtServiceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFailResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    rem-int/lit8 v0, p2, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1327
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    goto :goto_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1331
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1332
    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return-void

    .line 1323
    .end local p1    # "phoneId":I
    .end local p2    # "requestType":I
    .end local p3    # "requestId":I
    .end local p4    # "response":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized notifySuccessResult(III[Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "requestType"    # I
    .param p3, "requestId"    # I
    .param p4, "response"    # [Landroid/os/Bundle;

    monitor-enter p0

    .line 1271
    :try_start_0
    const-string v0, "UtServiceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySuccessResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    goto/16 :goto_0

    .line 1290
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object v2, p4, v0

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p3, v0}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallWaitingQueried(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    goto :goto_0

    .line 1291
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1294
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1300
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object v0, p4, v0

    invoke-interface {v1, p3, v0}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1303
    goto :goto_0

    .line 1301
    :catch_1
    move-exception v0

    .line 1302
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1304
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1283
    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1286
    goto :goto_0

    .line 1284
    :catch_2
    move-exception v0

    .line 1285
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1287
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1314
    :pswitch_3
    :try_start_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, p3}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdated(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1317
    goto :goto_0

    .line 1315
    :catch_3
    move-exception v0

    .line 1316
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1318
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1275
    :pswitch_4
    :try_start_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1278
    goto :goto_0

    .line 1276
    :catch_4
    move-exception v0

    .line 1277
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 1321
    :goto_0
    monitor-exit p0

    return-void

    .line 1270
    .end local p1    # "phoneId":I
    .end local p2    # "requestType":I
    .end local p3    # "requestId":I
    .end local p4    # "response":[Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 732
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkChanged to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 734
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean v1, v1, p2

    if-eq v0, v1, :cond_0

    .line 735
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->onEpdgAvailabilityChanged(ZI)V

    .line 737
    :cond_0
    return-void
.end method

.method public queryCLIP(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 356
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 358
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6a

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 359
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 360
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 362
    return v0
.end method

.method public queryCLIR(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 345
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 347
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6c

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 348
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 349
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 351
    return v0
.end method

.method public queryCOLP(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 378
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 380
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6e

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 381
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 382
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 384
    return v0
.end method

.method public queryCOLR(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 367
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 369
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x70

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 370
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 371
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 373
    return v0
.end method

.method public queryCallBarring(III)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "cbType"    # I
    .param p3, "ssClass"    # I

    .line 323
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 325
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v2, 0x0

    invoke-static {v2, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v2

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 326
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 327
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 329
    return v0
.end method

.method public queryCallForward(IILjava/lang/String;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 336
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x64

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IILjava/lang/String;I)V

    .line 337
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 338
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 340
    return v0
.end method

.method public queryCallWaiting(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 314
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x72

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 315
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 316
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 318
    return v0
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1350
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1352
    .local v0, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 1356
    :cond_0
    return-object v0
.end method

.method public querySimServDoc(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 300
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 301
    .local v0, "rId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    .line 303
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x74

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 304
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 305
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 307
    return v0
.end method

.method public registerCwdbObserver(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1179
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting_slot2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1184
    :goto_0
    return-void
.end method

.method public registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/ss/IImsUtEventListener;

    .line 1261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    return-void
.end method

.method public registerSupplementaryServiceListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;

    .line 1482
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 1484
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getClientId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 1485
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v1, v0, v2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    goto :goto_0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1490
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected setImsCallWaiting(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1153
    const/4 v0, 0x0

    .line 1155
    .local v0, "activate":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1157
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volte_call_waiting_slot2"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volte_call_waiting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    .line 1163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsCallWaiting(): activate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1164
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "enable_call_wait"

    invoke-static {v1, p1, v2, v0}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 1166
    return v0
.end method

.method protected setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "impi"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 1560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    return-void
.end method

.method public unbindSoftPhoneService()V
    .locals 2

    .line 1505
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    .line 1508
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method public unregisterCwdbObserver(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1191
    :cond_0
    return-void
.end method

.method public updateCLIP(IZ)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 451
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 453
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 454
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 455
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 457
    return v0
.end method

.method public updateCLIR(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "clirMode"    # I

    .line 440
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 442
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6d

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 443
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 444
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 446
    return v0
.end method

.method public updateCOLP(IZ)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 473
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 475
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6f

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 476
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 477
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 479
    return v0
.end method

.method public updateCOLR(II)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "presentation"    # I

    .line 462
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 464
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x71

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 465
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 466
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 468
    return v0
.end method

.method public updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
    .locals 14
    .param p1, "phoneId"    # I
    .param p2, "cbType"    # I
    .param p3, "action"    # I
    .param p4, "ssClass"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "barrList"    # [Ljava/lang/String;

    .line 389
    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v10

    .line 390
    .local v10, "rId":I
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 392
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v11, v2, :cond_0

    const/4 v2, 0x7

    move/from16 v3, p2

    if-ne v3, v2, :cond_1

    .line 393
    const/4 v2, 0x1

    move v12, v2

    .end local p2    # "cbType":I
    .local v2, "cbType":I
    goto :goto_0

    .line 392
    .end local v2    # "cbType":I
    .restart local p2    # "cbType":I
    :cond_0
    move/from16 v3, p2

    .line 395
    :cond_1
    move v12, v3

    .end local p2    # "cbType":I
    .local v12, "cbType":I
    :goto_0
    new-instance v13, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v2, 0x1

    invoke-static {v2, v12}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v3

    move-object v2, v13

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move v8, v10

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIII[Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    .local v2, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 397
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 399
    return v10
.end method

.method public updateCallForward(IIILjava/lang/String;II)I
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "condition"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "timeSeconds"    # I

    .line 405
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v10

    .line 406
    .local v10, "rId":I
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 407
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v11, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v11, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v12, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x2

    move/from16 v12, p3

    if-ne v12, v3, :cond_2

    if-gtz p6, :cond_2

    .line 409
    const/16 v3, 0x14

    move v13, v3

    .end local p6    # "timeSeconds":I
    .local v3, "timeSeconds":I
    goto :goto_2

    .line 412
    .end local v3    # "timeSeconds":I
    .restart local p6    # "timeSeconds":I
    :cond_2
    :goto_1
    move/from16 v13, p6

    .end local p6    # "timeSeconds":I
    .local v13, "timeSeconds":I
    :goto_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v11, v3, :cond_4

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 413
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    const-string v5, "+61"

    if-ne v3, v4, :cond_3

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .end local p4    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    goto :goto_3

    .line 416
    .end local v2    # "number":Ljava/lang/String;
    .restart local p4    # "number":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .end local p4    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_3

    .line 420
    .end local v2    # "number":Ljava/lang/String;
    .restart local p4    # "number":Ljava/lang/String;
    :cond_4
    move-object v14, v2

    .end local p4    # "number":Ljava/lang/String;
    .local v14, "number":Ljava/lang/String;
    :goto_3
    new-instance v15, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0x65

    move-object v2, v15

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v14

    move/from16 v7, p5

    move v8, v13

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIILjava/lang/String;III)V

    .line 421
    .local v2, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 422
    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 424
    return v10
.end method

.method public updateCallWaiting(IZI)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I

    .line 429
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 431
    .local v0, "rId":I
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x73

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZII)V

    .line 432
    .local v1, "profile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 433
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 435
    return v0
.end method

.method public updateCapabilities(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1338
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1340
    .local v0, "capabilities":[I
    array-length v1, v0

    new-array v1, v1, [Z

    .line 1341
    .local v1, "capables":[Z
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1343
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 1345
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->updateCapabilities(I[I[Z)V

    .line 1346
    return-void
.end method

.method protected writeDump(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 1588
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1589
    return-void
.end method
