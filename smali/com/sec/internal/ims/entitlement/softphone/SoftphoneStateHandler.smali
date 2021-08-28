.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.super Lcom/sec/internal/ims/entitlement/softphone/VSimClient;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReloginState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$DeactivatingState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ServiceOut;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RegisteredState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatingState;,
        Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$InitialState;
    }
.end annotation


# instance fields
.field private final INTENT_FILTER_AKA_CHALLENGE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_LOCATION_SERVICE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SHUTDOWN_SERVICE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SOFTPHONE_REGISTRATION:Landroid/content/IntentFilter;

.field public final LOG_TAG:Ljava/lang/String;

.field private final mAccountId:Ljava/lang/String;

.field protected final mActivatedState:Lcom/sec/internal/helper/State;

.field protected final mActivatingState:Lcom/sec/internal/helper/State;

.field private final mAirplaneState:Lcom/sec/internal/helper/State;

.field private final mAkaEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

.field private final mContext:Landroid/content/Context;

.field protected final mDeactivatingState:Lcom/sec/internal/helper/State;

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected final mInitialState:Lcom/sec/internal/helper/State;

.field protected final mReadyState:Lcom/sec/internal/helper/State;

.field private final mRefreshState:Lcom/sec/internal/helper/State;

.field protected final mRegisteredState:Lcom/sec/internal/helper/State;

.field protected final mReleasingState:Lcom/sec/internal/helper/State;

.field private final mReloginState:Lcom/sec/internal/helper/State;

.field private final mServiceOutState:Lcom/sec/internal/helper/State;

.field private final mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftphoneRegistrationReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftphoneShutdownReceiver:Landroid/content/BroadcastReceiver;

.field protected final mUserSwitchState:Lcom/sec/internal/helper/State;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "client"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 54
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;-><init>(Landroid/os/Looper;)V

    .line 86
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneRegistrationReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$4;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$InitialState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$InitialState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    .line 285
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatingState:Lcom/sec/internal/helper/State;

    .line 541
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    .line 593
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    .line 668
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RegisteredState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RegisteredState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 702
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    .line 753
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    .line 777
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ServiceOut;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ServiceOut;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mServiceOutState:Lcom/sec/internal/helper/State;

    .line 845
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    .line 876
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    .line 929
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$DeactivatingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$DeactivatingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    .line 955
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReloginState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReloginState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    .line 55
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 57
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->LOG_TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

    .line 62
    const-string/jumbo v1, "refresh_token"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

    const-string/jumbo v1, "resend_sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

    const-string/jumbo v1, "refresh_identity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_REGISTRATION:Landroid/content/IntentFilter;

    .line 68
    const-string v1, "com.sec.ims.vsim.attsoftphone.action.TRY_REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneRegistrationReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_REGISTRATION:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_LOCATION_SERVICE:Landroid/content/IntentFilter;

    .line 72
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SHUTDOWN_SERVICE:Landroid/content/IntentFilter;

    .line 75
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneShutdownReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SHUTDOWN_SERVICE:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_AKA_CHALLENGE:Landroid/content/IntentFilter;

    .line 80
    const-string v1, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_AKA_CHALLENGE:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->initState()V

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mServiceOutState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method private initState()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mServiceOutState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->start()V

    .line 192
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void
.end method

.method public getAccountStatus()I
    .locals 10

    .line 154
    const/4 v0, -0x1

    .line 155
    .local v0, "status":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 157
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 158
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountStatus found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " records"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-string/jumbo v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 162
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountStatus status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 165
    return v0
.end method
