.class public Lcom/sec/internal/ims/core/RegistrationGovernorKddi;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorKddi.java"


# static fields
.field private static final CP_T3402_EVENT_TIMER:I = 0x2d0

.field private static final DEFAULT_RETRY_AFTER:I = 0xa

.field private static final DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

.field private static final DEFAULT_TIMS_TIMER:I = 0x258

.field private static final KDDI_REG_FAIL_RETRY:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnKddi"


# instance fields
.field protected mSubscribeFailureCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 1
    .param p1, "regMan"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "task"    # Lcom/sec/internal/ims/core/RegisterTask;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p6, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p7, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    .line 70
    return-void
.end method

.method private handleEmergencyRegistrationError(Lcom/sec/ims/util/SipError;)V
    .locals 4
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v1, "RegiGvnKddi"

    if-eqz v0, :cond_0

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationError: Emergency Registration failed by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tried on all PCSCF so trying again on First PCSCF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "onRegistrationError: Registration Retries failed so start the T3402 Timer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "onRegistrationError: block Registration Retries for the T3402 Timer on Epdg"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xafc80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->startRetryTimer(J)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->resetPcscfList()V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 91
    :goto_0
    return-void
.end method

.method private onRefreshRegError(Lcom/sec/ims/util/SipError;I)V
    .locals 8
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "bErrorRespReceived":Z
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 230
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_INTERNAL_ERROR:Lcom/sec/ims/util/SipError;

    .line 231
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 232
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 233
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 234
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_FOUND:Lcom/sec/ims/util/SipError;

    .line 235
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    .line 236
    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    move v0, v1

    .line 238
    if-eqz v0, :cond_2

    .line 239
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 242
    :cond_2
    const-string v1, "RegiGvnKddi"

    if-nez v0, :cond_5

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    goto :goto_2

    .line 279
    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 280
    if-nez p2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    const/16 p2, 0xa

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 284
    const-string v2, "onRegistrationError: Refresh Reg Retry same Refresh "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V

    .line 287
    return-void

    .line 249
    :cond_5
    :goto_2
    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mNumOfPcscfIp:I

    if-ge v4, v5, :cond_7

    .line 250
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 251
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 252
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 253
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 254
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_3

    .line 257
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 259
    :goto_3
    const-string v2, "onRegistrationError: Send Initial REGISTER on NextPCSCF for error of Refresh REG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 263
    return-void

    .line 265
    :cond_7
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 266
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 267
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v1, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 273
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->handleEmergencyRegistrationError(Lcom/sec/ims/util/SipError;)V

    .line 274
    return-void
.end method


# virtual methods
.method protected applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 454
    .local v0, "isRoaming":Z
    if-nez p1, :cond_0

    .line 455
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v1, v2, :cond_2

    .line 459
    if-eqz v0, :cond_1

    .line 460
    const-string v1, "mmtel-video"

    const-string v2, "VoPS Off"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "mmtel"

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 467
    :cond_2
    :goto_0
    return-object p1
.end method

.method protected checkVolteSetting(I)Z
    .locals 2
    .param p1, "rat"    # I

    .line 472
    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->getVoiceTechType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "RegiGvnKddi"

    const-string v1, "isReadyToRegister: volte disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->resetNotifiedImsNotAvailable(I)V

    .line 477
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 407
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 408
    .local v1, "filteredServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    const-string v4, "ims"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 409
    .local v2, "isImsEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    const-string/jumbo v7, "volte"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 411
    .local v3, "isVolteEnabled":Z
    :cond_1
    const-string v4, "RegiGvnKddi"

    if-nez v2, :cond_2

    .line 412
    const-string v5, "filterEnabledCoreService: IMS is disabled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 414
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->getVoiceTechType()I

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    const-string v5, "filterService: volte disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 420
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 423
    :cond_3
    if-eqz v3, :cond_4

    .line 424
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 425
    const-string v4, "mmtel"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 426
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 430
    :cond_4
    const/16 v4, 0xd

    if-ne p2, v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 431
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->applyVoPsPolicy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 433
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 434
    return-object v0

    .line 438
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->isVideoCallEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 439
    const-string v4, "mmtel-video"

    const-string v5, "VideoCall disable"

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 444
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 447
    :cond_7
    return-object v1
.end method

.method protected getVoiceTechType()I
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 379
    .local v0, "voiceType":I
    const-string v1, "RegiGvnKddi"

    if-eqz v0, :cond_0

    .line 380
    const-string v3, "getVoiceTechType : voicecall_type is not 0, correct it"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-static {v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 383
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceTechType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    if-nez v0, :cond_1

    const-string v3, "VOLTE"

    goto :goto_0

    :cond_1
    const-string v3, "CS"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v0
.end method

.method protected handleNormalResponse(Lcom/sec/ims/util/SipError;I)V
    .locals 8
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 96
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    .line 97
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 98
    const/16 p2, 0xa

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 100
    int-to-long v0, p2

    mul-long/2addr v0, v4

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->startRetryTimer(J)V

    .line 101
    return-void
.end method

.method public isReadyToRegister(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 482
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->checkRoamingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->checkVolteSetting(I)Z

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

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatus: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnKddi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 320
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mHasVoLteCall:Z

    goto :goto_0

    .line 321
    :cond_0
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_1

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mHasVoLteCall:Z

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_2

    .line 324
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->removeCurrentPcscfAndInitialRegister(Z)V

    .line 326
    :cond_2
    :goto_0
    return-void
.end method

.method public onManualDeregister(Z)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 6
    .param p1, "isExplicit"    # Z

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    const-string v1, "RegiGvnKddi"

    const-string v3, "onManualDeregister: for Emergency DeRegistration"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 494
    return-object v2

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onManualDeregister(Z)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    return-object v0

    .line 496
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v5, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 497
    return-object v2
.end method

.method public bridge synthetic onManualDeregister(Z)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->onManualDeregister(Z)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    return-object p1
.end method

.method public onRegistrationDone()V
    .locals 1

    .line 223
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 224
    const-string v0, "Registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->stopTimsTimer(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 8
    .param p1, "error"    # Lcom/sec/ims/util/SipError;
    .param p2, "retryAfter"    # I
    .param p3, "unsolicit"    # Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsPermanentStopped "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mIsPermanentStopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegiGvnKddi"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegistrationError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fail count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 113
    if-gez p2, :cond_0

    .line 114
    const/4 p2, 0x0

    .line 117
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->handleNormalResponse(Lcom/sec/ims/util/SipError;I)V

    .line 219
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 121
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 130
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_REJECTED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "onRegistrationError: Silently Purge the IMS Registration and dont send REGISTER"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 135
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mIsPermanentStopped:Z

    .line 136
    return-void

    .line 141
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_UNREGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v2, "Notify terminated unregistered"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRefreshReg()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->onRefreshRegError(Lcom/sec/ims/util/SipError;I)V

    .line 153
    return-void

    .line 163
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "onRegistrationError: Registration failed error "

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    const/4 v6, 0x5

    if-ge v0, v6, :cond_7

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Incremented mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 174
    if-nez p2, :cond_6

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 176
    const/16 p2, 0xa

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 180
    int-to-long v0, p2

    mul-long/2addr v0, v4

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->DEFAULT_RETRY_AFTER_BUFFER_MS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->startRetryTimer(J)V

    .line 181
    return-void

    .line 187
    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    iget v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mNumOfPcscfIp:I

    if-ge v0, v6, :cond_9

    .line 188
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 189
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0, v4, v6}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 197
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Incremented mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mTask.getState()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 200
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_9
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 206
    iput v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iput-boolean v3, v0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 214
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->handleEmergencyRegistrationError(Lcom/sec/ims/util/SipError;)V

    .line 215
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnKddi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v0, "mmtel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 335
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 336
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_1

    .line 339
    :cond_2
    const-string/jumbo v0, "smsip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x193

    if-eq v0, v2, :cond_4

    .line 341
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_4

    .line 342
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x1a7

    if-eq v0, v2, :cond_4

    .line 343
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x198

    if-eq v0, v2, :cond_4

    .line 344
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_4

    .line 345
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_4

    .line 346
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x1f8

    if-eq v0, v2, :cond_4

    .line 347
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v2, 0x2c4

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 352
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 348
    :cond_4
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "SMS Error. Inital Register."

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 355
    :cond_5
    :goto_1
    return-object p2
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribeError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mSubscribeFailureCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnKddi"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-nez p1, :cond_2

    .line 294
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    .line 295
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 296
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 298
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    .line 299
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    .line 300
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    .line 301
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    .line 302
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x2c4

    if-ne v0, v1, :cond_2

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v3, "Subscribe Error. Initial Register."

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    const-string/jumbo v0, "onSubscribeError: Complain to Governor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    .line 310
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, p2, v0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    .line 313
    :cond_2
    :goto_0
    return-void
.end method

.method public resetRetry()V
    .locals 2

    .line 360
    const-string v0, "RegiGvnKddi"

    const-string/jumbo v1, "resetRetry()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mFailureCounter:I

    .line 363
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mSubscribeFailureCounter:I

    .line 364
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurPcscfIpIdx:I

    .line 365
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mCurImpu:I

    .line 366
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mRegiAt:J

    .line 367
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 390
    const v0, 0x927c0

    .line 392
    .local v0, "mTimsTimer":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    .line 397
    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKddi;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 402
    return-void
.end method
