.class Lcom/sec/internal/ims/core/NetworkEventController;
.super Ljava/lang/Object;
.source "NetworkEventController.java"


# static fields
.field private static final EPDG_EVENT_TIMER:I = 0x1d8a8

.field private static final IMS_DM_START:Ljava/lang/String; = "10"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-NetEvtCtr"


# instance fields
.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mNetType:I

.field private mNwChanged:Z

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

.field protected mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

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

.field protected mUnprocessedOmadmConfig:Z

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mWiFi:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 539
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 540
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 696
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pc"    # Lcom/sec/internal/ims/core/PdnController;
    .param p3, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p5, "cam"    # Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .param p6, "rpm"    # Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;
    .param p7, "rmb"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p8, "ifw"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            ")V"
        }
    .end annotation

    .line 113
    .local p4, "sms":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/ISimManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 539
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 540
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 696
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 116
    iput-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 117
    iput-object p4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    .line 118
    iput-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 119
    iput-object p6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    .line 120
    iput-object p7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 121
    iput-object p8, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 122
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "RegiMgr-NetEvtCtr"

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 123
    return-void
.end method

.method private deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "phoneId"    # I
    .param p3, "needDeregi"    # Z

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterByDefaultNwChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
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

    const-string v1, ") needDeregi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 1355
    .local v0, "preferredPdnType":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1356
    .local v4, "isWifiPreferred":Z
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v3

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v2

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1357
    iget-object v1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1359
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    .line 1360
    return-void

    .line 1363
    :cond_2
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1364
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1367
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1368
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1370
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 1371
    const-string v2, "deregisterByDefaultNwChanged: stop pdn"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1377
    :cond_4
    :goto_1
    return-void
.end method

.method private handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p5, "bExistRetryTimer"    # Z
    .param p6, "bHaveRegisteringTask"    # Z

    .line 1099
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1100
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const-string v1, "RegiMgr-NetEvtCtr"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0x14

    if-ne v0, v5, :cond_1

    :cond_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v5, :cond_1

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_4

    .line 1104
    :cond_1
    const-string v0, "device moved into VoLTE roaming disabled condition, stop PDN request and set state to IDLE"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v5, :cond_2

    .line 1106
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1108
    :cond_2
    new-array v0, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v4

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1109
    const-string v0, "onNetworkEventChanged: REGISTERED or REGISTERING"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v0, v5, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1113
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1114
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 1117
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1118
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1119
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1120
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1126
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkEventChanged: event.isDataStateConnected: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " old.isDataStateConnected: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " event.outOfService: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " old.outOfService: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task.getPdnType() "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rat: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isWifiConnected: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1134
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1136
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1137
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-ne v0, v4, :cond_a

    new-array v0, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v4

    .line 1138
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v0, v4

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v3

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v4

    .line 1139
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1140
    :cond_9
    invoke-virtual {p0, p2, p1, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1145
    :cond_a
    if-nez p5, :cond_c

    if-eqz p6, :cond_b

    goto :goto_0

    .line 1148
    :cond_b
    const-string v0, "onNetworkEventChanged: sendTryRegister"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_1

    .line 1146
    :cond_c
    :goto_0
    const-string v0, "onNetworkEventChanged: do not call sendTryRegister"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1153
    :cond_d
    :goto_1
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne v0, v1, :cond_e

    .line 1154
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 1156
    :cond_e
    return-void
.end method

.method private handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 921
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p3 .. p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v8

    .line 922
    .local v5, "isVopsTurnedOn":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v10, 0x2

    const-string v11, "RegiMgr-NetEvtCtr"

    if-ne v6, v9, :cond_1

    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v6, v9, :cond_1

    iget-boolean v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v6, :cond_1

    .line 923
    const-string v6, "onNetworkEventChanged: WiFi has turned off. release throttle."

    invoke-static {v11, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 928
    :cond_1
    iget-object v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v9, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v6, v9, :cond_2

    .line 929
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v6, v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    const/16 v9, 0xb

    if-ne v6, v9, :cond_2

    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v9, 0x12

    if-eq v6, v9, :cond_2

    .line 933
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    .line 934
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v9, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-nez v6, :cond_2

    .line 935
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v6, v9, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 936
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 942
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    const/4 v9, 0x5

    new-array v12, v9, [Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    aput-object v13, v12, v8

    sget-object v13, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    aput-object v13, v12, v7

    sget-object v13, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v13, v12, v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    sget-object v13, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/4 v15, 0x4

    aput-object v13, v12, v15

    invoke-virtual {v6, v12}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    const-string v12, "ims"

    if-eqz v6, :cond_3

    .line 943
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    sget-object v13, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v6, v13, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v6, :cond_3

    .line 944
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v13

    invoke-virtual {v6, v13, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 945
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 949
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    sget-object v13, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v6, v13, :cond_4

    iget-boolean v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v6, :cond_4

    .line 950
    const-string v6, "onNetworkEventChanged: Wifi connected in CMC profile. Stop the conneting PDN"

    invoke-static {v11, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 951
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v13

    invoke-virtual {v6, v13, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 952
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 955
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v13, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/16 v15, 0xd

    if-eq v6, v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v13, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v6, v13, :cond_a

    .line 956
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 957
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDelayedDeregisterTimerRunning()Z

    move-result v6

    const/16 v12, 0x14

    if-eqz v6, :cond_8

    .line 958
    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v6, v15, :cond_7

    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v6, v12, :cond_6

    goto :goto_1

    .line 963
    :cond_6
    const-string v6, "onNetworkEventChanged: Do not stop IMS PDN on delayedDeregisterTimer running"

    invoke-static {v11, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 964
    return v8

    .line 959
    :cond_7
    :goto_1
    const-string v6, "onNetworkEventChanged: LTE attached while DelayedDeregisterTimer running."

    invoke-static {v11, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 961
    return v8

    .line 966
    :cond_8
    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v6, v15, :cond_9

    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v6, v12, :cond_9

    .line 967
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllPcscfChecked()V

    .line 970
    :cond_9
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v12, 0x10

    if-ne v6, v12, :cond_a

    .line 973
    return v8

    .line 977
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v12, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    const/4 v13, 0x6

    if-ne v6, v12, :cond_c

    .line 978
    iget v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v12

    invoke-direct {v0, v6, v12}, Lcom/sec/internal/ims/core/NetworkEventController;->isHandoverBetweenEpdgAndLeagacy(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 979
    const-string v6, "Handover Between VoWifi and 2G/3G"

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v6, v12, :cond_b

    .line 982
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v12

    invoke-virtual {v6, v12, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 983
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 986
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 987
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 992
    :cond_c
    iget-object v6, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v12, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 993
    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    move v6, v7

    goto :goto_2

    :cond_d
    move v6, v8

    .line 995
    .local v6, "isOperatorChanged":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v12

    const/16 v15, 0x9

    if-eqz v12, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v12

    new-array v9, v9, [Lcom/sec/internal/constants/Mno;

    sget-object v17, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    aput-object v17, v9, v8

    sget-object v17, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    aput-object v17, v9, v7

    sget-object v17, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    aput-object v17, v9, v10

    sget-object v17, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    aput-object v17, v9, v14

    sget-object v14, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    const/16 v16, 0x4

    aput-object v14, v9, v16

    invoke-virtual {v12, v9}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v6, :cond_e

    .line 996
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v15}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 999
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    sget-object v12, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne v9, v12, :cond_f

    if-eqz v6, :cond_f

    .line 1000
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1001
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1005
    :cond_f
    iget-boolean v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v9, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1006
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stopPdnConnectivity(), task "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1007
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v7, v9, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1008
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1009
    return v8

    .line 1012
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    sget-object v12, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v12, :cond_18

    .line 1013
    iget-object v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v12, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1014
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    const-string v12, "PlmnChanged"

    invoke-interface {v9, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v9

    sget-object v14, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-ne v9, v14, :cond_11

    .line 1016
    const-string v9, "PLMN changed but Permanent Stopped. Do nothing!"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1023
    :cond_11
    iget-object v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v14, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v9, v14, :cond_12

    .line 1024
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1027
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1028
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v15}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1032
    :cond_13
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v9

    sget-object v12, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v9, v12, :cond_14

    iget-boolean v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v9, :cond_14

    iget-boolean v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v9, :cond_14

    iget v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v12, 0xd

    if-eq v9, v12, :cond_15

    :cond_14
    if-eqz v5, :cond_17

    .line 1035
    :cond_15
    if-eqz v5, :cond_16

    const-string v9, "VopsChanged"

    goto :goto_4

    :cond_16
    const-string v9, "ImsPdnRequst"

    .line 1036
    .local v9, "reason":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v12

    invoke-interface {v12, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1039
    .end local v9    # "reason":Ljava/lang/String;
    :cond_17
    iget v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v12, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v9, v12, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1040
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-interface {v9, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1044
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    sget-object v12, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v9, v12, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1045
    iget-boolean v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v12, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v9, v12, :cond_19

    iget-boolean v9, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v12, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v9, v12, :cond_1a

    .line 1046
    :cond_19
    const-string v9, "onNetworkEventChanged: roaming or ps-voice-only mode changed in idle/connecting state"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v11

    iget-boolean v11, v11, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 1048
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v12

    iget-boolean v12, v12, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 1047
    invoke-interface {v9, v11, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1052
    :cond_1a
    new-array v9, v10, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v8

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v8, v9, v7

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v8, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v8, v9, :cond_1b

    .line 1053
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1056
    :cond_1b
    return v7
.end method

.method private handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1079
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const-string v2, "RegiMgr-NetEvtCtr"

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v0, v1, :cond_1

    .line 1081
    :cond_0
    const-string v0, "onNetworkEventChanged: roaming or ps-voice-only mode changed in de-registering state"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 1083
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 1082
    invoke-interface {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1087
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    if-eqz v0, :cond_2

    .line 1088
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1089
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1090
    const-string v0, "CU, if not in LTE,will stop pdn when in deregistering state caused by pdn lost"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 1093
    :cond_2
    return-void
.end method

.method private handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 832
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    const/4 v1, 0x0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_0

    .line 833
    const-string/jumbo v0, "out of service."

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 834
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V

    .line 835
    return v1

    .line 839
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 840
    const-string v0, "onNetworkEventChanged: setRegistrationRat"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 844
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    .line 845
    .local v0, "skipHandleRatChangeBasedOnEpdgHO":Z
    if-eqz v0, :cond_2

    .line 846
    return v1

    .line 849
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_7

    .line 851
    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isLegacy3gppNetwork(I)Z

    move-result v3

    const/16 v4, 0xd

    if-eqz v3, :cond_3

    iget v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 852
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x79

    invoke-virtual {v3, v7, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 853
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 854
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 863
    :cond_3
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/16 v7, 0x326

    if-ne v3, v6, :cond_5

    iget-object v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v6, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 864
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "tvolte_hys_timer"

    invoke-static {v3, v5, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 865
    .local v3, "TVolteHys":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending re-regi to T_VoLTE_hys["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] secs."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 868
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 870
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v4, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-virtual {v2, v7, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 871
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 872
    return v1

    .line 875
    .end local v3    # "TVolteHys":I
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v6, 0xe

    if-ne v3, v6, :cond_6

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_6

    .line 877
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "t_delay"

    invoke-static {v3, v6, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 878
    .local v3, "TDelay":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNetworkChanged: C2L, Tdelay="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 879
    if-lez v3, :cond_6

    .line 880
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    .line 881
    return v1

    .line 885
    .end local v3    # "TDelay":I
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 886
    const-string v3, "do not update registration due to HYS"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 887
    return v1

    .line 889
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_8

    .line 892
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 893
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    goto/16 :goto_0

    .line 895
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_c

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_c

    .line 896
    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-ne v3, v4, :cond_9

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v3, v4, :cond_a

    .line 897
    :cond_9
    const-string v3, "onNetworkChanged: roaming event changed, check location cache"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    .line 900
    :cond_a
    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v3, v4, :cond_b

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v3, v4, :cond_d

    .line 901
    :cond_b
    const-string v3, "onNetworkEventChanged: roaming or ps-voice-only mode changed in registering/registered state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    goto :goto_0

    .line 904
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_d

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_d

    .line 905
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v3, :cond_d

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 906
    const-string v3, "RCS deregister during CS call - GSM : same as OOS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 908
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p2, v5, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 909
    return v1

    .line 912
    :cond_d
    :goto_0
    const-string v2, "by network event changed"

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 913
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    .line 915
    return v5
.end method

.method private handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "phoneId"    # I

    .line 1192
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string/jumbo v1, "out of service."

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1194
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1196
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    const-string/jumbo v2, "set EVENT_RCS_DELAYED_DEREGISTER"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x8e

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1199
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1202
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1203
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    const-string v2, "RCS deregister OOS during CS call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1206
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1210
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 1211
    const-string v2, "ESN send local deregi and PDN disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string/jumbo v3, "remove_icon_nosvc"

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1217
    .local v0, "removeIconNoSvc":Z
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1218
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1220
    :cond_3
    return-void
.end method

.method private handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "phoneId"    # I
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1226
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    if-nez v0, :cond_0

    .line 1228
    const-string v0, "onNetworkEventChanged: remove SSAC re-regi"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1232
    :cond_0
    const-string v0, "onNetworkEventChanged: set SSAC to default"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1233
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 1235
    :cond_1
    return-void
.end method

.method private handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 6
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p3, "phoneId"    # I

    .line 1238
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x84

    const-string v3, "VopsChanged"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 1239
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1242
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto/16 :goto_0

    .line 1245
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1248
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1254
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 1256
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1257
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    .line 1258
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 1261
    :cond_4
    :goto_0
    return-void
.end method

.method private isDomainPattern(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    const-string v0, "[a-zA-Z][-a-zA-Z0-9]{0,62}(\\.[a-zA-Z][-a-zA-Z0-9]{0,62})+\\.?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1
    return v1
.end method

.method private isHandoverBetweenEpdgAndLeagacy(II)Z
    .locals 2
    .param p1, "newNetwork"    # I
    .param p2, "regiRat"    # I

    .line 1060
    if-eq p1, p2, :cond_2

    if-eqz p2, :cond_2

    const/16 v0, 0xd

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    if-eq p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 386
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p3, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    .local p2, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 169
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 170
    .local v15, "pcscf":Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/internal/helper/NetworkUtil;->isValidPcscfAddress(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_10

    .line 171
    iget-object v0, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v13

    .line 172
    .local v13, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    :goto_1
    move-wide v11, v6

    .line 175
    .local v11, "netId":J
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedNaptrDns()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_2

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-wide/from16 v26, v11

    move-object/from16 v28, v13

    goto/16 :goto_3

    .line 178
    :cond_2
    :goto_2
    const-string v0, "TLS"

    .line 179
    .local v0, "transport":Ljava/lang/String;
    iget-object v6, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v6, v2, v0}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getNeedIpv4Dns()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    iget-object v6, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v6, v2, v13}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, "ipver":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 184
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 185
    iget-object v5, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    const-string v10, "NAPTR"

    move-object/from16 v7, p3

    move-object v8, v15

    move-object v9, v13

    move-wide/from16 v26, v11

    .end local v11    # "netId":J
    .local v26, "netId":J
    move-object v11, v0

    move-object/from16 v12, v16

    move-object/from16 v28, v13

    .end local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v13, v26

    invoke-virtual/range {v5 .. v14}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 186
    goto/16 :goto_a

    .line 183
    .end local v26    # "netId":J
    .end local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "netId":J
    .restart local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-wide/from16 v26, v11

    move-object/from16 v28, v13

    .line 188
    .end local v11    # "netId":J
    .end local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "ipver":Ljava/lang/String;
    .restart local v26    # "netId":J
    .restart local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 189
    .end local v26    # "netId":J
    .end local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "netId":J
    .restart local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-wide/from16 v26, v11

    move-object/from16 v28, v13

    .end local v11    # "netId":J
    .end local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "netId":J
    .restart local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    const-string v6, "not ipv4 dns"

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 191
    iget-object v5, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    const-string v10, "NAPTR"

    const-string v12, ""

    move-object/from16 v7, p3

    move-object v8, v15

    move-object/from16 v9, v28

    move-object v11, v0

    move-wide/from16 v13, v26

    invoke-virtual/range {v5 .. v14}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 192
    goto/16 :goto_a

    .line 177
    .end local v0    # "transport":Ljava/lang/String;
    .end local v26    # "netId":J
    .end local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "netId":J
    .restart local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-wide/from16 v26, v11

    move-object/from16 v28, v13

    .line 196
    .end local v11    # "netId":J
    .end local v13    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "netId":J
    .restart local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getAresLookupRequired()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    invoke-interface {v2, v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sip._tls."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .end local v15    # "pcscf":Ljava/lang/String;
    .local v0, "pcscf":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v4, "dnsesIPv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_7

    .line 202
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .local v7, "dns":Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 204
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v7    # "dns":Ljava/lang/String;
    :cond_6
    goto :goto_4

    .line 208
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    const-string v7, "ATT SoftPhone : found ipv4 dns"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    iget-object v5, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v17, 0x0

    const-string v21, "SRV"

    const-string/jumbo v22, "tcp"

    const-string v23, "IPV4"

    move-object/from16 v16, v5

    move-object/from16 v18, p3

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-wide/from16 v24, v26

    invoke-virtual/range {v16 .. v25}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 212
    :cond_8
    iget-object v5, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v17, 0x0

    const-string v21, "SRV"

    const-string/jumbo v22, "tcp"

    const-string v23, ""

    move-object/from16 v16, v5

    move-object/from16 v18, p3

    move-object/from16 v19, v0

    move-object/from16 v20, v28

    move-wide/from16 v24, v26

    invoke-virtual/range {v16 .. v25}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    goto/16 :goto_a

    .line 218
    .end local v0    # "pcscf":Ljava/lang/String;
    .end local v4    # "dnsesIPv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "pcscf":Ljava/lang/String;
    :cond_9
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_b

    .line 219
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 220
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v7, v0

    :goto_5
    if-ge v6, v7, :cond_c

    aget-object v8, v0, v6

    .line 221
    .local v8, "ia":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    nop

    .end local v8    # "ia":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 224
    :cond_a
    invoke-static {v15}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v7, v0

    :goto_6
    if-ge v6, v7, :cond_c

    aget-object v8, v0, v6

    .line 225
    .restart local v8    # "ia":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    nop

    .end local v8    # "ia":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 229
    :cond_b
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/RegistrationUtils;->getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v7, v0

    :goto_7
    if-ge v6, v7, :cond_c

    aget-object v8, v0, v6

    .line 230
    .restart local v8    # "ia":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    nop

    .end local v8    # "ia":Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 234
    :cond_c
    invoke-interface {v2, v15}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 236
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v6, 0x3

    if-lt v0, v6, :cond_d

    .line 237
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_d
    goto :goto_8

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    const-string v7, "getPcscfIpAddresses: faild to resolve dns query ."

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    iget-object v6, v1, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setAresLookupRequired(Z)V

    .line 242
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_e

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 245
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-eqz v6, :cond_f

    .line 246
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    const-string v6, "CMC dns query failed"

    invoke-static {v5, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    goto :goto_a

    .line 250
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v26    # "netId":J
    .end local v28    # "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :goto_8
    goto :goto_9

    .line 251
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPcscfIpAddresses: pcscf is not valid... continue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    .end local v15    # "pcscf":Ljava/lang/String;
    :goto_9
    goto/16 :goto_0

    .line 254
    :cond_11
    :goto_a
    return-object v3
.end method

.method private needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 468
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 470
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 471
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 474
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 475
    return v2

    .line 481
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "RegiMgr-NetEvtCtr"

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v6, 0xd

    if-ne v3, v6, :cond_3

    .line 482
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v6, 0xf

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 483
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 484
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 485
    :cond_2
    const-string v2, "needEmergencyRegistration[AUS]: limited mode but has valid SIM. Try register."

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v4

    .line 489
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    const-string v2, "needEmergencyRegistration: limited mode. Dont Skip for Canada."

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v4

    .line 494
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 495
    const-string v3, "needEmergencyRegistration: limited mode. skip emergency registration."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v2

    .line 499
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_7

    .line 501
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    invoke-interface {v3, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSelfActivationRequired(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 502
    :cond_6
    const-string v3, "Get PCO 5. Skip emergency registration."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v2

    .line 506
    :cond_7
    return v4

    .line 472
    :cond_8
    :goto_0
    return v2
.end method

.method private notifyNetworkEvent(IZI)V
    .locals 12
    .param p1, "network"    # I
    .param p2, "isWifiConnected"    # Z
    .param p3, "phoneId"    # I

    .line 573
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v10

    .line 574
    .local v10, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v11

    .line 575
    .local v11, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-eqz v10, :cond_3

    if-nez v11, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 579
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType()I

    move-result v3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v6

    .line 580
    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgAVailable()Z

    move-result v7

    .line 578
    move v0, p3

    move v2, p1

    move v5, p2

    move-object v8, v10

    move-object v9, v11

    invoke-static/range {v0 .. v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->buildNetworkEvent(IZIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    .line 581
    .local v0, "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsIgnoreEpdg(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 582
    invoke-virtual {p0, v0, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 584
    :cond_2
    return-void

    .line 576
    .end local v0    # "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    :cond_3
    :goto_1
    return-void
.end method

.method private tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    .line 1267
    :cond_0
    return-void
.end method

.method private updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p3, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1159
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1160
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1162
    return v2

    .line 1165
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1166
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1168
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1171
    .local v3, "isW2LHOcase":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/PdnController;->isEpdgAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_2

    iget v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq v4, v5, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    or-int/2addr v3, v4

    .line 1174
    if-eqz v3, :cond_3

    .line 1175
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x87

    invoke-virtual {v1, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x1d8a8

    invoke-virtual {v1, v4, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    return v2

    .line 1179
    .end local v3    # "isW2LHOcase":Z
    :cond_3
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_IRELAND:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_ROMANIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/sec/internal/constants/Mno;->STC_KSA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    const/4 v2, 0x6

    sget-object v4, Lcom/sec/internal/constants/Mno;->VIRGIN:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v2, :cond_4

    .line 1180
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1181
    const-string v2, "RegiMgr-NetEvtCtr"

    const-string v3, "onNetworkChanged: VoWiFi Roaming not support"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1183
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1184
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1185
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 1188
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_4
    return v1
.end method

.method private updateRat(II)V
    .locals 8
    .param p1, "network"    # I
    .param p2, "phoneId"    # I

    .line 519
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 521
    .local v0, "uf":Lcom/sec/internal/ims/util/UriGeneratorFactory;
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 522
    .local v2, "task":Lcom/sec/internal/ims/core/RegisterTask;
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V

    .line 525
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 526
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/NameAddr;

    .line 528
    .local v5, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 529
    .local v6, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    .line 531
    .local v7, "ug":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    .line 533
    .end local v5    # "addr":Lcom/sec/ims/util/NameAddr;
    .end local v6    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v7    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_0
    goto :goto_1

    .line 535
    .end local v2    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    goto :goto_0

    .line 536
    :cond_2
    return-void
.end method

.method private updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "simAvailable"    # Z
    .param p3, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p4, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_enable_in_roaming"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 1271
    .local v0, "disableUtInRoaming":Z
    if-eqz p2, :cond_4

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 1272
    iget-boolean v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/16 v4, 0x12

    if-ne v1, v3, :cond_0

    iget v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v3, :cond_4

    iget v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v4, :cond_0

    iget v1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v1, v4, :cond_4

    .line 1275
    :cond_0
    iget v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/4 v3, 0x0

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1276
    .local v1, "isWifi":Z
    :goto_0
    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1278
    .local v2, "utSwitch":Z
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v3

    .line 1279
    .local v3, "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-eqz v3, :cond_4

    .line 1280
    invoke-interface {v3, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 1284
    .end local v1    # "isWifi":Z
    .end local v2    # "utSwitch":Z
    .end local v3    # "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    :cond_4
    return-void
.end method


# virtual methods
.method public getNetType()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    return v0
.end method

.method public getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .param p2, "iface"    # Ljava/lang/String;

    .line 135
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasValidPcscfIpList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    return-object v1

    .line 141
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 147
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_1
    return-object v1

    .line 152
    .end local v0    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/ims/rcs/interfaces/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 153
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handOffEventTimeout(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1392
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handOffEventTimeout: mNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWiFi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    .line 1394
    return-void
.end method

.method hasRetryIntentOnPdnFail()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNwChanged()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return v0
.end method

.method isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p2, "phoneId"    # I
    .param p3, "needDeregi"    # Z

    .line 1287
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_0

    .line 1288
    return v1

    .line 1291
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    .line 1293
    .local v0, "pdnType":I
    const/16 v2, 0xb

    if-eq v0, v2, :cond_c

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    .line 1302
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1303
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v2

    .line 1304
    .local v2, "needDelayedDeregister":Z
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v3

    .line 1305
    .local v3, "preferredPdnType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPreferredPdnForRCSRegister: isNeedDelayedDeregister ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], preferred PDN ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], needDeregi ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr-NetEvtCtr"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_3

    if-eqz v2, :cond_3

    if-ne v3, v1, :cond_3

    .line 1311
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1312
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v6, "isPreferredPdnForRCSRegister : Delay event"

    invoke-virtual {v4, p2, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1313
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v4, v5, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1315
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "isPreferredPdnForRCSRegister : Now pending"

    invoke-virtual {v4, p2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_0

    .line 1318
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    .line 1320
    :goto_0
    return v1

    .line 1324
    .end local v2    # "needDelayedDeregister":Z
    .end local v3    # "preferredPdnType":I
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 1329
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v1

    .line 1330
    .local v1, "bearer":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v2

    .line 1331
    .local v2, "preferredPdnType":I
    const/4 v3, 0x1

    .line 1333
    .local v3, "ret":Z
    if-eq v0, v2, :cond_6

    .line 1334
    const/4 v3, 0x0

    .line 1335
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    .line 1338
    :cond_6
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1339
    .local v5, "pendingTask":Lcom/sec/internal/ims/core/RegisterTask;
    if-eq v5, p1, :cond_7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1340
    goto :goto_1

    .line 1343
    :cond_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    if-eq v6, v2, :cond_9

    .line 1345
    invoke-direct {p0, v5, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    .line 1347
    .end local v5    # "pendingTask":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_9
    goto :goto_1

    .line 1348
    :cond_a
    return v3

    .line 1326
    .end local v1    # "bearer":I
    .end local v2    # "preferredPdnType":I
    .end local v3    # "ret":Z
    :cond_b
    :goto_2
    return v1

    .line 1297
    :cond_c
    :goto_3
    return v1
.end method

.method public isWiFi()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    return v0
.end method

.method onCellLocationChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updatePani(I)V

    .line 511
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    return-void

    .line 514
    :cond_0
    const/4 v0, -0x1

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->notifyNetworkEvent(IZI)V

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateTimeInPlani(IZ)V

    .line 516
    return-void
.end method

.method onCheckUnprocessedOmadmConfig()V
    .locals 2

    .line 699
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onCheckUnprocessedOmadmConfig: triggerOmadmConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 702
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig()V

    .line 704
    :cond_0
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1477
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1478
    return v2

    .line 1481
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1484
    const/16 v3, 0x3a

    invoke-static {p1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DM item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1486
    const v1, 0x11010004

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",INVLD DM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1487
    return v2

    .line 1490
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyDmValueChanged(Ljava/lang/String;I)V

    .line 1498
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1499
    .local v4, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onConfigUpdated()V

    .line 1500
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1501
    const-string v5, "onConfigUpdated:  mOmadmState is FINISHED"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1503
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v2

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v5

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1504
    const-string v5, "IMS configuration changed"

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1505
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 1506
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v6, :cond_5

    .line 1507
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1510
    .end local v4    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_5
    :goto_1
    goto :goto_0

    .line 1512
    :cond_6
    return v5
.end method

.method onDefaultNetworkStateChanged(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1380
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

    .line 1381
    .local v1, "pendingTask":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1382
    goto :goto_0

    .line 1384
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1385
    nop

    .line 1388
    .end local v1    # "pendingTask":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1389
    return-void
.end method

.method onDmConfigCompleted(Z)V
    .locals 5
    .param p1, "isCompleted"    # Z

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDmConfigCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v1, "TIMEOUT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeDmConfigTimeout()V

    .line 713
    const/4 v0, 0x0

    .local v0, "slot":I
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 714
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 715
    .local v2, "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    .line 716
    .end local v2    # "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_2

    .line 713
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 718
    .end local v0    # "slot":I
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    .line 719
    return-void
.end method

.method onEpdgConnected(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updatePani(I)V

    .line 261
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onEpdgConnected:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 266
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 268
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x0

    const-string v7, "EPDG HO : L2W"

    if-ne v4, v5, :cond_3

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-nez v4, :cond_3

    .line 272
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 274
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 276
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_2

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_2

    .line 279
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_2

    .line 281
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_4

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v4, :cond_4

    goto :goto_1

    .line 288
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    goto :goto_2

    .line 282
    :cond_5
    :goto_1
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 284
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 286
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v2, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    .line 291
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 292
    :cond_7
    return-void
.end method

.method protected onEpdgDeregisterRequested(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 330
    return-void
.end method

.method onEpdgDisconnected(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updatePani(I)V

    .line 298
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onEpdgDisconnected:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 303
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 305
    .local v3, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgDisconnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v6, "EPDG HO : W2L"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-nez v4, :cond_2

    .line 309
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkEmergencyInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    const-string v1, "onEpdgDisconnected: Skip re-registration due to Emergency registration"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p1, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    return-void

    .line 314
    :cond_1
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 316
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v7, v7}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_2

    .line 317
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_3

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 322
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    goto :goto_2

    .line 318
    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 320
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v7, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    .line 325
    .end local v3    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 326
    :cond_6
    return-void
.end method

.method protected onEpdgIkeError(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 1397
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    .line 1398
    .local v0, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1399
    .local v2, "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const-string v4, "IKE_AUTH_ERROR"

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 1400
    .end local v2    # "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 1401
    :cond_0
    return-void
.end method

.method protected onIpsecDisconnected(I)V
    .locals 12
    .param p1, "phoneId"    # I

    .line 1404
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string v1, "onIpsecDisconnected:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v1

    .line 1406
    .local v1, "voiceCallType":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 1407
    .local v2, "wfcEnabled":Z
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v3

    .line 1409
    .local v3, "wfcPrefMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpsecDisconnected: VoWiFi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1410
    if-eqz v2, :cond_2

    if-ne v3, v4, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 1411
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v6

    .line 1412
    .local v6, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1413
    .local v8, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1414
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_1

    .line 1415
    new-array v9, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v5

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1416
    iget-object v9, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v9, v8, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1417
    :cond_0
    new-array v9, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v11

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v5

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1418
    const-string v9, "Stop pdn when ipsec disconnected."

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v9, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1420
    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1423
    .end local v8    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1425
    .end local v6    # "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    :cond_2
    return-void
.end method

.method protected onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 1454
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const-string v0, "local IP changed"

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1456
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1457
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1460
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1462
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 1463
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    .line 1465
    :cond_2
    return-void
.end method

.method onNetworkChanged(IZI)V
    .locals 3
    .param p1, "network"    # I
    .param p2, "isWifiConnected"    # Z
    .param p3, "phoneId"    # I

    .line 559
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v0

    .line 560
    .local v0, "suspendByIrat":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: suspendByIrat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    if-nez v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updatePani(I)V

    .line 563
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->updateRat(II)V

    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->notifyNetworkEvent(IZI)V

    goto :goto_0

    .line 566
    :cond_0
    iput p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 567
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 568
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 570
    :goto_0
    return-void
.end method

.method onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 17
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 748
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v10

    .line 749
    .local v10, "old":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v11

    .line 750
    .local v11, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-eqz v10, :cond_e

    if-nez v11, :cond_0

    goto/16 :goto_4

    .line 754
    :cond_0
    const/4 v0, 0x0

    .line 755
    .local v0, "bExistRetryTimer":Z
    const/4 v1, 0x0

    .line 756
    .local v1, "bHaveRegisteringTask":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkEventChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "RegiMgr-NetEvtCtr"

    invoke-static {v12, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 759
    iget-object v2, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v8, v9}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 761
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/sec/internal/ims/core/RegisterTask;

    .line 762
    .local v14, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    const/4 v1, 0x0

    .line 764
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isExistRetryTimer()Z

    move-result v0

    move v15, v0

    goto :goto_1

    .line 762
    :cond_1
    move v15, v0

    .line 768
    .end local v0    # "bExistRetryTimer":Z
    .local v15, "bExistRetryTimer":Z
    :goto_1
    invoke-direct {v7, v14, v9, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 770
    new-array v0, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v6

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v5

    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_2

    .line 772
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    const/4 v0, 0x1

    move v1, v0

    .line 777
    :cond_2
    invoke-direct {v7, v9, v14, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 779
    move v0, v15

    goto :goto_0

    .line 777
    :cond_3
    move/from16 v16, v1

    goto :goto_2

    .line 781
    :cond_4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v6

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v5

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v4

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v2, v0, v3

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v0, v2

    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    invoke-direct {v7, v9, v14, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 784
    move v0, v15

    goto :goto_0

    .line 787
    :cond_5
    invoke-direct {v7, v9, v14, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 789
    :cond_6
    move/from16 v16, v1

    .end local v1    # "bHaveRegisteringTask":Z
    .local v16, "bHaveRegisteringTask":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V

    .line 790
    .end local v14    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    .line 792
    .end local v15    # "bExistRetryTimer":Z
    .end local v16    # "bHaveRegisteringTask":Z
    .restart local v0    # "bExistRetryTimer":Z
    .restart local v1    # "bHaveRegisteringTask":Z
    :cond_7
    invoke-direct {v7, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 794
    iget-boolean v2, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v2, :cond_8

    .line 795
    const-string/jumbo v2, "out of service."

    invoke-static {v12, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    iput-boolean v5, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 798
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 799
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 803
    :cond_8
    iget-object v2, v8, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v13, v10, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 804
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 807
    :cond_9
    iget-object v2, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 808
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v2, :cond_a

    .line 809
    return-void

    .line 812
    :cond_a
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v13

    invoke-direct {v7, v9, v13, v8, v10}, Lcom/sec/internal/ims/core/NetworkEventController;->updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 814
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v13

    if-nez v13, :cond_b

    .line 815
    const-string v3, "onNetworkEventChanged: tryRegister by phoneID"

    invoke-static {v12, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    iget-object v3, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    goto :goto_3

    .line 818
    :cond_b
    iget-object v13, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v13, v9}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/core/RegisterTask;

    .line 819
    .local v13, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v13, :cond_c

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v14, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v14, v3, v6

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v3, v5

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    invoke-virtual {v13, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 820
    const-string v3, "onNetworkEventChanged: tryRegister"

    invoke-static {v12, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 821
    iget-object v3, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v13}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 824
    .end local v13    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_c
    :goto_3
    iget-object v3, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 825
    iget-object v3, v7, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendEmptyMessage(I)Z

    .line 827
    :cond_d
    return-void

    .line 751
    .end local v0    # "bExistRetryTimer":Z
    .end local v1    # "bHaveRegisteringTask":Z
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_e
    :goto_4
    return-void
.end method

.method protected onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 333
    const-string v0, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    .line 334
    const-string/jumbo v1, "task is null. Skip pdnConnected event"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 338
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 339
    .local v2, "profile":Lcom/sec/ims/settings/ImsProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needPendingPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    return-void

    .line 350
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    const/4 v3, 0x0

    .line 352
    .local v3, "hasEmergencyTask":Z
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 353
    .local v5, "t":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 354
    const/4 v3, 0x1

    .line 355
    goto :goto_1

    .line 357
    .end local v5    # "t":Lcom/sec/internal/ims/core/RegisterTask;
    :cond_3
    goto :goto_0

    .line 358
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 359
    const-string v4, "onPdnConnected: Emergency task already removed"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    return-void

    .line 364
    .end local v3    # "hasEmergencyTask":Z
    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 365
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 366
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 367
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 369
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    .line 371
    .local v3, "needEmergencyReg":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPdnConnected: need emergency Registration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 379
    .end local v3    # "needEmergencyReg":Z
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnected()V

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 383
    :cond_7
    return-void
.end method

.method protected onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 390
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 392
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 393
    .local v1, "rtl":Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    if-nez v1, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    .line 398
    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 401
    :cond_1
    new-array v2, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_5

    .line 402
    const-string/jumbo v2, "pdn disconnected - REGISTERED or REGISTERING"

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 406
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 407
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 409
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v6, v6}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_1

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 415
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_1

    .line 417
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v7, :cond_6

    .line 418
    const-string/jumbo v2, "pdn disconnected - EMERGENCY"

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 419
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 420
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 421
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 422
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 423
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto/16 :goto_1

    .line 424
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v6, :cond_7

    .line 425
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 427
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 428
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_8

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 429
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {v2, v6, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 430
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 431
    :cond_8
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v2, v6, :cond_a

    .line 432
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 435
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {v2, v6, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 436
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 439
    :cond_a
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 444
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_b

    .line 445
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 449
    :cond_b
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_c

    .line 450
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 454
    :cond_c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->resetTaskOnPdnDisconnected()V

    .line 455
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 456
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_d

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v3, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 458
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 459
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    .line 461
    :cond_d
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 464
    :cond_e
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x88

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method onPdnFailed(ILjava/lang/String;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 657
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 658
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 659
    .local v1, "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 660
    goto :goto_0

    .line 662
    :cond_0
    const v2, 0x1101000a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",PDN FAIL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 663
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getRetryTimeOnPdnFail()J

    move-result-wide v2

    .line 667
    .local v2, "retrytime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 669
    iget-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 670
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 671
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 673
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.retryTimeExpired"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v4, "retryIntent":Landroid/content/Intent;
    const-string v5, "EXTRA_PHONE_ID"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 676
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v2, v3}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 677
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setRetryTimeOnPdnFail(J)V

    .line 679
    .end local v1    # "tasks":Lcom/sec/internal/ims/core/RegisterTask;
    .end local v2    # "retrytime":J
    .end local v4    # "retryIntent":Landroid/content/Intent;
    :cond_2
    goto :goto_0

    .line 682
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 684
    .local v0, "otherSlotIndex":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 685
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    .line 690
    .end local v0    # "otherSlotIndex":I
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_4
    return-void
.end method

.method onRetryTimeExpired(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 640
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 641
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 642
    goto :goto_0

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 646
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 647
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 650
    :cond_1
    const-string v2, "RegiMgr-NetEvtCtr"

    const-string v3, "RetrySetupEventReceiver: release throttle pdn fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 652
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    goto :goto_0

    .line 654
    :cond_2
    return-void
.end method

.method onVoicePreferredChanged(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1428
    const-string v0, "RegiMgr-NetEvtCtr"

    const-string/jumbo v1, "onVoicePreferredChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_0

    .line 1430
    const-string v1, "VolteServiceModule is not create yet so retry after 3 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x7b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1432
    return-void

    .line 1435
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 1436
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1437
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    .line 1438
    .local v1, "epdgMgr":Lcom/sec/epdg/EpdgManager;
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType()I

    move-result v2

    .line 1439
    .local v2, "dataRat":I
    const/4 v3, 0x0

    .line 1440
    .local v3, "w2lHoSoon":Z
    if-eqz v1, :cond_1

    .line 1441
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEnd()Z

    move-result v3

    .line 1442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_1
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 1445
    const-string v4, "EpdgEventReceiver, waiting for W2L HO event w/o re-regi"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(I)Z

    .line 1451
    .end local v1    # "epdgMgr":Lcom/sec/epdg/EpdgManager;
    .end local v2    # "dataRat":I
    .end local v3    # "w2lHoSoon":Z
    :cond_3
    :goto_0
    return-void
.end method

.method reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 10
    .param p1, "task"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 587
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->findBestNetwork(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)I

    move-result v0

    .line 593
    .local v0, "rat":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 594
    .local v1, "pdn":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 596
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    .line 597
    .local v3, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    if-nez v3, :cond_1

    .line 598
    return-void

    .line 601
    :cond_1
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "netTypeName":Ljava/lang/String;
    const-string v5, "RegiMgr-NetEvtCtr"

    if-nez v0, :cond_3

    iget-boolean v6, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v6, :cond_3

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel ongoing PDN in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 604
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 605
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isLegacy3gppNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 609
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 612
    :cond_2
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 613
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    if-eq v1, v6, :cond_7

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    const-string/jumbo v7, "pdn type has been changed, reconnect."

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 615
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 616
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 617
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 620
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 621
    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v6

    .line 622
    .local v6, "preferredPdnType":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnectPdn startTimsTimer rcs pdn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v2, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    const-string v5, "InternetPdnRequest"

    if-ne v6, v7, :cond_4

    .line 624
    iget-object v8, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v8, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 625
    iget-object v8, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v8, v9, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 627
    :cond_4
    iget-object v8, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v8, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 630
    .end local v6    # "preferredPdnType":I
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v6

    invoke-virtual {v5, v1, p1, v6}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    aput-object v9, v6, v8

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 632
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 633
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v6, "ImsPdnRequst"

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 637
    :cond_7
    :goto_0
    return-void
.end method

.method public setNwChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 555
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 556
    return-void
.end method

.method setOmaDmStateDB(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 5
    .param p1, "omadmState"    # Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 732
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 733
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 736
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOmaDmStateDB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "dm_state"

    const-string v3, "10"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.ims.dm.ContentProvider/imsDmStart"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    nop

    .end local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOmaDmStateDB : update failure - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 744
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 734
    :cond_2
    :goto_2
    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0
    .param p1, "regHandler"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 131
    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0
    .param p1, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 127
    return-void
.end method

.method triggerOmadmConfig()V
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerOmadmConfig - mOmadmState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v0, v1, :cond_0

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mUnprocessedOmadmConfig:Z

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDmConfigTimeout(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->setOmaDmStateDB(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 729
    :cond_0
    return-void
.end method
