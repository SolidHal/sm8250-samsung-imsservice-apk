.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.source "TelephonyAdapterPrimaryDeviceRjil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 42
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    .line 43
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->initState()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string/jumbo v2, "unregister mSimEventListener"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deregisterForSimRefresh(Landroid/os/Handler;)V

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deregisterForSimRemoved(Landroid/os/Handler;)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->cleanup()V

    .line 236
    return-void
.end method

.method protected getState(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->getState(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    .line 84
    .local v0, "simState":I
    sget-object v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIM_REMOVED  SIM state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    if-ne v1, v0, :cond_4

    .line 86
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;

    if-nez v1, :cond_4

    .line 87
    new-instance v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 74
    .end local v0    # "simState":I
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 75
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_4

    .line 76
    sget-object v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DDS_CHANGED sim state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;

    if-nez v1, :cond_4

    .line 78
    new-instance v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 66
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->handleOtpTimeout(Z)V

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->handleReceivedDataSms(Landroid/os/Message;ZZ)V

    .line 71
    nop

    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method protected registerSimEventListener()V
    .locals 4

    .line 48
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string/jumbo v3, "register SIM event listener"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/16 v2, 0x65

    invoke-interface {v0, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimEventListener:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSubId:I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DSDS_SI_DDS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method

.method public registerUneregisterForOTP(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->registerUneregisterForOTP(Z)V

    .line 241
    return-void
.end method
