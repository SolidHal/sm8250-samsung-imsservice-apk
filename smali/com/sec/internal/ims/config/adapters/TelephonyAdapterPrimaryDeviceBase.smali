.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.super Landroid/os/Handler;
.source "TelephonyAdapterPrimaryDeviceBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiver;
    }
.end annotation


# static fields
.field protected static final EVENT_DDS_CHANGED:I = 0x64

.field protected static final EVENT_SIM_REMOVE_OR_REFRESH:I = 0x65

.field protected static final HANDLE_EVENT_SIM_READY:I = 0x9

.field protected static final HANDLE_EVENT_SIM_REMOVED:I = 0xa

.field protected static final HANDLE_EVENT_SIM_STATE_CHANGED:I = 0xb

.field protected static final HANDLE_GET_APP_TOKEN:I = 0xc

.field protected static final HANDLE_GET_APP_TOKEN_TIMEOUT:I = 0xd

.field protected static final HANDLE_GET_MSISDN:I = 0x6

.field protected static final HANDLE_GET_MSISDN_TIMEOUT:I = 0x7

.field protected static final HANDLE_GET_OTP:I = 0x2

.field protected static final HANDLE_GET_OTP_TIMEOUT:I = 0x3

.field protected static final HANDLE_GET_PORT_OTP:I = 0x4

.field protected static final HANDLE_GET_PORT_OTP_TIMEOUT:I = 0x5

.field protected static final HANDLE_INTENT_DATA_SMS_RECEIVED_ACTION:I = 0x1

.field protected static final HANDLE_NOTIFY_OTP_NEEDED:I = 0x8

.field protected static final HANDLE_SMS_CONFIGURATION_REQUEST:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final NOTIFY_AUTO_CONFIGURATION_COMPLETED:I = 0x34

.field protected static final NOTIFY_MSISDN_NUMBER_NEEDED:I = 0x33

.field protected static final NOTIFY_VERIFICATION_CODE_NEEDED:I = 0x32

.field protected static SMS_CONFIGURATION_REQUEST:Ljava/lang/String;


# instance fields
.field protected final mAutoConfigurationListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mCurrentMsisdnPermits:I

.field protected mCurrentOtpPermits:I

.field protected mCurrentPermits:I

.field protected mCurrentPortPermits:I

.field protected mIsWaitingForMsisdn:Z

.field protected mIsWaitingForOtp:Z

.field protected final mLock:Ljava/lang/Object;

.field protected mLooper:Landroid/os/Looper;

.field protected mModuleHandler:Landroid/os/Handler;

.field protected mMsisdn:Ljava/lang/String;

.field protected mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

.field protected mOtp:Ljava/lang/String;

.field protected mOtpReceivedTime:J

.field protected mPhoneId:I

.field protected mPortOtp:Ljava/lang/String;

.field protected mPortOtpReceivedTime:J

.field protected mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

.field protected mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

.field protected mPostponedNotification:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mSemaphore:Ljava/util/concurrent/Semaphore;

.field protected mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field protected mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

.field protected mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

.field protected mSubId:I

.field protected mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-string v0, "-rcscfg"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->SMS_CONFIGURATION_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 125
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    .line 91
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    .line 93
    iput v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPermits:I

    .line 94
    iput v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentOtpPermits:I

    .line 95
    iput v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentPortPermits:I

    .line 96
    iput v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mCurrentMsisdnPermits:I

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    .line 103
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtp:Ljava/lang/String;

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtpReceivedTime:J

    .line 109
    iput-wide v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortOtpReceivedTime:J

    .line 110
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mMsisdn:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForMsisdn:Z

    .line 113
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    .line 115
    iput v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSubId:I

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    .line 128
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mLooper:Landroid/os/Looper;

    .line 129
    iput p3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 131
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPostponedNotification:Ljava/util/Map;

    .line 133
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->registerSimEventListener()V

    .line 135
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .line 819
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "cleanup"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "unregister mSmsReceiver"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 823
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    if-eqz v0, :cond_1

    .line 826
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "unregister mPortSmsReceiver"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 828
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v0, :cond_2

    .line 831
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "deregister SimReady/SimRemoved/SimStateChanged"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deregisterForSimReady(Landroid/os/Handler;)V

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deregisterForSimRemoved(Landroid/os/Handler;)V

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deregisterForSimStateChanged(Landroid/os/Handler;)V

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->cleanup()V

    .line 837
    return-void
.end method

.method protected createPortSmsReceiver()V
    .locals 1

    .line 158
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    .line 159
    return-void
.end method

.method protected createSmsReceiver()V
    .locals 1

    .line 147
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    .line 148
    return-void
.end method

.method public getAppToken(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isRetry"    # Z

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getAppToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 814
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExistingOtp()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getExistingOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExistingPortOtp()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getExistingPortOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 799
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscriptionId"    # I

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getNetType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 3

    .line 746
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getPortOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryIdentity()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getPrimaryIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryCode()Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getSimCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getSipUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDestPort()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getSmsDestPort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsOrigPort()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getSmsOrigPort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getState(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .line 365
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 368
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 370
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    .line 373
    :cond_2
    :goto_0
    return-void
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscriptionId"    # I

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 238
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_STATE_CHANGED, Current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v0

    .line 240
    .local v0, "simState":I
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v4, "gsm.sim.state"

    const-string v5, "UNKNOWN"

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "iccState":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v3

    .line 244
    .local v3, "default_phoneId":I
    sget-object v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", icc state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    if-eq v4, v3, :cond_0

    .line 248
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omit no default sim event. phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " default_phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_0
    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;

    if-eqz v1, :cond_6

    .line 251
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_1
    if-ne v1, v0, :cond_2

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;

    if-eqz v1, :cond_6

    .line 255
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_2
    const-string v1, "IMSI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v4, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;

    if-nez v4, :cond_3

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;

    if-eqz v1, :cond_6

    .line 259
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v0    # "simState":I
    .end local v2    # "iccState":Ljava/lang/String;
    .end local v3    # "default_phoneId":I
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_REMOVED, Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;

    if-nez v0, :cond_6

    .line 233
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_READY, Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;

    if-nez v0, :cond_6

    .line 226
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleOtpTimeout(Z)V

    .line 221
    goto :goto_0

    .line 216
    :cond_5
    invoke-virtual {p0, p1, v1, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleReceivedDataSms(Landroid/os/Message;ZZ)V

    .line 217
    nop

    .line 265
    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOtpTimeout(Z)V
    .locals 4
    .param p1, "useWaitingForOtp"    # Z

    .line 201
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOtpTimeout: useWaitingForOtpFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TOTP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040403

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->removeMessages(I)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtpReceivedTime:J

    .line 206
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 209
    :cond_1
    return-void
.end method

.method protected handleReceivedDataSms(Landroid/os/Message;ZZ)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "isForceConfigRequest"    # Z
    .param p3, "useWaitingForOtp"    # Z

    .line 189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "handleReceivedDataSms: no received data sms"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->SMS_CONFIGURATION_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->sendSmsPushForConfigRequest(Z)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->updateOtpInfo(Landroid/os/Message;Z)V

    .line 198
    :goto_0
    return-void
.end method

.method protected initState()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    .line 345
    .local v0, "simState":I
    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSubId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "simState is ready but imsi is empty"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "simState is ready and imsi is existed"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 356
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "simState is absent"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    .line 358
    return-void

    .line 360
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "simState is not ready"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->isReady()Z

    move-result v0

    return v0
.end method

.method public notifyAutoConfigurationListener(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # Z

    .line 780
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->notifyAutoConfigurationListener(IZ)V

    .line 781
    return-void
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    .line 769
    return-void
.end method

.method protected registerPortSmsReceiver()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->createPortSmsReceiver()V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPortSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    :cond_0
    return-void
.end method

.method protected registerSimEventListener()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v0, :cond_0

    .line 139
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSubId:I

    .line 144
    :cond_0
    return-void
.end method

.method protected registerSmsReceiver()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->createSmsReceiver()V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    :cond_0
    return-void
.end method

.method public registerUneregisterForOTP(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 795
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->sendMsisdnNumber(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method protected sendSmsPushForConfigRequest(Z)V
    .locals 4
    .param p1, "isForceConfigRequest"    # Z

    .line 169
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSmsPushForConfigRequest: isForceConfigRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RPUSH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040401

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mModuleHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :goto_0
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->sendVerificationCode(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    .line 775
    return-void
.end method

.method protected updateOtpInfo(Landroid/os/Message;Z)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "useWaitingForOtp"    # Z

    .line 179
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOtpInfo: mIsWaitingForOtp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " useWaitingForOtp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ROTP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040402

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtpReceivedTime:J

    .line 183
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mIsWaitingForOtp:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 186
    :cond_1
    return-void
.end method
