.class public Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
.super Landroid/os/Handler;
.source "ProvisionController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# static fields
.field protected static final EVENT_PAUSE:I = 0x6

.field protected static final EVENT_PROVISIONAPI_FAIL:I = 0x4

.field protected static final EVENT_PROVISIONAPI_SUCCESS:I = 0x3

.field protected static final EVENT_PROVISION_API:I = 0x1

.field protected static final EVENT_RESUME:I = 0x5

.field protected static final EVENT_STOP:I = 0x7

.field protected static final EVENT_UI_ACTIONS:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final DELAY:J

.field private final INTERNAL_WAITING:J

.field private final mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

.field private final mContext:Landroid/content/Context;

.field private mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

.field private mHasUserDeleteAccount:Z

.field private mHasUserOptedIn:Z

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIfSteadyState:Z

.field private mLastSavedMessageIdAfterStop:I

.field private mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

.field private mNewUserOptInCase:I

.field private mPaused:Z

.field private mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Landroid/telephony/TelephonyManager;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 5
    .param p1, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uicallback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p5, "telephony"    # Landroid/telephony/TelephonyManager;
    .param p6, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p7, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->INTERNAL_WAITING:J

    .line 77
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->DELAY:J

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 97
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 98
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    .line 99
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 100
    new-instance v2, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;-><init>(Landroid/telephony/TelephonyManager;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 101
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 102
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 104
    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 105
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 106
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    move-result v0

    return v0
.end method

.method private displayOptIn(I)V
    .locals 4
    .param p1, "optInScreen"    # I

    .line 977
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result v0

    .line 978
    .local v0, "hasShownPopUpOptIn":Z
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayOptIn: hasShownPopUpOptIn? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasUserOptedIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 982
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: !isOOBE && UserHasOptedIn - impossible here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 983
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const-string/jumbo v3, "pop_up"

    invoke-interface {v2, p1, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 986
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 987
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_2

    .line 994
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 997
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: !OOBE && UserOptedIn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 995
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1000
    :goto_2
    return-void
.end method

.method private handleProvisionErr()V
    .locals 4

    .line 1253
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionErr, TBS Case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1256
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1255
    const-string/jumbo v3, "pop_up"

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1259
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 1261
    :goto_0
    return-void
.end method

.method private handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .locals 8
    .param p1, "type"    # Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 453
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 456
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 459
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage stop! Pending Message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 462
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "No more chance. Show error screen"

    const-string v2, "non_pop_up"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "pop_up"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 870
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onMailBoxMigrationReset()V

    .line 871
    goto/16 :goto_4

    .line 841
    :pswitch_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Wrong CTN, clear user input"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 846
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result v0

    if-nez v0, :cond_2

    .line 847
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "isZCodeMax2Tries: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 849
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 851
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isZCodeMax2Tries: true, mHasUserOptedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    .line 853
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz v0, :cond_3

    .line 854
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 855
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 854
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 857
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 858
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_0

    .line 861
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 862
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 866
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 867
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    .line 868
    goto/16 :goto_4

    .line 838
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 839
    goto/16 :goto_4

    .line 824
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 828
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 829
    iput v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 830
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 831
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 832
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v2, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 835
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 836
    goto/16 :goto_4

    .line 796
    :pswitch_5
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "oldCTN":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "oldIMSI":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v2

    .line 800
    .local v2, "isOptin":Z
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v5

    .line 801
    .local v5, "isUserInputCTN":Z
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 802
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v7, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 803
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 807
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 808
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 810
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 811
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 812
    iput v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 813
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 814
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 815
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 816
    if-eqz v2, :cond_2b

    .line 820
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    goto/16 :goto_4

    .line 787
    .end local v0    # "oldCTN":Ljava/lang/String;
    .end local v1    # "oldIMSI":Ljava/lang/String;
    .end local v2    # "isOptin":Z
    .end local v5    # "isUserInputCTN":Z
    :pswitch_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-eqz v0, :cond_4

    .line 788
    invoke-direct {p0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 794
    goto/16 :goto_4

    .line 768
    :pswitch_7
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 769
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 771
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_6

    .line 772
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 773
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 774
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_7

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 776
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 775
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 778
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 779
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 781
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 782
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 781
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 785
    goto/16 :goto_4

    .line 737
    :pswitch_8
    const/4 v0, 0x0

    .line 738
    .local v0, "isInputCTNWrong":Z
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 739
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "max 2 tries reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeUserInputNumberCount()V

    .line 741
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 742
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 743
    const/4 v0, 0x1

    .line 745
    :cond_8
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v1, :cond_9

    .line 746
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 747
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 748
    :cond_9
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v1, :cond_b

    .line 749
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 750
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 749
    invoke-interface {v1, v2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 752
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 753
    if-eqz v0, :cond_a

    .line 754
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 755
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 754
    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 757
    :cond_a
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 761
    :cond_b
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->removeMessages(I)V

    .line 762
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 763
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 762
    invoke-interface {v1, v2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 766
    goto/16 :goto_4

    .line 715
    .end local v0    # "isInputCTNWrong":Z
    :pswitch_9
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_d

    .line 716
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_c

    .line 717
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 718
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 721
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_4

    .line 724
    :cond_d
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_e

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 726
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 725
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 728
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 729
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 732
    :cond_e
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    .line 735
    goto/16 :goto_4

    .line 699
    :pswitch_a
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_f

    .line 700
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 701
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 702
    :cond_f
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_10

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 704
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 703
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 706
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 707
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 709
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 710
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 709
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 713
    goto/16 :goto_4

    .line 684
    :pswitch_b
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 687
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 689
    :cond_11
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 690
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_4

    .line 694
    :cond_12
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "user still has a chance to input the number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 697
    goto/16 :goto_4

    .line 667
    :pswitch_c
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 668
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_4

    .line 670
    :cond_13
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Landroid/telephony/TelephonyManager;)V

    .line 671
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 672
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 674
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    goto/16 :goto_4

    .line 676
    :cond_14
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 677
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 680
    goto/16 :goto_4

    .line 651
    :pswitch_d
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_15

    .line 652
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 653
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 654
    :cond_15
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_16

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 656
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 655
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 658
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 659
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 661
    :cond_16
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 662
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 661
    invoke-interface {v0, v1, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 665
    goto/16 :goto_4

    .line 647
    :pswitch_e
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 648
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    .line 649
    goto/16 :goto_4

    .line 642
    :pswitch_f
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 643
    goto/16 :goto_4

    .line 636
    :pswitch_10
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_17

    .line 637
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 639
    :cond_17
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 640
    goto/16 :goto_4

    .line 629
    :pswitch_11
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 631
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 634
    goto/16 :goto_4

    .line 625
    :pswitch_12
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 627
    goto/16 :goto_4

    .line 621
    :pswitch_13
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 623
    goto/16 :goto_4

    .line 617
    :pswitch_14
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 619
    goto/16 :goto_4

    .line 614
    :pswitch_15
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 615
    goto/16 :goto_4

    .line 605
    :pswitch_16
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 606
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcNmsHost()V

    .line 607
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initSharedPreference()V

    .line 609
    :cond_18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelStateReset()V

    .line 610
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 612
    goto/16 :goto_4

    .line 596
    :pswitch_17
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 597
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 598
    .local v0, "ZCODE_TIMEOUT_EVENT":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->removeMessages(ILjava/lang/Object;)V

    .line 599
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 600
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    .line 601
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 602
    goto/16 :goto_4

    .line 564
    .end local v0    # "ZCODE_TIMEOUT_EVENT":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    :pswitch_18
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 565
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 566
    .local v0, "ZCODE_TIMEOUT":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->removeMessages(ILjava/lang/Object;)V

    .line 568
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "bufferedCtn":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 570
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "accountNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 573
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty CTN, phone number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 576
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNativeLine()Ljava/lang/String;

    move-result-object v2

    .line 577
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone number from DB == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_19
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_1

    .line 582
    :cond_1a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 583
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v4, "Phone number was changed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->needToHandleSimSwap()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 585
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onRestartService()V

    .line 587
    :cond_1b
    return-void

    .line 590
    :cond_1c
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 591
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v3

    const-wide/32 v4, 0xdbba0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 593
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v4, p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 594
    goto/16 :goto_4

    .line 561
    .end local v0    # "ZCODE_TIMEOUT":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    .end local v1    # "bufferedCtn":Ljava/lang/String;
    .end local v2    # "accountNumber":Ljava/lang/String;
    :pswitch_19
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startPhoneStateListener()V

    .line 562
    goto/16 :goto_4

    .line 545
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Landroid/telephony/TelephonyManager;)V

    .line 546
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 548
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "empty CTN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 550
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    .line 549
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_4

    .line 556
    :cond_1d
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "CTN was successfully read"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 559
    goto/16 :goto_4

    .line 464
    :pswitch_1b
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 465
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 466
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 467
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerConfigurationObserver()V

    .line 469
    :cond_1e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isSimOrCtnChanged(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 470
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 471
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_3

    .line 479
    :cond_1f
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_21

    .line 484
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has shown popup before, will not bother user and server, non_popup screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz v0, :cond_20

    .line 489
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_2

    .line 491
    :cond_20
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 494
    :goto_2
    return-void

    .line 497
    :cond_21
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->isRetryTimesFinished()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 498
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "isRetryTimesFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz v0, :cond_22

    .line 501
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 503
    :cond_22
    return-void

    .line 506
    :cond_23
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 507
    .local v0, "lastFailApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v0, :cond_26

    .line 508
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "retryLastApi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    if-eqz v1, :cond_24

    .line 510
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "in order to Auth Z code, register sms receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 513
    :cond_24
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz v1, :cond_25

    .line 517
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 519
    :cond_25
    return-void

    .line 522
    :cond_26
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 523
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 524
    return-void

    .line 527
    :cond_27
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 530
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v3

    invoke-interface {v1, v3, v2, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 532
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 533
    return-void

    .line 536
    :cond_28
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 537
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "PAT VALID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    .line 539
    return-void

    .line 541
    :cond_29
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "TODO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    goto :goto_4

    .line 473
    .end local v0    # "lastFailApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :cond_2a
    :goto_3
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "isSimOrCtnChanged || OOBE || empty CTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startOOBE()V

    .line 475
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    .line 477
    return-void

    .line 875
    :cond_2b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V
    .locals 5
    .param p1, "screenName"    # Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .param p2, "message"    # Ljava/lang/String;

    .line 335
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUIEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " messge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez p1, :cond_0

    .line 337
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "SteadyStateError - retry api"

    const/4 v2, 0x1

    const-string v3, "non_pop_up"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz v0, :cond_8

    .line 444
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_1

    .line 428
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 430
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increaseUserInputNumberCount()V

    .line 431
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 432
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 434
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onFixedFlow(I)V

    goto/16 :goto_1

    .line 436
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "phone number null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 439
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 441
    goto/16 :goto_1

    .line 410
    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 414
    .local v0, "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v0, :cond_2

    .line 415
    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1, v0, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 418
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 419
    return-void

    .line 421
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "retry stack is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 426
    goto/16 :goto_1

    .line 385
    .end local v0    # "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :pswitch_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 388
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "HUIToken 6014 case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 392
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 395
    .local v0, "lastApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v0, :cond_4

    .line 396
    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1, v0, p0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 399
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 400
    return-void

    .line 402
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "last api is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 405
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 407
    .end local v0    # "lastApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    goto/16 :goto_1

    .line 380
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 382
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 383
    goto/16 :goto_1

    .line 369
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 370
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 371
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 372
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 376
    goto/16 :goto_1

    .line 343
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 344
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 345
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 349
    iget v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 350
    .local v0, "newUserOptInCase":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newUserOptInCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 353
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 354
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 356
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 358
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    goto :goto_1

    .line 359
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 360
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 361
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 363
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 364
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 366
    nop

    .line 450
    .end local v0    # "newUserOptInCase":I
    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    .line 1017
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonFailedProvisionAPI: all failed APIs should go here. param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void
.end method

.method private handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;)V
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;

    .line 912
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 914
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    const-string v2, "HAP.REQACCOUNT.GET_TC"

    const-string v3, "HAP.REQACCOUNT.EXIST_USER"

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 936
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasUserOptedIn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 936
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 942
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 941
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 943
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 944
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 945
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 947
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 946
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 948
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 949
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v2, "HAP.REQACCOUNT.BINARY_SMS_PROVISIONED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 951
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 950
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 952
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 953
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 954
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 955
    const-string v2, "HAP.REQACCOUNT.GET_TBS_TC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 956
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 957
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 958
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 957
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 959
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 961
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "illegal returned callflow name"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 915
    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 916
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: HAPPY_PATH_REQ_ACCOUNT_EXIST_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 919
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 920
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 921
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: NEW_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 923
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: SOC removal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 925
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 926
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_1

    .line 929
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 932
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: TBS_TC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 966
    :cond_9
    :goto_1
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 967
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: RequestHUIToken API success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez v0, :cond_a

    .line 970
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 973
    :cond_a
    return-void
.end method

.method private initPrefenceValues()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNewUserOptInCase()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 113
    nop

    .line 114
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreen()I

    move-result v0

    .line 113
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 115
    nop

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreenUserStopBackup()I

    move-result v0

    .line 115
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 118
    return-void
.end method

.method private initSharedPreference()V
    .locals 3

    .line 1237
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 1238
    .local v0, "preference":Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 1241
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    .line 1242
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 1243
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionChannelDuration()V

    .line 1244
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionTime()V

    .line 1245
    return-void
.end method

.method private static isBase64(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 126
    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    .line 127
    .local v0, "base64Pattern":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 1082
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus: [mLastSavedMessageIdAfterStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNewUserOptInCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastUIScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastScreenUserStopBackup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method private notifyMsgAppNonPopup(II)V
    .locals 4
    .param p1, "screen"    # I
    .param p2, "nextScreen"    # I

    .line 1028
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen to display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1030
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1031
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1034
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 1037
    if-lez p2, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, p1, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 1042
    :goto_0
    return-void
.end method

.method private onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 4
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    .line 1003
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPIFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    .line 1006
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mErrorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mErrorCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 1013
    :goto_0
    return-void
.end method

.method private onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;)V
    .locals 4
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;

    .line 899
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionAPISuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;)V

    .line 902
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 909
    :goto_0
    return-void
.end method

.method private onProvisionReady()V
    .locals 2

    .line 891
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onProvisionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 893
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onProvisionSuccess()V

    .line 895
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 896
    return-void
.end method

.method private readNcHost()Z
    .locals 7

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "isChanged":Z
    new-instance v1, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, "rcsConfigurationReader":Lcom/sec/ims/settings/RcsConfigurationReader;
    const-string/jumbo v2, "root/application/1/serviceproviderext/nc_url"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "nc":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readNcHost() nc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isBase64(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v5, "Failed to decrypt the NC"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "oldNc":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldnc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    .line 151
    .end local v3    # "oldNc":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private readNcNmsHost()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    .line 123
    return-void
.end method

.method private readNmsHost()Z
    .locals 7

    .line 155
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "rcsConfigurationReader":Lcom/sec/ims/settings/RcsConfigurationReader;
    const-string/jumbo v1, "root/application/1/serviceproviderext/nms_url"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "nms":Ljava/lang/String;
    const/4 v2, 0x0

    .line 158
    .local v2, "isChanged":Z
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readNmsHost() nms="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v5, "Failed to decrypt the NMS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAcsNmsHost(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "oldNms":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldNms="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nms="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    const/4 v2, 0x1

    .line 174
    .end local v3    # "oldNms":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private registerConfigurationObserver()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    new-instance v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method private registerDataSmsReceiver()V
    .locals 3

    .line 235
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "*"

    const-string v2, "5586"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    .line 242
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    :cond_0
    return-void
.end method

.method private registerNetworkChangeReceiver()V
    .locals 3

    .line 204
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkChangeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 209
    new-instance v1, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    .line 210
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    .end local v0    # "localIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerSmsReceiver()V
    .locals 3

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    .line 220
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerSmsReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private saveIfSteadyState(Z)V
    .locals 1
    .param p1, "steadystate"    # Z

    .line 1062
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfSteadyState(Z)V

    .line 1063
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 1064
    return-void
.end method

.method private saveLastScreen(I)V
    .locals 1
    .param p1, "screen"    # I

    .line 1067
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreen(I)V

    .line 1068
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1069
    return-void
.end method

.method private saveLastScreenUserStopBackup(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 1072
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreenUserStopBackup(I)V

    .line 1073
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1074
    return-void
.end method

.method private saveNewUserOptInCase(I)V
    .locals 1
    .param p1, "optinCase"    # I

    .line 1052
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNewUserOptInCase(I)V

    .line 1053
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 1054
    return-void
.end method

.method private saveUserDeleteAccount(Z)V
    .locals 1
    .param p1, "hasUserDeleteAccout"    # Z

    .line 1077
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDeleteAccount(Z)V

    .line 1078
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 1079
    return-void
.end method

.method private saveUserOptedIn(Z)V
    .locals 1
    .param p1, "ifoptin"    # Z

    .line 1057
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserOptedIn(Z)V

    .line 1058
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 1059
    return-void
.end method

.method private startOOBE()V
    .locals 4

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 882
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 883
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCleanBufferDbRequired()V

    .line 885
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 887
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 888
    return-void
.end method

.method private startPhoneStateListener()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->startListen()V

    .line 256
    return-void
.end method

.method private stopPhoneStateListener()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->stopListen()V

    .line 260
    return-void
.end method

.method private stopProvisioningAPIs()V
    .locals 2

    .line 1045
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopProvisioningAPIs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->removeMessages(I)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private unregisterDataSmsReceiver()V
    .locals 2

    .line 247
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    .line 252
    :cond_0
    return-void
.end method

.method private unregisterSmsReceiver()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 273
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->logCurrentWorkingStatus()V

    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 306
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 307
    goto :goto_0

    .line 325
    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 326
    goto :goto_0

    .line 311
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz v0, :cond_1

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 313
    iget v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    if-eq v0, v1, :cond_0

    .line 314
    nop

    .line 315
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 316
    .local v0, "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 317
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 318
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resume successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    goto :goto_0

    .line 320
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "no saved event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    .line 299
    .local v0, "failParam":Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;
    if-eqz v0, :cond_1

    .line 300
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    goto :goto_0

    .line 291
    .end local v0    # "failParam":Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;

    .line 293
    .local v0, "successParam":Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;
    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;)V

    goto :goto_0

    .line 285
    .end local v0    # "successParam":Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    .line 286
    .local v0, "uieventParam":Lcom/sec/internal/ims/cmstore/params/UIEventParam;
    if-eqz v0, :cond_1

    .line 287
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0    # "uieventParam":Lcom/sec/internal/ims/cmstore/params/UIEventParam;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 280
    .local v0, "type":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    .line 330
    .end local v0    # "type":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 1137
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 1138
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "newParam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 1131
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 1132
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 1125
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 1126
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1127
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 1160
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 4
    .param p1, "event"    # I

    .line 1149
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 1150
    .local v0, "eventType":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFixedFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1152
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 1166
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 1094
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 1095
    .local v0, "eventType":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGoToEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1097
    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 2

    .line 1248
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxMigrationReset."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onMailBoxMigrationReset()V

    .line 1250
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "param"    # Ljava/lang/Object;

    .line 1101
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 4

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string/jumbo v2, "pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 1226
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1227
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 1228
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 6
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I

    .line 1143
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorHeader(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 1145
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 1112
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 1113
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;

    .line 1105
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 1107
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1108
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "event"    # I
    .param p3, "param"    # Ljava/lang/Object;

    .line 1121
    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 3
    .param p1, "screenName"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 266
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/UIEventParam;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method public pause()V
    .locals 2

    .line 1183
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1185
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1178
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 1233
    return-void
.end method

.method public start()V
    .locals 3

    .line 1169
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 1173
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1188
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    .line 1189
    return-void
.end method

.method public update(I)Z
    .locals 4
    .param p1, "eventType"    # I

    .line 1193
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 1194
    .local v0, "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public updateDelay(IJ)Z
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 1200
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 1201
    .local v0, "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " delayed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public updateDelayRetry(IJ)Z
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 1210
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 1211
    .local v0, "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " delayed retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1219
    const/4 v0, 0x0

    return v0
.end method
