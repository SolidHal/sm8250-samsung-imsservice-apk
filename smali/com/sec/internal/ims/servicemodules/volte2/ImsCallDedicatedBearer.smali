.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;
.super Ljava/lang/Object;
.source "ImsCallDedicatedBearer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private mIsDRBLost:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mRttBearerState:I

.field private mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

.field private mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I

.field private smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "volteModule"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p5, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p6, "am"    # Lcom/sec/internal/helper/PreciseAlarmManager;
    .param p7, "csm"    # Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 26
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    .line 28
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    .line 30
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    .line 31
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 39
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 40
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 41
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 42
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    .line 43
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 44
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 45
    return-void
.end method

.method private isIgnoredDedicatedBearLost(I)Z
    .locals 4
    .param p1, "qci"    # I

    .line 48
    const/4 v0, 0x1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_3

    :cond_1
    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    .line 49
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_PERU:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ENTEL_PERU:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 48
    :goto_1
    return v0
.end method

.method private onDedicatedBearerLost(I)V
    .locals 6
    .param p1, "qci"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->isIgnoredDedicatedBearLost(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDedicatedBearerLost: ignore DBR lost for mno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " qci:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 64
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v1, ", qci:"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 65
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v2

    .line 67
    .local v2, "epdgManager":Lcom/sec/epdg/EpdgManager;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 68
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDedicatedBearerLost: ignore Dedicated Bearer Lost due to EPDG for mno:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 76
    .end local v2    # "epdgManager":Lcom/sec/epdg/EpdgManager;
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    .line 78
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    if-eqz v2, :cond_4

    .line 79
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDedicatedBearerLost: igonre dedicated Bearer Lost mno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " after ending 3way conference call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 85
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDedicatedBearerLost: Dedicated Bearer Lost mno:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x1388

    if-eqz v1, :cond_6

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v4, :cond_5

    .line 88
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    .line 89
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v3, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIJ)V

    goto :goto_0

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 94
    :cond_6
    const/16 v1, 0x63

    if-ne p1, v1, :cond_7

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xd2

    .line 96
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 97
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 99
    :cond_7
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessageDelayed(IIJ)V

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method public getDRBLost()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    return v0
.end method

.method public getDedicatedBearerState(I)I
    .locals 4
    .param p1, "qci"    # I

    .line 148
    const/4 v0, 0x3

    .line 149
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    .line 170
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown qci:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    .line 161
    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    .line 167
    goto :goto_0

    .line 156
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    .line 157
    goto :goto_0

    .line 151
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    .line 152
    nop

    .line 173
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "qci:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0
.end method

.method public setDRBLost(Z)V
    .locals 0
    .param p1, "losted"    # Z

    .line 224
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    return-void
.end method

.method public setDedicatedBearerState(II)V
    .locals 3
    .param p1, "qci"    # I
    .param p2, "state"    # I

    .line 106
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "qci:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0x63

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    if-ne v2, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopRttDedicatedBearerTimer()V

    goto :goto_0

    .line 136
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    if-ne v2, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 140
    :cond_2
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    .line 141
    goto :goto_1

    .line 130
    :cond_3
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    .line 131
    goto :goto_1

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    if-eq v0, v1, :cond_6

    if-ne p2, v1, :cond_6

    .line 122
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 124
    :cond_6
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    .line 125
    goto :goto_1

    .line 109
    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    if-eq v0, v1, :cond_8

    if-ne p2, v1, :cond_8

    .line 111
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 113
    :cond_8
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    .line 114
    nop

    .line 145
    :goto_1
    return-void
.end method

.method protected setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 220
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 221
    return-void
.end method

.method protected startRttDedicatedBearerTimer(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 179
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer : millis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v0

    if-nez v0, :cond_2

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 193
    :cond_2
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDedicatedBearerState(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 194
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RTT Dedicated Bearer opened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 198
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RTT Dedicated Bearer Timer already has been started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 202
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRttDedicatedBearerTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->stopRttDedicatedBearerTimer()V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd1

    .line 205
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 207
    return-void

    .line 182
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer for ATT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method protected stopRttDedicatedBearerTimer()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRttDedicatedBearerTimer: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 217
    return-void
.end method
