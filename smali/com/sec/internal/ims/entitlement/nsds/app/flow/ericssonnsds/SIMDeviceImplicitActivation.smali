.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "SIMDeviceImplicitActivation.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;


# static fields
.field private static final ACTION_WAIT_GCM_TOKEN:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.WAIT_GCM_TOKEN"

.field private static final GCM_TOKEN_WAIT_TIME:J = 0x2710L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final START_SIM_ACTIVATION:I = 0x1


# instance fields
.field private mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    .line 139
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    .line 50
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->resumeSimDeviceActivation()V

    return-void
.end method

.method private registerNsdsSharePrefChangeListener()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    :cond_0
    return-void
.end method

.method private resumeSimDeviceActivation()V
    .locals 3

    .line 76
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeSimDeviceActivation()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->stopGcmTokenWaitTimer()V

    .line 79
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->unregisterNsdsSharePrefChangeListener()V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method private startGcmTokenWaitTimer()V
    .locals 6

    .line 105
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startGcmTokenWaitTimer()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->stopGcmTokenWaitTimer()V

    .line 109
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$2;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.vsim.ericssonnsds.WAIT_GCM_TOKEN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-wide/16 v4, 0x2710

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;J)V

    .line 121
    return-void
.end method

.method private startSimDeviceActivation()V
    .locals 10

    .line 251
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSimDeviceActivation:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSimDeviceActivation: activation in progress. do not do any thing"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    const-string v3, "activation_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSimDeviceActivation: GCM token not yet created"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->registerNsdsSharePrefChangeListener()V

    .line 265
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->startGcmTokenWaitTimer()V

    .line 266
    return-void

    .line 269
    :cond_1
    const-wide/16 v0, 0x0

    .line 270
    .local v0, "retryInterval":J
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v2

    .line 271
    .local v2, "mnoVSimStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v2, :cond_2

    .line 272
    invoke-interface {v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getRetryInterval()J

    move-result-wide v0

    .line 274
    :cond_2
    new-instance v9, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v8, "1.0"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 276
    .local v3, "simDeviceActivation":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 278
    invoke-virtual {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 277
    move-wide v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->activateSIMDevice(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 279
    return-void
.end method

.method private stopGcmTokenWaitTimer()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopGcmTokenWaitTimer()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "com.sec.vsim.ericssonnsds.WAIT_GCM_TOKEN"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mGcmTokenIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    :cond_0
    return-void
.end method

.method private translateErrorCode(ZLjava/lang/String;II)I
    .locals 2
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 298
    const/4 v0, -0x1

    .line 299
    .local v0, "errorCode":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 300
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v0

    .line 302
    :cond_0
    return v0
.end method

.method private unregisterNsdsSharePrefChangeListener()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNSDSSharedPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 307
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x67

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    nop

    .line 314
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->handleSimDeviceActivationResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v0

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 315
    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->startSimDeviceActivation()V

    .line 311
    nop

    .line 319
    :goto_0
    return-void
.end method

.method protected handleResponseGetMsisdn(Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)V
    .locals 5
    .param p1, "responseGetMsisdn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 190
    if-eqz p1, :cond_0

    .line 191
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseGetMsisdn : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "service_fingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ResponseGetMSISDN is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleResponsePushToken(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;)V
    .locals 3
    .param p1, "responsePushToken"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 214
    if-eqz p1, :cond_0

    .line 215
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responsePushToken : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ResponseManagePushToken is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void
.end method

.method protected handleSimDeviceActivationResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 13
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 142
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v0

    .line 143
    .local v0, "errorResponseCode":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimDeviceActivationResponse: errorResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const-string v2, "manageConnectivity"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 147
    .local v1, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_6

    if-lez v0, :cond_0

    goto/16 :goto_2

    .line 150
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    .line 151
    .local v4, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    const-string v5, "managePushToken"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 152
    .local v6, "responsePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    const-string v7, "getMSISDN"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 154
    .local v8, "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->handleResponsePushToken(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;)V

    .line 155
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->handleResponseGetMsisdn(Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)V

    .line 157
    const/16 v9, 0x3e8

    if-eqz v4, :cond_1

    iget v10, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    if-ne v10, v9, :cond_1

    if-eqz v6, :cond_1

    iget v10, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-ne v10, v9, :cond_1

    if-eqz v8, :cond_1

    iget v10, v8, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-ne v10, v9, :cond_1

    .line 160
    iget v2, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_1

    .line 162
    :cond_1
    if-eqz v8, :cond_2

    iget v10, v8, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-eq v10, v9, :cond_2

    .line 163
    iput-object v7, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 164
    iget v2, v8, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_0

    .line 165
    :cond_2
    if-eqz v4, :cond_3

    iget v7, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    if-eq v7, v9, :cond_3

    .line 166
    iput-object v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 167
    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    .line 168
    iget v2, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_0

    .line 169
    :cond_3
    if-eqz v6, :cond_4

    iget v2, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-eq v2, v9, :cond_4

    .line 170
    iput-object v5, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 171
    iget v2, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 173
    :cond_4
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SIMDevice activation failed:"

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-wide v9, v2, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-gtz v2, :cond_5

    .line 177
    iput v3, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 178
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleSimDeviceActivationResponse: native line insert/update failed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_5
    return-object v1

    .line 148
    .end local v4    # "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .end local v6    # "responsePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    .end local v8    # "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    :cond_6
    :goto_2
    return-object v1
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 323
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->updateDeviceState(Z)V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->translateErrorCode(ZLjava/lang/String;II)I

    move-result v1

    .line 329
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string/jumbo v3, "request_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mRetryCount:I

    const-string/jumbo v4, "retry_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mDeviceEventType:I

    const-string v4, "device_event_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string/jumbo v3, "orig_error_code"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 339
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 341
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->notifyCallbackForNsdsEvent(I)V

    .line 342
    return-void
.end method

.method public performSimDeviceImplicitActivation(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 224
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performSimDeviceImplicitActivation: eventType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mDeviceEventType:I

    .line 226
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mRetryCount:I

    .line 228
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "nsdsBaseOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 234
    const/4 v0, -0x1

    .line 235
    .local v0, "msgId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 240
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queueOperation: did not match any nsds base operations"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    const/4 v0, 0x1

    .line 238
    nop

    .line 243
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 244
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 245
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method protected updateDeviceState(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 282
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState: flow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "device_state"

    if-eqz p1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activated"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deactivated"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "imsi_eap"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 295
    :goto_0
    return-void
.end method
