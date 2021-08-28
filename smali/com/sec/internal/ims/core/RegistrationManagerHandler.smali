.class public Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.super Landroid/os/Handler;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-Handler"

.field private static final OMADM_TIMEOUT:I = 0x1e


# instance fields
.field protected mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field protected mDsacEventReceiver:Landroid/content/BroadcastReceiver;

.field private mEntitlementStatus:Landroid/content/BroadcastReceiver;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mHasPendingRecoveryAction:Z

.field protected final mImsDmConfigListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mLooper:Landroid/os/Looper;

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field protected mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneCount:I

.field protected mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private final mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mRilEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mUserEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field protected mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "regman"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p4, "netEvetCtr"    # Lcom/sec/internal/ims/core/NetworkEventController;

    .line 143
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 244
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 363
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEntitlementStatus:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 145
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mLooper:Landroid/os/Looper;

    .line 147
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 148
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 149
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "RegiMgr-Handler"

    const/16 v2, 0x12c

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "regman"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p4, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p5, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p7, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p8, "cmcAccountManager"    # Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .param p9, "netEvtCtr"    # Lcom/sec/internal/ims/core/NetworkEventController;
    .param p10, "userEvtCtr"    # Lcom/sec/internal/ims/core/UserEventController;
    .param p11, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/ims/core/NetworkEventController;",
            "Lcom/sec/internal/ims/core/UserEventController;",
            "Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;",
            ")V"
        }
    .end annotation

    .line 155
    .local p6, "simManagers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0, p1, p2, p3, p9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V

    .line 157
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 158
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    .line 159
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 160
    iput-object p8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 161
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 162
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 163
    iput-object p10, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    .line 164
    iput-object p11, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 165
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onT3396Expired(I)V

    return-void
.end method

.method private allocateAdhocProfileId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 1583
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1584
    .local v0, "currentCount":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_1

    .line 1586
    :cond_0
    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1588
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1589
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v2, p1, 0x2710

    add-int/2addr v1, v2

    return v1
.end method

.method private getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 3
    .param p1, "phoneId"    # I

    .line 543
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 544
    .local v0, "ret":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v0, :cond_0

    .line 545
    const-string v1, "RegiMgr-Handler"

    const-string v2, "getNetworkEvent is not exist. Return null.."

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    :cond_0
    return-object v0
.end method

.method private isDeregisterNeeded(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 573
    const-string v0, "RegiMgr-Handler"

    const-string v1, "isDeregisterNeeded:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 575
    return v1

    .line 577
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDeregisterOnLocationUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "isDeregisterNeeded: true"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string v3, "isDeregisterNeeded: false"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    return v1
.end method

.method private isReadyToStartRegistration(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 516
    const-string v0, "RegiMgr-Handler"

    const-string v1, "isReadyToStartRegistration:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 518
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 519
    return v2

    .line 521
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "operator":Ljava/lang/String;
    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    const-string v4, "Sim refresh is ongoing. SIM readyretry after"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    return v2

    .line 525
    :cond_1
    const/16 v4, 0x6b

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    const-string v4, "Deregistering is not completed"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    return v2

    .line 528
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 529
    const-string v4, "IMEI is empty"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    return v2

    .line 531
    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    const-string v4, "OperatorCode is empty"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    return v2

    .line 534
    :cond_4
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 535
    const-string v4, "IMSI is not valid"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    return v2

    .line 538
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private onDmState(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1750
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onDmState:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    const/4 v1, 0x0

    .line 1752
    .local v1, "state":Z
    const-string v2, "EAB_SETTING"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    .line 1753
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1752
    if-eqz v2, :cond_0

    .line 1753
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v4, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {v2, v4, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 1754
    :cond_0
    const-string v2, "LVC_ENABLED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1755
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v4, "omadm/./3GPP_IMS/LVC_ENABLED"

    invoke-static {v2, v4, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 1756
    :cond_1
    const-string v2, "VOLTE_ENABLED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1757
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v4, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {v2, v4, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 1759
    :cond_2
    const-string v2, "Ignore DM value"

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1762
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new onDmState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "- state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1763
    return v1
.end method

.method private onEventSimReady(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 510
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onEventSimReady:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 512
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimReady(ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private onT3396Expired(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 551
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 552
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->hasRetryIntentOnPdnFail()Z

    move-result v1

    const-string v2, "RegiMgr-Handler"

    if-eqz v1, :cond_1

    .line 556
    const-string v1, "Operator default timer is running, No need update T3396 timer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 560
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 561
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    .line 562
    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNonVoLteSimByPdnFail()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 565
    const-string v4, "ignore T3396 expired, it is Non Volte sim"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    goto :goto_0

    .line 568
    :cond_3
    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 570
    :cond_4
    return-void
.end method


# virtual methods
.method protected doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1298
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecoveryAction; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RECOVERY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x11010007

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1300
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getTelephonyCallStatus(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1302
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "doRecoveryAction : active call. postpone recovery"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",POSTPONE RECOVERY: ACTIVE CALL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1304
    return-void

    .line 1306
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1307
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1308
    return-void
.end method

.method protected enableIpme(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 830
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 831
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "im"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 832
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "ft"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 833
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "ft_http"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string/jumbo v3, "slm"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    :cond_0
    const-string v2, "RegiMgr-Handler"

    const-string v3, "Update chat service "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 838
    .end local v1    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    goto :goto_0

    .line 839
    :cond_2
    return-void
.end method

.method protected handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 765
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 766
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 777
    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 778
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    return-void
.end method

.method protected handleDynamicConfigUpdated(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 749
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 750
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 752
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 753
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 754
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 755
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    :goto_0
    return-void
.end method

.method protected handleGlobalSettingsUpdated(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 726
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 727
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 729
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 730
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "RegiMgr-Handler"

    const-string/jumbo v3, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 735
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-static {p1, p0, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationEvents;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unknown event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method

.method protected handleMnoMapUpdated(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 739
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 740
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 742
    :cond_0
    const-string v0, "RegiMgr-Handler"

    const-string v2, "imsservice reboot"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 745
    :goto_0
    return-void
.end method

.method protected handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Lcom/sec/internal/helper/AsyncResult;

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x14

    const-string v2, "RegiMgr-Handler"

    if-nez v0, :cond_0

    .line 593
    const-string/jumbo v0, "phone process is not ready."

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    return-void

    .line 598
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->isReadyToStartRegistration(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    return-void

    .line 603
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onEventSimReady(I)Z

    move-result v0

    .line 604
    .local v0, "readiness":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    .line 605
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 606
    const-string v1, "SimReady: readiness false but CMC exists"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 607
    const/4 v0, 0x1

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 610
    return-void
.end method

.method protected handleUiccChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifySimChange(I)V

    .line 761
    return-void
.end method

.method public hasDelayedStopPdnEvent()Z
    .locals 1

    .line 1835
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public hasNetworModeChangeEvent()Z
    .locals 1

    .line 1839
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public hasVolteSettingOffEvent()Z
    .locals 1

    .line 1819
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerInternalListeners()V

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerIntentReceivers()V

    .line 172
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 173
    return-void
.end method

.method public synthetic lambda$notifySendDeRegisterRequested$1$RegistrationManagerHandler(ILcom/sec/internal/constants/Mno;I)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "reason"    # I

    .line 1635
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1636
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    const-string v3, "RegiMgr-Handler"

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v6, 0xf

    if-eq v2, v6, :cond_b

    .line 1638
    invoke-static {p1, p2, v1, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->ignoreSendDeregister(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegisterTask;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1639
    goto :goto_0

    .line 1642
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDeregister : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1645
    :cond_1
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiCause(I)V

    .line 1647
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_3

    .line 1649
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1650
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1654
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x1770

    invoke-virtual {p0, v2, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1656
    :cond_3
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/16 v2, 0x8f

    if-ne p3, v2, :cond_6

    .line 1657
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1658
    :cond_6
    const/16 v2, 0x327

    if-ne p3, v2, :cond_7

    .line 1659
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v5, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1660
    :cond_7
    const/16 v2, 0x17

    if-ne p3, v2, :cond_8

    .line 1661
    const-string v2, "Do not disconnect IMS PDN while shutting down!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1663
    :cond_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->UMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq p2, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_a

    :cond_9
    const/16 v2, 0x7c

    if-ne p3, v2, :cond_a

    .line 1664
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v2, :cond_a

    .line 1665
    const-string v2, "Wifi disconnected, send local deregister"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1668
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1670
    :cond_b
    const/16 v2, 0x82

    if-ne p3, v2, :cond_c

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v4, :cond_c

    .line 1671
    const-string v2, "Stop pdn when device shut down..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1673
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1675
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_c
    :goto_1
    goto/16 :goto_0

    .line 1676
    :cond_d
    return-void
.end method

.method public synthetic lambda$notifySendReRegisterRequested$2$RegistrationManagerHandler(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1681
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    .line 1682
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setUpdateRegistering(Z)V

    .line 1683
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1684
    .local v0, "isRcsForEur":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v1

    .line 1685
    .local v1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1686
    const-string v3, "RegiMgr-Handler"

    const-string/jumbo v4, "sendReRegister : deregister task due to empty services"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1689
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)V

    .line 1692
    .end local v0    # "isRcsForEur":Z
    .end local v1    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$registerInternalListeners$0$RegistrationManagerHandler(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 414
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 416
    .local v0, "phoneId":I
    const-string v1, "RegiMgr-Handler"

    const-string v2, "Register SIM Event"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x15

    invoke-interface {p1, p0, v4, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    const/16 v2, 0x24

    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    const-string v2, "Register PhoneStatelistener."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    .line 425
    return-void
.end method

.method public notifyAirplaneModeChanged(I)V
    .locals 2
    .param p1, "airPlaneModeOn"    # I

    .line 1433
    const/16 v0, 0xc

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1434
    return-void
.end method

.method public notifyChatbotAgreementChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1454
    return-void
.end method

.method public notifyConfigChanged(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 1398
    const/4 v0, 0x0

    const/16 v1, 0x23

    if-nez p1, :cond_0

    .line 1399
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1401
    :cond_0
    const-string v2, "RegiMgr-Handler"

    const-string v3, "notifyConfigChanged, it should be fixed to include phoneId!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1404
    :goto_0
    return-void
.end method

.method public notifyContactActivated(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "profileId"    # I

    .line 1503
    const/16 v0, 0x329

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1504
    return-void
.end method

.method public notifyDeRegistered(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1481
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 1482
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1483
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1484
    return-void
.end method

.method protected notifyDmValueChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1723
    const-string v0, "RegiMgr-Handler"

    const-string v1, "notifyDmValueChanged:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1726
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1727
    .local v1, "length":I
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDmState(Ljava/lang/String;I)Z

    move-result v2

    .line 1728
    .local v2, "state":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1729
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/IImsDmConfigListener;

    .line 1730
    .local v4, "listener":Lcom/sec/ims/IImsDmConfigListener;
    invoke-interface {v4, p1, v2}, Lcom/sec/ims/IImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V

    .line 1728
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1732
    .end local v3    # "index":I
    .end local v4    # "listener":Lcom/sec/ims/IImsDmConfigListener;
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    .end local v1    # "length":I
    .end local v2    # "state":Z
    goto :goto_1

    .line 1733
    :catch_0
    move-exception v1

    .line 1734
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1737
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "omadm/./3GPP_IMS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1738
    .local v1, "dmValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1741
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "item"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1745
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1747
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public notifyDnsResponse(Ljava/util/List;II)V
    .locals 1
    .param p2, "port"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1540
    .local p1, "ipAddrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1541
    return-void
.end method

.method public notifyEmergencyReady(I)V
    .locals 2
    .param p1, "profileId"    # I

    .line 1467
    const/16 v0, 0x77

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1468
    return-void
.end method

.method public notifyImsSettingChanged(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 1369
    if-eqz p1, :cond_4

    .line 1370
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1372
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1373
    invoke-virtual {p0, v1, p2, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1374
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1375
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1376
    invoke-virtual {p0, v1, p2, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1377
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

    .line 1378
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1381
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1382
    const/16 v1, 0x198

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1383
    invoke-virtual {p0, v1, p2, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1379
    :cond_3
    :goto_0
    const/16 v1, 0x95

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1380
    invoke-virtual {p0, v1, p2, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1386
    .end local v0    # "path":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method public notifyImsSettingUpdated(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1343
    return-void
.end method

.method public notifyLocalIpChanged(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 5
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "isStackedIpChanged"    # Z

    .line 1522
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1523
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "rcsAs":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLocalIpChanged: isStackedIpChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], RCS AS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1525
    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "jibe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1526
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1529
    const/4 v2, 0x2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1531
    :cond_1
    return-void
.end method

.method public notifyLocationModeChanged()V
    .locals 1

    .line 1418
    const/16 v0, 0x321

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1419
    return-void
.end method

.method public notifyLteDataNetworkModeSettingChanged(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "phoneId"    # I

    .line 1413
    const/4 v0, 0x0

    const/16 v1, 0x8b

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    return-void
.end method

.method protected notifyManualDeRegisterRequested(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "phoneId"    # I

    .line 1607
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(IIZ)V

    .line 1608
    return-void
.end method

.method protected notifyManualDeRegisterRequested(IIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "phoneId"    # I
    .param p3, "disconnectPdn"    # Z

    .line 1611
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterProfile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1613
    const v0, 0x11010006

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DEREG REQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1616
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1617
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1618
    const-string v1, "explicitDeregi"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1619
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1621
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1622
    return-void
.end method

.method protected notifyManualDeRegisterRequested(Ljava/util/List;ZI)V
    .locals 5
    .param p2, "disconnectPdn"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 1593
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1594
    .local v1, "id":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p3}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1595
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v2, :cond_0

    .line 1596
    goto :goto_0

    .line 1598
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1599
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1600
    const-string v4, "explicitDeregi"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1601
    const-string/jumbo v4, "phoneId"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1602
    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1603
    .end local v1    # "id":I
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1604
    :cond_1
    return-void
.end method

.method protected notifyManualRegisterRequested(Lcom/sec/ims/settings/ImsProfile;ZI)I
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "hasVSIM"    # Z
    .param p3, "phoneId"    # I

    .line 1554
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isProper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    const/4 v0, -0x1

    return v0

    .line 1565
    :cond_0
    if-eqz p2, :cond_1

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setAppId(Ljava/lang/String;)V

    .line 1567
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 1572
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 1573
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->allocateAdhocProfileId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 1576
    :cond_2
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProfile: id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    return v0
.end method

.method protected notifyManualRegisterRequested(Ljava/util/List;I)V
    .locals 5
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1544
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1545
    .local v1, "id":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1546
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v2, :cond_0

    .line 1547
    goto :goto_0

    .line 1549
    :cond_0
    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1550
    .end local v1    # "id":I
    .end local v2    # "profile":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_0

    .line 1551
    :cond_1
    return-void
.end method

.method public notifyMnoMapUpdated(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 1390
    if-eqz p1, :cond_0

    .line 1391
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1392
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1394
    :cond_0
    return-void
.end method

.method public notifyMobileDataPressedSettingeChanged(II)V
    .locals 2
    .param p1, "mobileDataPressed"    # I
    .param p2, "phoneId"    # I

    .line 1443
    const/16 v0, 0x99

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1444
    return-void
.end method

.method public notifyMobileDataSettingeChanged(II)V
    .locals 2
    .param p1, "mobileDataOn"    # I
    .param p2, "phoneId"    # I

    .line 1438
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1439
    return-void
.end method

.method protected notifyPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1512
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1513
    return-void
.end method

.method protected notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1516
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    return-void
.end method

.method public notifyRcsUserSettingChanged(II)V
    .locals 3
    .param p1, "userSetting"    # I
    .param p2, "phoneId"    # I

    .line 1359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x93

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1360
    return-void
.end method

.method public notifyRefreshRegNotification(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 1498
    const/16 v0, 0x8d

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1499
    return-void
.end method

.method public notifyRegEventContactUriNotification(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1508
    const/16 v0, 0x32a

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1509
    return-void
.end method

.method public notifyRegistered(IILcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "profileId"    # I
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1472
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 1473
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1475
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1477
    :cond_0
    return-void
.end method

.method public notifyRegistrationError(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1488
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    return-void
.end method

.method public notifyRoamingDataSettigChanged(II)V
    .locals 2
    .param p1, "enabled"    # I
    .param p2, "phoneId"    # I

    .line 1364
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1365
    return-void
.end method

.method public notifyRoamingLteSettigChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1423
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1424
    return-void
.end method

.method protected notifySendDeRegisterRequested(Lcom/sec/internal/constants/Mno;II)V
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "reason"    # I
    .param p3, "phoneId"    # I

    .line 1634
    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$2O9AyOcadu7BnFsj2pd-NujDuh4;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1677
    return-void
.end method

.method protected notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1680
    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$WcxnwOBh3XqLyo58JnnmGl7cJFs;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$WcxnwOBh3XqLyo58JnnmGl7cJFs;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1693
    return-void
.end method

.method public notifySetupWizardCompleted()V
    .locals 4

    .line 1347
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 1348
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1349
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1350
    const/16 v1, 0x32b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1351
    goto :goto_2

    .line 1353
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 1347
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    .end local v0    # "phoneId":I
    :cond_2
    return-void
.end method

.method public notifySubscribeError(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1493
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1494
    return-void
.end method

.method public notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "timeOut"    # J

    .line 1458
    const/16 v0, 0x86

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1459
    return-void
.end method

.method protected notifyUpdateRegisterRequested(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 1625
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1626
    return v0

    .line 1629
    :cond_0
    const/16 v1, 0x19

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1630
    const/4 v0, 0x0

    return v0
.end method

.method public notifyVolteRoamingSettingChanged(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "phoneId"    # I

    .line 1428
    const/4 v0, 0x0

    const/16 v1, 0x8a

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1429
    return-void
.end method

.method public notifyVolteSettingChanged(ZZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "isVideo"    # Z
    .param p3, "phoneId"    # I

    .line 1448
    if-eqz p2, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d

    :goto_0
    const/4 v1, -0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1449
    return-void
.end method

.method public notifyVolteSettingOff(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delay"    # J

    .line 1462
    const/16 v0, 0x83

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1463
    return-void
.end method

.method public notifyVowifiSettingChanged(IJ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mills"    # J

    .line 1408
    const/16 v0, 0x7a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1409
    return-void
.end method

.method public notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 1535
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1536
    return-void
.end method

.method protected onBlockRegistrationRoamingTimer(II)V
    .locals 5
    .param p1, "handle"    # I
    .param p2, "delay"    # I

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    .line 904
    .local v0, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    if-eqz v0, :cond_0

    .line 905
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Orange Group, VoWIFI Error in Roaming"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 906
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(I)V

    .line 908
    :cond_0
    return-void
.end method

.method onBootCompleted()V
    .locals 7

    .line 1226
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1227
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1228
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_2

    .line 1231
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 1233
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :goto_2
    goto :goto_1

    .line 1226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    .end local v0    # "phoneId":I
    :cond_2
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)V
    .locals 3
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->onConfigUpdated(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1275
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 1280
    :cond_2
    :goto_0
    return-void
.end method

.method onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "local"    # Z

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelayedDeregisterInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 1102
    return-void
.end method

.method onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1105
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr-Handler"

    const-string v2, "onDeregisterTimeout:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1106
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1108
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    const/16 v2, 0x86

    if-nez v0, :cond_4

    .line 1109
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v3, "onDeregisterTimeout: no object"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1111
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1112
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v0, :cond_0

    .line 1113
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 1114
    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1115
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1116
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1117
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1118
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1119
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1120
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1121
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1122
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1123
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 1124
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1127
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v4, ""

    const/16 v5, 0x29

    const/4 v6, 0x0

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v1

    const/16 v3, 0x48

    if-ne v1, v3, :cond_2

    .line 1128
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v7, Lcom/sec/ims/ImsRegistrationError;

    const/16 v8, 0x20

    invoke-direct {v7, v6, v4, v3, v8}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, v0, v6, p1, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    goto :goto_0

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v3, Lcom/sec/ims/ImsRegistrationError;

    sget-object v7, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v7}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v7

    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    .line 1131
    invoke-virtual {v8}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-direct {v3, v7, v8, v5, v9}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1130
    invoke-virtual {v1, v0, v6, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1133
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1134
    const-string v1, "NoUserAgent"

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1137
    :cond_3
    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1138
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1139
    return-void

    .line 1142
    .end local v0    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1144
    .local v0, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getStateName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InitialState"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1145
    const-string v1, "UaStateMismatch"

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1148
    :cond_5
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->deregisterLocal()V

    .line 1149
    return-void
.end method

.method protected onDeregistered(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 630
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 631
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 633
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/16 v2, 0x86

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v3, :cond_0

    .line 635
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "onDeregistered : mHasPendingRecoveryAction"

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 641
    :cond_1
    :goto_0
    const/16 v2, 0x6b

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 643
    if-eqz v1, :cond_2

    .line 644
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v3, "isRequestedDeregi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "error"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/SipError;

    const-string/jumbo v5, "retryAfter"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZLcom/sec/ims/util/SipError;I)V

    .line 646
    :cond_2
    return-void
.end method

.method onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "local"    # Z
    .param p3, "keepPdnConnection"    # Z

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistrationRequest: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 685
    return-void
.end method

.method onDisconnectPdnByHDvoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1003
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByHDvoiceRoamingOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1005
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1006
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 1007
    return-void
.end method

.method onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 13
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 949
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 951
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 952
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 956
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyReattachToRil()V

    .line 957
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x2

    if-eq v4, v5, :cond_1

    .line 958
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 959
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 960
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 963
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 968
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 969
    .local v5, "t":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 970
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 972
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v10, :cond_2

    .line 973
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 976
    :cond_2
    new-array v9, v8, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v12, v9, v10

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 977
    const-string v9, "onDisconnectPdnByTimeout - REGISTERED or REGISTERING"

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 978
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v9, v5, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 979
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 980
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v10, :cond_4

    .line 981
    const-string v9, "onDisconnectPdnByTimeout - EMERGENCY"

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 982
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 983
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v9, v5, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 984
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 985
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 986
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto :goto_1

    .line 987
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v10, :cond_5

    .line 988
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 990
    :cond_5
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 991
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v9, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 995
    :goto_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 997
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 999
    .end local v5    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_6
    goto/16 :goto_0

    .line 1000
    :cond_7
    return-void

    .line 953
    :cond_8
    :goto_2
    return-void
.end method

.method onDsacModeChanged()V
    .locals 4

    .line 1068
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1069
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    const-string/jumbo v0, "re-regi by dsac"

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    .line 1072
    goto :goto_1

    .line 1074
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 1075
    :cond_1
    :goto_1
    return-void
.end method

.method onFlightModeChanged(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .line 1263
    if-eqz p1, :cond_0

    .line 1264
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onFlightModeChanged(Z)V

    .line 1267
    return-void
.end method

.method onGeoLocationUpdated()V
    .locals 7

    .line 1010
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onGeoLocationUpdated:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1013
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1014
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->isDeregisterNeeded(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1015
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    .line 1016
    goto :goto_1

    .line 1018
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updatePani(I)V

    .line 1019
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ims"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1025
    const/4 v3, 0x0

    .line 1026
    .local v3, "forced":Z
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    .line 1027
    .local v4, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v4, :cond_1

    .line 1028
    goto :goto_1

    .line 1030
    :cond_1
    iget v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1031
    return-void

    .line 1033
    :cond_2
    iget v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1034
    const/4 v3, 0x1

    .line 1036
    :cond_3
    const-string v5, "geolocation changed"

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1037
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getTelephonyCallStatus(I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v2, v3, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    .line 1038
    .end local v3    # "forced":Z
    .end local v4    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    goto :goto_3

    .line 1039
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 1041
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :goto_3
    goto/16 :goto_1

    .line 1012
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1043
    .end local v0    # "phoneId":I
    :cond_7
    return-void
.end method

.method protected onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 809
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationCacheExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v0, 0x323

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 811
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    .line 812
    return-void
.end method

.method protected onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 788
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationTimerExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 790
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyLocationTimeout()V

    .line 791
    return-void
.end method

.method protected onPcoInfo(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pdn"    # Ljava/lang/String;
    .param p2, "pcoValue"    # I
    .param p3, "phoneId"    # I

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 843
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 844
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 848
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onUpdatedPcoInfo(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    const/16 v3, 0x16

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 852
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 855
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    goto :goto_0

    .line 856
    :cond_2
    return-void
.end method

.method protected onRCSAllowedChangedbyMDM()V
    .locals 8

    .line 881
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRCSAllowedChangedbyMDM:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v1, v2, :cond_5

    .line 883
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 884
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v4

    const-string v5, "chat"

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 885
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    const-string v4, "RCS allowed changed"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 887
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_2

    .line 889
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_2

    .line 890
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip RCS tryRegister due to non defaultPhoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 892
    goto :goto_1

    .line 895
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 898
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    :goto_2
    goto :goto_1

    .line 882
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 900
    .end local v1    # "phoneId":I
    :cond_5
    return-void
.end method

.method protected onRcsDelayedDeregister()V
    .locals 6

    .line 870
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 871
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 872
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 874
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 876
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 870
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    .end local v0    # "phoneId":I
    :cond_2
    return-void
.end method

.method onRegEventContactUriNotified(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1078
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 1079
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v2, "handle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 1080
    .local v1, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    const-string v2, "contact_uri_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1082
    .local v2, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const-string v3, "isRegi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1083
    .local v3, "isRegi":I
    const-string v4, "contactUriType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "contactUriType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1085
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;)V

    .line 1089
    :cond_0
    if-eqz v1, :cond_2

    .line 1090
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    .line 1091
    .local v5, "cmcType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isRegi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegiMgr-Handler"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 1094
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onP2pRegCompleteEvent()V

    .line 1097
    .end local v5    # "cmcType":I
    :cond_2
    return-void
.end method

.method protected onRegisterError(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 657
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 658
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 660
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/16 v2, 0x86

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    const-string v4, "RegiMgr-Handler"

    if-eqz v3, :cond_1

    .line 661
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v3, :cond_0

    .line 662
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v5, "onRegisterError : mHasPendingRecoveryAction"

    invoke-virtual {v2, v3, v1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v5, "onRegisterError. Remove RegisteringRecovery message"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 665
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 669
    :cond_1
    :goto_0
    const/16 v2, 0x6b

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 670
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v5, "onRegisterError. Remove EVENT_DEREGISTER_TIMEOUT"

    invoke-static {v4, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 671
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 672
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 673
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 676
    :cond_3
    if-eqz v1, :cond_4

    .line 677
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v3, "handle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "error"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/SipError;

    const-string/jumbo v5, "retryAfter"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    .line 679
    :cond_4
    return-void
.end method

.method protected onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 613
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "onRegistered : mHasPendingRecoveryAction"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 621
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    goto :goto_1

    .line 624
    :cond_2
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 627
    return-void
.end method

.method protected onRequestLocation()V
    .locals 6

    .line 795
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRequestLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v1, 0x321

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 797
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 798
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 799
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 800
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    const-string v4, "onRequestLocation: request location fetch"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->requestLocation(I)V

    .line 804
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_1

    .line 797
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v1    # "phoneId":I
    :cond_2
    return-void
.end method

.method protected onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 782
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRequestNotifyVolteSettingsOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 784
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyVoLteOnOffToRil(Z)V

    .line 785
    return-void
.end method

.method onSSACRegiRequested(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSSACRegiRequested : enabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 923
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 924
    .local v0, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/RegisterTask;>;"
    if-nez v0, :cond_0

    .line 925
    return-void

    .line 927
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 928
    const/16 v2, 0x79

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 930
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 931
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    const-string v5, "mmtel"

    invoke-virtual {v4, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSSACRegiRequested: force update "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 933
    const-string v1, "SSAC updated"

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 935
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 936
    const-string v1, "SSAC barred on PS only area"

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 937
    const/16 v1, 0x4c

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 938
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v3, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 943
    goto :goto_1

    .line 945
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_2
    goto :goto_0

    .line 946
    :cond_3
    :goto_1
    return-void
.end method

.method onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 6
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 1046
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimSubscribeIdChanged, SimSlot: , subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1048
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1050
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 1051
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    .line 1053
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v1

    .line 1054
    .local v1, "iconManager":Lcom/sec/internal/ims/core/ImsIconManager;
    if-eqz v1, :cond_0

    .line 1055
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->unRegisterPhoneStateListener()V

    .line 1056
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 1059
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1060
    .local v3, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1061
    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 1063
    .end local v3    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_1
    goto :goto_0

    .line 1064
    :cond_2
    return-void
.end method

.method onSubscribeError(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 649
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 650
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 651
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v1, :cond_0

    .line 652
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSubscribeError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V

    .line 654
    :cond_0
    return-void
.end method

.method onTelephonyCallStatusChanged(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callState"    # I

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setCallState(I)V

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTelephonyCallStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1241
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1242
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v2, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "onTelephonyCallStatusChanged : do recovery after call end"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1244
    const v0, 0x11010007

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",DO RECOVERY: CALL END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1245
    const-string v0, "PostponedRecovery"

    iput-object v0, v1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    .line 1246
    const/16 v0, 0x86

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1247
    return-void

    .line 1249
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTelephonyCallStatusChanged(I)V

    .line 1250
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 1251
    :cond_1
    if-nez p2, :cond_3

    .line 1252
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1253
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1255
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1260
    :cond_3
    return-void
.end method

.method protected onThirdParyFeatureTagsUpdated(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 911
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onThirdParyFeatureTagsUpdated"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 912
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 913
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onThirdParyFeatureTagsUpdated: force update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 915
    const-string v3, "3rd party feature tag updated"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 916
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 918
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_0
    goto :goto_0

    .line 919
    :cond_1
    return-void
.end method

.method protected onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTimsTimerExpired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    goto :goto_0

    .line 820
    :cond_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 822
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v2, :cond_1

    .line 823
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTimsTimerExpired()V

    goto :goto_1

    .line 825
    :cond_1
    const-string v0, "Registered. Igonre onTimsTimerExpired."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_1
    return-void
.end method

.method onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 7
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 688
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onUpdateRegistration:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 691
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-nez v1, :cond_0

    .line 692
    const-string/jumbo v2, "onUpdateRegistration: registration task not found."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 696
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V

    .line 698
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 701
    .local v2, "old":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2, p1}, Lcom/sec/ims/settings/ImsProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 702
    const-string/jumbo v3, "onUpdateRegistration: imsprofile changed."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 707
    const/4 v0, 0x2

    new-array v3, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    const-string v3, "External IMPU list changed"

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 709
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 710
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 711
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    :cond_2
    const-string/jumbo v3, "onUpdateRegistration: For KDDI, LGT(ImsNotAvailable) Send the Refresh Reg even thoug there is no change in services."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 722
    :cond_3
    :goto_0
    return-void
.end method

.method protected onWfcSwitchProfile([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "phoneId"    # I

    .line 859
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onWfcSwitchProfile:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 860
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 861
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v0, :cond_0

    .line 862
    return-void

    .line 864
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 865
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onWfcProfileChanged([B)V

    .line 866
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 867
    :cond_1
    return-void
.end method

.method public registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1706
    if-eqz p1, :cond_0

    .line 1707
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1709
    :cond_0
    monitor-exit v0

    .line 1710
    return-void

    .line 1709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected registerIntentReceivers()V
    .locals 8

    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "action_wfc_switch_profile_broadcast"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.ims.hvolte.MODE_SWITCH"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v1, "retryIntentfilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.retryTimeExpired"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v2, "android.intent.action.retrySetupData"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.intent.action.EMM_ERROR"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEntitlementStatus:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 404
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 405
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.ims.MOCK_IMS_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected registerInternalListeners()V
    .locals 3

    .line 411
    const/16 v0, 0x2c3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    new-instance v2, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$cXD-aXe3-b19hIMlF-mQI69Nu3Y;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManagerHandler$cXD-aXe3-b19hIMlF-mQI69Nu3Y;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 428
    const/16 v0, 0x2be

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->init()V

    .line 435
    return-void
.end method

.method public removeDmConfigTimeout()V
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1832
    return-void
.end method

.method public removeRecoveryAction()V
    .locals 2

    .line 1287
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Do not remove RecoveryAction while pending"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1290
    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1295
    :cond_1
    return-void
.end method

.method public removeVolteSettingOffEvent()V
    .locals 1

    .line 1823
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1824
    return-void
.end method

.method protected requestDelayedDeRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZJ)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z
    .param p3, "mills"    # J

    .line 1696
    const/4 v0, -0x1

    const/16 v1, 0x91

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1697
    return-void
.end method

.method public requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1799
    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1800
    return-void
.end method

.method public requestPendingDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZJ)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "local"    # Z
    .param p3, "keepPdnConnection"    # Z
    .param p4, "delay"    # J

    .line 1803
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1804
    return-void
.end method

.method public sendCheckUnprocessedOmadmConfig()V
    .locals 1

    .line 1811
    const/16 v0, 0x197

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1812
    return-void
.end method

.method public sendDisconnectPdnByHdVoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1784
    const/16 v0, 0x196

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1785
    return-void
.end method

.method public sendDmConfigTimeout(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1828
    return-void
.end method

.method public sendFinishOmadmProvisioningUpdate(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "millis"    # J

    .line 1788
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1789
    return-void
.end method

.method public sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1856
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1857
    return-void
.end method

.method public sendRequestDmConfig()V
    .locals 1

    .line 1807
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 1808
    return-void
.end method

.method public sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "suspended"    # Z

    .line 1869
    const/4 v0, 0x0

    const/16 v1, 0x97

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1870
    return-void
.end method

.method public sendTryRegister(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1862
    return-void
.end method

.method public sendTryRegister(IJ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "delay"    # J

    .line 1865
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1866
    return-void
.end method

.method public sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I
    .param p3, "delay"    # J

    .line 1780
    const/16 v0, 0x19

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1781
    return-void
.end method

.method setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0
    .param p1, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 176
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 177
    return-void
.end method

.method protected setDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1312
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6b

    if-ne v0, v1, :cond_0

    .line 1313
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1314
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    int-to-long v1, v1

    .line 1313
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1315
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "RegiMgr-Handler"

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v1

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v6, :cond_2

    .line 1316
    const-string v0, "KOR, OPTUS,KODO TELUS Emergency no need to Dereg Timer"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1317
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1318
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v6, 0x48

    if-ne v0, v6, :cond_3

    .line 1319
    const-string v0, "block Registration Retries for the T3402 Timer on Epdg"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v4

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1321
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_4

    .line 1322
    const-string v0, "EPDG Deregister, set as default dereg timeout"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1324
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    .line 1325
    const-string v0, "APM/PWR OFF case. We don\'t have much time! Wait 2.5 sec!"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1330
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_6

    .line 1331
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1333
    :cond_6
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1334
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    int-to-long v1, v1

    .line 1333
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1337
    :goto_0
    return-void
.end method

.method public startDisconnectPdnTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "millis"    # J

    .line 1792
    const/16 v0, 0x194

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public startDmConfigTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "delay"    # J

    .line 1796
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public startLocationRequestTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delay"    # J

    .line 1815
    const/16 v0, 0x320

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 3
    .param p1, "event"    # I
    .param p2, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p3, "delay"    # J

    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1771
    .local v0, "timerMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1772
    return-object v0
.end method

.method public startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "delay"    # J

    .line 1844
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected startTimsEshtablishTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "delay"    # J

    .line 1848
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    const/16 v0, 0x98

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0

    .line 1851
    :cond_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public stopTimer(Landroid/os/Message;)V
    .locals 1
    .param p1, "timerMessage"    # Landroid/os/Message;

    .line 1776
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1716
    if-eqz p1, :cond_0

    .line 1717
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1719
    :cond_0
    monitor-exit v0

    .line 1720
    return-void

    .line 1719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method verifyX509Certificate([Ljava/security/cert/X509Certificate;)V
    .locals 16
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 1152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "RegiMgr-Handler"

    const-string/jumbo v0, "verifyX509Certificate()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v4, 0x0

    .local v4, "verified":Z
    const/4 v5, 0x0

    .line 1155
    .local v5, "nameMatch":Z
    sget-object v6, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    .line 1156
    .local v6, "ohnv":Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_a

    array-length v0, v2

    const/4 v9, 0x1

    if-ge v0, v9, :cond_0

    goto/16 :goto_6

    .line 1163
    :cond_0
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1164
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    move-object v10, v7

    check-cast v10, Ljava/security/KeyStore;

    invoke-virtual {v0, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1166
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v10

    .line 1167
    .local v10, "tms":[Ljavax/net/ssl/TrustManager;
    aget-object v11, v10, v8

    check-cast v11, Ljavax/net/ssl/X509TrustManager;

    .line 1169
    .local v11, "xtm":Ljavax/net/ssl/X509TrustManager;
    const-string v12, "RSA"

    invoke-interface {v11, v2, v12}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    const/4 v4, 0x1

    .line 1173
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v11    # "xtm":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v10, "Verification failed"

    invoke-static {v3, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 1176
    .local v0, "maxSimCount":I
    const/4 v10, 0x0

    .line 1179
    .local v10, "verifyId":I
    const/4 v10, 0x0

    :goto_1
    const-string/jumbo v11, "verifyId "

    if-ge v10, v0, :cond_7

    .line 1180
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", maxSimCount "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v12, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1182
    .local v12, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v12, :cond_6

    iget-object v13, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v13, v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1183
    goto/16 :goto_3

    .line 1188
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isPctMode()Z

    move-result v13

    .line 1189
    .local v13, "isPctMode":Z
    if-eqz v13, :cond_2

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v14

    sget-object v15, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v14, v15, :cond_2

    .line 1190
    const-string v8, "Skip verifY certificate names..."

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    .line 1192
    return-void

    .line 1195
    :cond_2
    if-eqz v4, :cond_6

    .line 1196
    const-string v14, "Verifying certificate names..."

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v14, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v14, v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1199
    .local v15, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v9, v7, :cond_3

    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v9, :cond_5

    .line 1200
    :cond_3
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v7

    .line 1201
    .local v7, "hostname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking task: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1203
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 1206
    :cond_4
    const/4 v8, 0x0

    aget-object v9, v2, v8

    invoke-virtual {v6, v7, v9}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v5

    .line 1207
    if-eqz v5, :cond_5

    .line 1208
    goto :goto_4

    .line 1211
    .end local v7    # "hostname":Ljava/lang/String;
    .end local v15    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 1179
    .end local v12    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v13    # "isPctMode":Z
    :cond_6
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1216
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    if-nez v5, :cond_8

    .line 1217
    iget-object v7, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->verifyCmcCertificate([Ljava/security/cert/X509Certificate;)Z

    move-result v5

    .line 1220
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", verified "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", nameMatch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v3

    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    const/4 v7, 0x0

    invoke-virtual {v3, v8, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    .line 1223
    return-void

    .line 1157
    .end local v0    # "maxSimCount":I
    .end local v10    # "verifyId":I
    :cond_a
    :goto_6
    const-string/jumbo v0, "there is no certificate"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    .line 1159
    return-void
.end method
