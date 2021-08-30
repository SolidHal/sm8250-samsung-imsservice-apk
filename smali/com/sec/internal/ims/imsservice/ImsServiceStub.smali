.class public Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.super Lcom/sec/ims/IImsService$Stub;
.source "ImsServiceStub.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/ImsServiceStub$BootCompleteReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final TC_POPUP_USER_ACCEPT:Ljava/lang/String; = "info/tc_popup_user_accept"

.field private static mIsExplicitGcCalled:Z

.field private static mIsImsAvailable:Z

.field private static mUserUnlocked:Z

.field private static sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# instance fields
.field private mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field private mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

.field private mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

.field private mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field private mContext:Landroid/content/Context;

.field private mCoreHandler:Landroid/os/Handler;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

.field private mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field private mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

.field private mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

.field private mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

.field private mIilManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;",
            ">;"
        }
    .end annotation
.end field

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

.field private mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

.field private mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private mSequentialInitializer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

.field private mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 164
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    .line 169
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Lcom/sec/ims/IImsService$Stub;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    .line 176
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 177
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 178
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 179
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 180
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    .line 183
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 184
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 185
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 186
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 187
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 188
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 189
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 190
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 191
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 192
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    .line 193
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 194
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 195
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 198
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 200
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2008
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 231
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 232
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 233
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 158
    sput-boolean p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .param p1, "x1"    # I

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->factoryReset(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPreloadedSmk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 158
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->startDeviceConfigService()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    return-void
.end method

.method private changeOpModeByRcsSwtich(ZZI)V
    .locals 5
    .param p1, "isRcsEnabled"    # Z
    .param p2, "enable"    # Z
    .param p3, "phoneId"    # I

    .line 684
    if-eq p1, p2, :cond_1

    .line 685
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 686
    const-string v1, "info/tc_popup_user_accept"

    invoke-static {v1, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "val":Ljava/lang/String;
    const/4 v1, -0x1

    .line 688
    .local v1, "tcPopupUserAccept":I
    if-eqz v0, :cond_0

    .line 690
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 693
    goto :goto_0

    .line 691
    :catch_0
    move-exception v2

    .line 692
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v3, p3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v2, p2, p3, v1}, Lcom/sec/internal/ims/config/ConfigModule;->changeOpMode(ZII)V

    .line 698
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "tcPopupUserAccept":I
    :cond_1
    return-void
.end method

.method private createModules()V
    .locals 12

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createModules started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 453
    .local v0, "serviceLooper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    .line 455
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SimManagers."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 457
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 458
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 459
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v10

    .line 463
    .local v10, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 464
    new-instance v2, Lcom/sec/internal/ims/core/iil/IilManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p0}, Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 465
    .local v2, "iilManager":Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 463
    .end local v2    # "iilManager":Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "phoneId":I
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating WfcEpdgManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v1, Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 470
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating PdnController."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v1, Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcom/sec/internal/ims/core/PdnController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 474
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating DmConfigModule."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 478
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 482
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating RcsPolicyManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 484
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating RegistrationManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 488
    invoke-static {v4}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;)V

    iput-object v11, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating ConfigModule."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 493
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating GbaServiceModule."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 498
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating HandlerFactory."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 500
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating ServiceModuleManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v8, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-object v1, v8

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V

    iput-object v8, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 505
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating AECModule."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v1, Lcom/sec/internal/ims/aec/AECModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/aec/AECModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 509
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating GeolocationController."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v1, Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/internal/ims/core/GeolocationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 513
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v1, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/imsservice/CallStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 516
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating ImsDiagnosticMonitorNotificationManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 520
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating NtpTimeController."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v1, Lcom/sec/internal/ims/core/NtpTimeController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 524
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 528
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V

    .line 530
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 531
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 535
    new-instance v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 536
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 720
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->getInstance()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/CriticalLogger;->flush()V

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ims from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimMobility Feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Enabled"

    goto :goto_0

    :cond_0
    const-string v2, "Disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->dump()V

    .line 733
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->dump()V

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->dump()V

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->dump()V

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    if-eqz v0, :cond_3

    .line 744
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/ConfigModule;->dump()V

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    if-eqz v0, :cond_4

    .line 748
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->dump()V

    .line 751
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz v0, :cond_5

    .line 752
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->dump()V

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    if-eqz v0, :cond_6

    .line 756
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->dump()V

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->dump()V

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.ims.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "dump"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 763
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    .line 764
    return-void
.end method

.method private enableRcsMainSwitchByPhoneId(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 704
    .local v0, "isRcsEnabled":Z
    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcsMainSwitchByPhoneId: oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 710
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 711
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    .line 712
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v3, "enableRcs: Ignore RCS disable for SKT until server responds"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 716
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 717
    return-void
.end method

.method private static explicitGC()V
    .locals 2

    .line 273
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$f6l1v8cA9Lv44kEdHydsjHjRfug;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$f6l1v8cA9Lv44kEdHydsjHjRfug;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 282
    :cond_1
    return-void
.end method

.method private factoryReset(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 778
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 784
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 785
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "factoryReset"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 792
    const-string/jumbo v1, "volte_domestic_default_enabled"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 793
    .local v1, "volteEnabledDoemstic":Z
    const-string/jumbo v3, "vt_default_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 794
    .local v2, "vilteEnabled":Z
    sget-object v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reset to default] Volte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 798
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 799
    return-void

    .line 786
    .end local v1    # "volteEnabledDoemstic":Z
    .end local v2    # "vilteEnabled":Z
    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "factoryReset : skip reset due to no SIM"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 787
    return-void

    .line 779
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_3
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "factoryReset : invalid phoneId"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 780
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    .line 237
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 247
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSmkVersion()Ljava/lang/String;
    .locals 5

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "version":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.ims.smk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 414
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v2

    .line 415
    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get SMK version Success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    nop

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v3, "fail to get versionName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private hasVoImsFeature(Ljava/lang/String;II)Z
    .locals 19
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I

    .line 604
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 607
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 608
    sget-object v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v5, "hasVolteFeature - no simMgr"

    invoke-static {v4, v1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 609
    return v3

    .line 612
    :cond_0
    const/4 v4, 0x1

    .line 613
    .local v4, "retValue":Z
    const/4 v5, 0x0

    .line 614
    .local v5, "isEnableIms":Z
    const/4 v6, 0x0

    .line 615
    .local v6, "needToCheckVoLTE":Z
    const/4 v7, 0x0

    .line 616
    .local v7, "needToCheckVoWIFI":Z
    const/4 v8, 0x0

    .line 617
    .local v8, "needToCheckSmsIP":Z
    const/4 v9, 0x0

    .line 620
    .local v9, "needToCheckViLTE":Z
    const-string v10, "mmtel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 621
    const/4 v6, 0x1

    goto :goto_0

    .line 622
    :cond_1
    const-string/jumbo v10, "smsip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 623
    const/4 v8, 0x1

    goto :goto_0

    .line 624
    :cond_2
    const-string v10, "mmtel-video"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 625
    const/4 v9, 0x1

    .line 633
    :goto_0
    const/16 v10, 0x12

    move/from16 v11, p2

    if-ne v11, v10, :cond_3

    .line 634
    const/4 v7, 0x1

    .line 635
    const/4 v6, 0x0

    .line 639
    :cond_3
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object v10

    .line 640
    .local v10, "mnoInfo":Landroid/content/ContentValues;
    const-string v12, "imsSwitchType"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 642
    .local v12, "imsSwitchType":Ljava/lang/Integer;
    const/4 v13, 0x0

    if-nez v12, :cond_4

    .line 643
    sget-object v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v14, "hasVoImsFeature - mnoInfo not available"

    invoke-static {v3, v1, v14}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    return v13

    .line 647
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_5

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x5

    if-eq v14, v15, :cond_5

    .line 648
    sget-object v13, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v14, "hasVoImsFeature - No SIM or GCF or LABSIM or TestBed SIM or Softphone or Simmobility or Default ImsSwitch"

    invoke-static {v13, v1, v14}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 649
    return v3

    .line 652
    :cond_5
    const-string v3, "enableIms"

    .line 653
    .local v3, "fieldEnableIms":Ljava/lang/String;
    const-string v14, "enableServiceVolte"

    .line 654
    .local v14, "fieldEnableVolte":Ljava/lang/String;
    const-string v15, "enableServiceVowifi"

    .line 655
    .local v15, "fieldEnableVowifi":Ljava/lang/String;
    const-string v13, "enableServiceSmsip"

    .line 656
    .local v13, "fieldEnableSmsip":Ljava/lang/String;
    const-string v0, "enableServiceVilte"

    .line 658
    .local v0, "fieldEnableVideocall":Ljava/lang/String;
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .local v16, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {v10, v3, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    .line 660
    const-string v2, " false"

    move/from16 v17, v4

    .end local v4    # "retValue":Z
    .local v17, "retValue":Z
    const-string v4, "hasVoImsFeature - "

    if-nez v5, :cond_6

    .line 661
    move/from16 v18, v5

    .end local v5    # "isEnableIms":Z
    .local v18, "isEnableIms":Z
    sget-object v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    const/4 v5, 0x0

    return v5

    .line 665
    .end local v18    # "isEnableIms":Z
    .restart local v5    # "isEnableIms":Z
    :cond_6
    move/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "isEnableIms":Z
    .restart local v18    # "isEnableIms":Z
    if-eqz v7, :cond_8

    invoke-static {v10, v15, v5}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_7

    .line 666
    sget-object v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    const/4 v5, 0x0

    return v5

    .line 665
    :cond_7
    const/4 v5, 0x0

    .line 670
    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v10, v14, v5}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_9

    .line 671
    sget-object v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 672
    const/4 v4, 0x0

    .end local v17    # "retValue":Z
    .restart local v4    # "retValue":Z
    goto :goto_1

    .line 673
    .end local v4    # "retValue":Z
    .restart local v17    # "retValue":Z
    :cond_9
    if-eqz v8, :cond_a

    const/4 v5, 0x0

    invoke-static {v10, v13, v5}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_a

    .line 674
    sget-object v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 675
    const/4 v4, 0x0

    .end local v17    # "retValue":Z
    .restart local v4    # "retValue":Z
    goto :goto_1

    .line 676
    .end local v4    # "retValue":Z
    .restart local v17    # "retValue":Z
    :cond_a
    if-eqz v9, :cond_b

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 677
    sget-object v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    const/4 v4, 0x0

    .end local v17    # "retValue":Z
    .restart local v4    # "retValue":Z
    goto :goto_1

    .line 680
    .end local v4    # "retValue":Z
    .restart local v17    # "retValue":Z
    :cond_b
    move/from16 v4, v17

    .end local v17    # "retValue":Z
    .restart local v4    # "retValue":Z
    :goto_1
    return v4

    .line 627
    .end local v0    # "fieldEnableVideocall":Ljava/lang/String;
    .end local v3    # "fieldEnableIms":Ljava/lang/String;
    .end local v10    # "mnoInfo":Landroid/content/ContentValues;
    .end local v12    # "imsSwitchType":Ljava/lang/Integer;
    .end local v13    # "fieldEnableSmsip":Ljava/lang/String;
    .end local v14    # "fieldEnableVolte":Ljava/lang/String;
    .end local v15    # "fieldEnableVowifi":Ljava/lang/String;
    .end local v16    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v18    # "isEnableIms":Z
    .restart local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v5    # "isEnableIms":Z
    :cond_c
    move-object/from16 v16, v2

    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .restart local v16    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no VoLTE feature, no need to check mnoInfo"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    return v3
.end method

.method private init()V
    .locals 3

    .line 539
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$Coz7SzymPQHD4TahSkxD2V2ic9w;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 549
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 555
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->setConnectivityController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    .line 557
    sget-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerCoverageReporter()V

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V

    .line 562
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 564
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->start()V

    .line 569
    :cond_1



    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;
    const-string v1, "calling makeImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDefaultSmsPackageChangeReceiver()V

    .line 577
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V

    .line 578
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerUserUnlockReceiver()V

    .line 579
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->linkToPhoneDeath()V

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->tryNsdBind()V

    .line 582
    return-void
.end method

.method public static isImsAvailable()Z
    .locals 1

    .line 285
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 769
    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 767
    :goto_1
    return v0
.end method

.method private isPreloadedSmk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 423
    if-eqz p1, :cond_1

    const-string v0, "1.3.20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$explicitGC$0()V
    .locals 2

    .line 275
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Call explicit GC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 277
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 278
    return-void
.end method

.method static synthetic lambda$getRcsProfileType$4(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1074
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$isServiceAvailable$7(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 1
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "rat"    # I
    .param p2, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1358
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkToPhoneDeath()V
    .locals 3

    .line 1966
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    .line 1967
    .local v0, "phoneBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1969
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Link to Phone Binder Death"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1970
    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$xqM--JY3LWMxNySZ6l1NNrJn1CE;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$xqM--JY3LWMxNySZ6l1NNrJn1CE;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    goto :goto_0

    .line 1978
    :catch_0
    move-exception v1

    .line 1979
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1982
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    if-eqz v1, :cond_0

    .line 256
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already created."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 260
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating IMSService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 263
    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->createModules()V

    .line 264
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->init()V

    .line 266
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/high16 v1, -0x10000000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 269
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 254
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerCoverageReporter()V
    .locals 3

    .line 301
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Registering coverage reporter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "com.sec.imsservice.COLLECT_COVERAGE_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/CoverageReporter;

    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/CoverageReporter;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    return-void
.end method

.method private registerFactoryResetReceiver()V
    .locals 3

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    return-void
.end method

.method private registerPackageManagerReceiver()V
    .locals 4

    .line 341
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPackageMgrListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "smkVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    return-void
.end method

.method private startDeviceConfigService()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "call SMK start"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.ims.smk"

    const-string v2, "com.samsung.ims.smk.DeviceUpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    return-void
.end method

.method private writeSmkVerData(Ljava/lang/String;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v0, "dailyReport":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v1, "SMKV"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 408
    return-void
.end method


# virtual methods
.method public changeAudioPath(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 1523
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeAudioPathForSlot(II)V

    .line 1524
    return-void
.end method

.method public changeAudioPathForSlot(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I

    .line 1528
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 1531
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-nez v0, :cond_0

    .line 1532
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VolteServiceModule is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void

    .line 1536
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    .line 1537
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterAdhocProfileByPhoneId(II)V

    .line 1094
    return-void
.end method

.method public deregisterAdhocProfileByPhoneId(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(II)V

    .line 1100
    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .locals 1
    .param p1, "profileIds"    # Ljava/util/List;
    .param p2, "disconnectPdn"    # Z

    .line 1117
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    .line 1118
    return-void
.end method

.method public deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    .locals 3
    .param p1, "profileIds"    # Ljava/util/List;
    .param p2, "disconnectPdn"    # Z
    .param p3, "phoneId"    # I

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(Ljava/util/List;ZI)V

    .line 1124
    return-void
.end method

.method public dump()V
    .locals 1

    .line 1747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    .line 1748
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1757
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    .line 1758
    return-void
.end method

.method public enableRcs(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1427
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    .line 1428
    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 1432
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1434
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RCS isn\'t allowed by MDM. Don\'t enable RCS"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1435
    return-void

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "com.samsung.advp.imssettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Called by ImsSettings app. Change main switch value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsMainSwitchByPhoneId(ZI)V

    .line 1447
    return-void

    .line 1450
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1452
    .local v1, "isRcsEnabled":Z
    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcs: oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 1458
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    if-nez p1, :cond_3

    .line 1459
    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v3, "enableRcs: Ignore RCS disable for SKT until server responds"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1465
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 1467
    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    .line 1391
    return-void
.end method

.method public enableServiceByPhoneId(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "phoneId"    # I

    .line 1395
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "com.samsung.advp.imssettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1399
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deprecated] enableService is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1401
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1402
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1405
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1406
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 1407
    move v2, v3

    goto :goto_0

    :cond_2
    nop

    .line 1406
    :goto_0
    invoke-static {v1, p1, v2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_3

    .line 1409
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_3

    .line 1403
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    .line 1404
    goto :goto_2

    :cond_5
    move v2, v3

    .line 1403
    :goto_2
    invoke-static {v1, p1, v2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1412
    :goto_3
    return-void
.end method

.method public enableVoLte(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableVoLteByPhoneId(ZI)V

    .line 1417
    return-void
.end method

.method public enableVoLteByPhoneId(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 1421
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "volte"

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1423
    return-void
.end method

.method public finishDmConfig(I)V
    .locals 3
    .param p1, "transactionId"    # I

    .line 1586
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->finishDmConfig(I)V

    .line 1588
    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 1
    .param p1, "imsProfile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1138
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 1139
    return-void
.end method

.method public forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 3
    .param p1, "imsProfile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 1144
    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    return-object v0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "wwwAuthenticateHeader"    # Ljava/lang/String;
    .param p3, "requestUri"    # Ljava/lang/String;
    .param p4, "cipherSuite"    # Ljava/lang/String;

    .line 1672
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_0
    return-void
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "aux"    # Ljava/lang/String;

    .line 1896
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # Z

    .line 1727
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallCount(I)[I
    .locals 3
    .param p1, "phoneId"    # I

    .line 1473
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCallCount(I)[I

    move-result-object v0

    return-object v0

    .line 1474
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-object v0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 2

    .line 1993
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 1994
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 1995
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object v1

    return-object v1

    .line 1997
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object v0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1568
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 1061
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    if-nez v0, :cond_0

    .line 1839
    new-instance v0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    return-object v0
.end method

.method public getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-object v0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    return-object v0
.end method

.method public getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defVal"    # Z

    .line 1716
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
    .locals 3
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defVal"    # I

    .line 1710
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defVal"    # Ljava/lang/String;

    .line 1704
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;
    .locals 2

    .line 1804
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-object v0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1846
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    return-object v0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object v0
.end method

.method public getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->getImsNotifier()Lcom/sec/internal/google/ImsNotifier;

    move-result-object v0

    return-object v0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # I

    .line 1722
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v0, ""

    return-object v0
.end method

.method public getMasterValue(I)I
    .locals 3
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .param p1, "handle"    # I

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCurrentNetwork(I)I

    move-result v0

    .line 883
    .local v0, "network":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v2, 0x11

    if-gt v0, v2, :cond_0

    .line 885
    return v1

    .line 886
    :cond_0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 887
    const/4 v1, 0x2

    return v1

    .line 890
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    return-object v0
.end method

.method public getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    return-object v0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 1764
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    return-object v0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$2re5zpqdOiYPaeoxPsP2TiymwJw;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$2re5zpqdOiYPaeoxPsP2TiymwJw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$TEYpf4NA2eJRw2hTssTbc5JeDO8;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 1074
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;->INSTANCE:Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$a7J71XDGMUKionXrQfHVjWH4Yug;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1076
    .local v0, "rcsProfile":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsProfileType: rcsProfile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1077
    return-object v0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1035
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1043
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1052
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1053
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object v0
.end method

.method public getRttMode(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 1618
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRttMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getRttMode()I

    move-result v0

    return v0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .locals 3

    .line 1901
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSemBinder()Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "defVal"    # Ljava/lang/String;

    .line 1732
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # [Ljava/lang/String;

    .line 1736
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideocallType()I
    .locals 3

    .line 1547
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/ims/core/WfcEpdgManager;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 434
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.GRANT_FILE_PERMISSION"

    if-eq v0, v1, :cond_2

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MOVE_FILE_COMPLETE"

    if-eq v0, v1, :cond_2

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.MOVE_FILE_FINAL_COMPLETE"

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->handleIntent(Landroid/content/Intent;)V

    .line 445
    return-void

    .line 440
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/imsservice/RcsFileProviderManager;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 441
    return-void

    .line 435
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public hasVoLteSim()Z
    .locals 1

    .line 1375
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public hasVoLteSimByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1380
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->hasVoLteSim(I)Z

    move-result v0

    return v0

    .line 1384
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "hasVoLteSimByPhoneId - no mRegistrationManager"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "dm"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1907
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const-string v0, "OMADM_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1909
    const-string v0, "93"

    const-string v2, "94"

    const-string v3, "31"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 1910
    .local v4, "fields":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v5, v4, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v5

    .line 1911
    .local v5, "valueSp":Landroid/content/ContentValues;
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1912
    .local v0, "isDmVolteDefault":Z
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1913
    .local v2, "isDmLvcDefault":Z
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1915
    .local v3, "isDmEabDefault":Z
    sget-object v6, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OMADM Default Value [VoLTE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", LVC : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", EAB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1917
    .end local v0    # "isDmVolteDefault":Z
    .end local v2    # "isDmLvcDefault":Z
    .end local v3    # "isDmEabDefault":Z
    .end local v4    # "fields":[Ljava/lang/String;
    .end local v5    # "valueSp":Landroid/content/ContentValues;
    :cond_1
    const-string v0, "SMS_SETTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1918
    const-string v0, "9"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "fields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v2, v1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 1920
    .local v2, "valueSp":Landroid/content/ContentValues;
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    .local v0, "smsFormat":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS Setting Default Value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const-string v3, "3GPP2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1925
    .end local v0    # "smsFormat":Ljava/lang/String;
    .end local v1    # "fields":[Ljava/lang/String;
    .end local v2    # "valueSp":Landroid/content/ContentValues;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is wrong value on isDefaultDmValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    return v1
.end method

.method public isForbidden()Z
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isInvite403DisabledService(I)Z

    move-result v0

    return v0
.end method

.method public isForbiddenByPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1486
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isInvite403DisabledService(I)Z

    move-result v0

    return v0
.end method

.method public isImsEnabled()Z
    .locals 1

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isImsEnabledByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public isImsEnabledByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "ims"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 1342
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isRcsEnabledByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1882
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isRcsEnabled:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v0

    return v0
.end method

.method public isRegistered()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1029
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1027
    :goto_0
    return v0
.end method

.method public isRttCall(I)Z
    .locals 3
    .param p1, "sessionId"    # I

    .line 1594
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isRttCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRttCall(I)Z

    move-result v0

    return v0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "phoneId"    # I

    .line 1352
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoImsFeature(Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1354
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable: VoImsFeature is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return v1

    .line 1358
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;

    invoke-direct {v2, p1, p2}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$BbJ8Df9F1TSwVDj6usETUtogd1s;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1359
    .local v0, "isFind":Z
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v2

    .line 1361
    .local v2, "isEnabled":Z
    sget-object v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profileFind:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSimMobilityActivated(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 600
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    return v0
.end method

.method public isValidGbaKey(ILjava/lang/String;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "nafUri"    # Ljava/lang/String;

    .line 1680
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->isValidGbaKey(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1684
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVoLteEnabled()Z
    .locals 1

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isVoLteEnabledByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public isVoLteEnabledByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "volte"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVolteEnabledFromNetwork(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1318
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteServiceStatus(I)Z

    move-result v0

    return v0

    .line 1319
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVolteSupportECT()Z
    .locals 3

    .line 1326
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT()Z

    move-result v0

    return v0

    .line 1327
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVolteSupportEctByPhoneId(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1334
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result v0

    return v0

    .line 1335
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$getRcsProfileType$3$ImsServiceStub(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1074
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$linkToPhoneDeath$9$ImsServiceStub()V
    .locals 3

    .line 1971
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Phone Crashed. Cleanup IMS"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1972
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(I)V

    .line 1973
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->cleanUpModules()V

    .line 1974
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Restart service"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1975
    const v0, -0xfffffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1976
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1977
    return-void
.end method

.method public synthetic lambda$registerImsRegistrationListener$8$ImsServiceStub(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1874
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public synthetic lambda$registerSimMobilityStatusListener$1$ImsServiceStub(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method public synthetic lambda$unregisterImsRegistrationListener$5$ImsServiceStub(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public synthetic lambda$unregisterImsRegistrationListenerForSlot$6$ImsServiceStub(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public synthetic lambda$unregisterSimMobilityStatusListenerByPhoneId$2$ImsServiceStub(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1010
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method public notifyImsReady(ZI)V
    .locals 3
    .param p1, "readiness"    # Z
    .param p2, "phoneId"    # I

    .line 1951
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1952
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1954
    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v1

    const-string v2, "SIMMO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1955
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1956
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1958
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    .line 1960
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsReady(Z)V

    .line 1962
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    .line 1963
    return-void
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 1
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1082
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    return v0
.end method

.method public registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    return v0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;
    .param p2, "phoneId"    # I

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAutoConfigurationListener: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 984
    return-void
.end method

.method public registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/ims/ImsEventListener;
    .param p2, "caller"    # Ljava/lang/String;

    .line 808
    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    .line 2001
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCmcRecordingListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 2003
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 2004
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    .line 2006
    :cond_0
    return-void
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    .line 1230
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCmcRegistrationListenerForSlot: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1235
    return-void

    .line 1231
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 3

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1253
    return-void
.end method

.method public registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1554
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDmValueListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1557
    return-void
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    .line 1172
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public registerGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/gba/IGbaEventListener;

    .line 1689
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerGbaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->registerGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V

    .line 1692
    return-void
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImSessionListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 904
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 907
    :cond_0
    return-void
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImSessionListenerByPhoneId: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 914
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 915
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 917
    :cond_0
    return-void
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsOngoingFtListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 944
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 945
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    .line 947
    :cond_0
    return-void
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 951
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsOngoingFtListenerByPhoneId: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 954
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 955
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 957
    :cond_0
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    .line 1189
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 1194
    return-void

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I

    .line 1866
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1872
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1873
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$CaIf9rxn0z4VwgYF0eqazpttQ14;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$CaIf9rxn0z4VwgYF0eqazpttQ14;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 1878
    :goto_0
    return-void

    .line 1867
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    .line 1207
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListenerForSlot: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 1212
    return-void

    .line 1208
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerProfile(Ljava/util/List;)V
    .locals 1
    .param p1, "profileIds"    # Ljava/util/List;

    .line 1105
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerProfileByPhoneId(Ljava/util/List;I)V

    .line 1106
    return-void
.end method

.method public registerProfileByPhoneId(Ljava/util/List;I)V
    .locals 3
    .param p1, "profileIds"    # Ljava/util/List;
    .param p2, "phoneId"    # I

    .line 1110
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Ljava/util/List;I)V

    .line 1112
    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;

    .line 1646
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerRttEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1649
    return-void
.end method

.method public registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I

    .line 585
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimMobilityStatusListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 592
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$echzt48hr3UBDgpUPZmSWt8aH7Y;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$echzt48hr3UBDgpUPZmSWt8aH7Y;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 597
    :goto_0
    return-void

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    .line 995
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimMobilityStatusListenerByPhoneId: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 1000
    return-void

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUserUnlockReceiver()V
    .locals 3

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 1985
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 1986
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 1987
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    .line 1989
    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 3
    .param p1, "cause"    # I
    .param p2, "phoneId"    # I

    .line 1148
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 1150
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 876
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1625
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttMessage(Ljava/lang/String;)V

    .line 1628
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    .line 1639
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRttSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    .line 1642
    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "accept"    # Z

    .line 1632
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse, accept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    .line 1635
    return-void
.end method

.method public sendTryRegister()V
    .locals 1

    .line 1128
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    .line 1129
    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1133
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    .line 1135
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 868
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendVerificationCode(Ljava/lang/String;I)V

    .line 870
    return-void
.end method

.method public setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "impu"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveImpu: impu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setActiveImpu(ILjava/lang/String;)V

    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveMsisdn: msisdn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, -0x1

    return v0

    .line 851
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setActiveMsisdn: unset activeMsisdn."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 858
    .local v0, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_2

    .line 859
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setActiveMsisdn: not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v1, -0x2

    return v1

    .line 863
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setAutomaticMode(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 1601
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutomaticMode, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 1604
    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "dm"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1933
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const-string v0, "OMADM_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1936
    .local v0, "omadmUpdateValue":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v2, "93"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "94"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "31"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1941
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 1943
    .end local v0    # "omadmUpdateValue":Landroid/content/ContentValues;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is wrong value on setDefaultDmValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v0, 0x0

    return v0
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "intfName"    # Ljava/lang/String;
    .param p2, "pcscfAddressArray"    # [Ljava/lang/String;
    .param p3, "gwAddress"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 1166
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-void
.end method

.method public setIsimLoaded()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setIsimLoaded()V

    .line 825
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1289
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method public setProvisionedValue(II)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 1284
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    return-void
.end method

.method public setRttMode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 1608
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(II)V

    .line 1611
    return-void
.end method

.method public setSimRefreshed()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSimRefreshed()V

    .line 831
    return-void
.end method

.method public setVideocallType(I)Z
    .locals 2
    .param p1, "videocallType"    # I

    .line 1541
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1542
    const/4 v0, 0x1

    return v0
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "force"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1861
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 1862
    return-void
.end method

.method public startDmConfig()I
    .locals 3

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->startDmConfig()I

    move-result v0

    return v0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 1497
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 1500
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-nez v0, :cond_0

    .line 1501
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VolteServiceModule is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/4 v1, -0x1

    return v1

    .line 1505
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result v1

    return v1
.end method

.method public stopLocalRingBackTone()I
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    .line 1513
    .local v0, "vm":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-nez v0, :cond_0

    .line 1514
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VolteServiceModule is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v1, -0x1

    return v1

    .line 1518
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result v1

    return v1
.end method

.method public suspendRegister(ZI)V
    .locals 3
    .param p1, "suspend"    # Z
    .param p2, "phoneId"    # I

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    .line 1156
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "dialogId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz v0, :cond_0

    .line 1664
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->triggerAutoConfigForApp(I)V

    .line 1666
    :cond_0
    return-void
.end method

.method public unRegisterEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    .line 1181
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;
    .param p2, "phoneId"    # I

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterAutoConfigurationListener: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 991
    return-void
.end method

.method public unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/ims/ImsEventListener;

    .line 812
    return-void
.end method

.method public unregisterCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    .line 1239
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCmcRegistrationListenerForSlot: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1244
    return-void

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1260
    return-void
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsDmConfigListener;

    .line 1561
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDmValueListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 1564
    return-void
.end method

.method public unregisterGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/gba/IGbaEventListener;

    .line 1696
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterGbaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->unregisterGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V

    .line 1699
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImSessionListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 924
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 925
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 927
    :cond_0
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;
    .param p2, "phoneId"    # I

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImSessionListenerByPhoneId: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 934
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 937
    :cond_0
    return-void
.end method

.method public unregisterImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsOngoingFtListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 964
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    .line 967
    :cond_0
    return-void
.end method

.method public unregisterImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImsOngoingFtListenerByPhoneId: PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 974
    .local v0, "module":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    .line 977
    :cond_0
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unregisterListener without phoneId. unregister it by all phoneId."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$9uxf3WfWBctGqUrBVw88hr6u_7A;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$9uxf3WfWBctGqUrBVw88hr6u_7A;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1203
    return-void

    .line 1199
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    .line 1216
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImsRegistrationListenerForSlot: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1221
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unRegisterListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$jTzKj2R9ZBDPLWmoxUGsGLjyMR0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$jTzKj2R9ZBDPLWmoxUGsGLjyMR0;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1226
    :goto_0
    return-void

    .line 1217
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;

    .line 1653
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterRttEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1656
    return-void
.end method

.method public unregisterSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    .line 1005
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterSimMobilityStatusListenerByPhoneId: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/-$$Lambda$ImsServiceStub$exB6KxCbkOdd932Ntjr1OtRBAeM;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    .line 1014
    :goto_0
    return-void

    .line 1006
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .locals 3
    .param p1, "updateValue"    # Landroid/content/ContentValues;
    .param p2, "transactionId"    # I
    .param p3, "phoneId"    # I

    .line 1574
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DmConfigModule;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result v0

    return v0
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    return v0
.end method
