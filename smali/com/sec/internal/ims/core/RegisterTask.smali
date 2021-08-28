.class public Lcom/sec/internal/ims/core/RegisterTask;
.super Ljava/lang/Object;
.source "RegisterTask.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegisterTask"


# instance fields
.field mContext:Landroid/content/Context;

.field mDeregiReason:I

.field private mDnsQueryRetryCount:I

.field private mFilteredReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

.field mHasForcedPendingUpdate:Z

.field private mHasPendingDeregister:Z

.field private mHasPendingEpdgHandover:Z

.field public mHasPendingRegister:Z

.field mHasPendingUpdate:Z

.field private mImmediatePendingUpdate:Z

.field private mIsRefreshReg:Z

.field public mIsUpdateRegistering:Z

.field private mKeepEmergencyTask:Z

.field mKeepPdn:Z

.field private mLastPani:Ljava/lang/String;

.field private mLastRegiFailReason:I

.field mMno:Lcom/sec/internal/constants/Mno;

.field protected mNetworkConnected:Landroid/net/Network;

.field mNotAvailableReason:I

.field mObject:Ljava/lang/Object;

.field private mPani:Ljava/lang/String;

.field private mPcscfHostname:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mPdnType:I

.field mPhoneId:I

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field mRcsProfile:Z

.field mReason:Ljava/lang/String;

.field mRecoveryReason:Ljava/lang/String;

.field mReg:Lcom/sec/ims/ImsRegistration;

.field mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field private mRegiFailReason:I

.field private mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

.field private mRegistrationRat:I

.field mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

.field private mResult:Landroid/os/Message;

.field protected mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

.field mSuspendByIrat:Z

.field mSuspendBySnapshot:Z

.field mSuspended:Z

.field private misEpdgHandoverInProgress:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 41
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 42
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 48
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    .line 57
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    .line 59
    const/16 v2, 0x29

    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 60
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 66
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 67
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 68
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 70
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 97
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 98
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 41
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 42
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 48
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    .line 57
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    .line 59
    const/16 v2, 0x29

    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 60
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 66
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 67
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 68
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 70
    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 73
    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .locals 14
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "regMgr"    # Lcom/sec/internal/ims/core/RegistrationManagerInternal;
    .param p3, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p4, "pdnController"    # Lcom/sec/internal/ims/core/PdnController;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "vsm"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p7, "cm"    # Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .param p8, "phoneId"    # I

    .line 106
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 41
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 42
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 44
    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 45
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 46
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 47
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 48
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 49
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 50
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 51
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 53
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 54
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 55
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 56
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    .line 57
    const-string v2, ""

    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 58
    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    .line 59
    const/16 v2, 0x29

    iput v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 60
    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    .line 61
    const/4 v2, -0x1

    iput v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 66
    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 67
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 68
    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 70
    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 73
    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 75
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 76
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    .line 90
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 107
    iput-object v9, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 108
    move-object/from16 v11, p5

    iput-object v11, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    .line 109
    iput-object v10, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    .line 110
    move-object/from16 v12, p4

    iput-object v12, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 111
    move/from16 v13, p8

    iput v13, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    .line 112
    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 114
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 120
    :goto_0
    const-string v0, "mmtel-video"

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string/jumbo v0, "smsip"

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    .line 126
    :cond_1
    iget-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v1, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v4, v8, Lcom/sec/internal/ims/core/RegisterTask;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, v8, Lcom/sec/internal/ims/core/RegisterTask;->mContext:Landroid/content/Context;

    move-object/from16 v2, p3

    move-object v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegiGovernorCreator;->getInstance(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    .line 128
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    iput v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    .line 129
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 131
    if-eqz v10, :cond_2

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public addFilteredReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public clearFilteredReason()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    return-void
.end method

.method public clearNotAvailableReason()V
    .locals 1

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    .line 743
    return-void
.end method

.method public clearSuspended()V
    .locals 1

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 481
    return-void
.end method

.method public clearSuspendedBySnapshot()V
    .locals 1

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 486
    return-void
.end method

.method public clearUpdateRegisteringFlag()V
    .locals 1

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 748
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 749
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 750
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 751
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 752
    return-void
.end method

.method public clearUserAgent()V
    .locals 1

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 496
    return-void
.end method

.method public getDeregiCause(Lcom/sec/ims/util/SipError;)I
    .locals 3
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 583
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transportErrorCode: reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterTask"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 587
    .local v0, "errorCode":I
    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    .line 589
    const/4 v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    .line 592
    const/4 v0, 0x2

    goto :goto_0

    .line 593
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    const/16 v2, 0x29

    if-lt v1, v2, :cond_2

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    .line 595
    const/16 v0, 0x10

    goto :goto_0

    .line 596
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    const/16 v2, 0x47

    if-lt v1, v2, :cond_3

    const/16 v2, 0x50

    if-gt v1, v2, :cond_3

    .line 598
    const/16 v0, 0x20

    .line 601
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    .line 602
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getWFCSubscribeForbiddenCounter()I

    move-result v1

    if-lez v1, :cond_5

    .line 603
    const/16 v1, 0x969

    return v1

    .line 605
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 612
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 613
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 614
    const/16 v1, 0x57b

    .line 615
    .local v1, "voWiFiNotAllowedRegion":I
    const/16 v2, 0x57b

    return v2

    .line 620
    .end local v1    # "voWiFiNotAllowedRegion":I
    :cond_5
    return v0
.end method

.method public getDeregiReason()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    return v0
.end method

.method public getDnsQueryRetryCount()I
    .locals 1

    .line 761
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    return v0
.end method

.method public getFilteredReason()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mFilteredReason:Ljava/util/List;

    return-object v0
.end method

.method public getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method public getLastRegiFailReason()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    return v0
.end method

.method public getMno()Lcom/sec/internal/constants/Mno;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method public getNetworkConnected()Landroid/net/Network;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    return-object v0
.end method

.method public getNotAvailableReason()I
    .locals 1

    .line 737
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    return v0
.end method

.method public getPani()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPani:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfHostname()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPdnType()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    return v0
.end method

.method public getProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRegiFailReason()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    return v0
.end method

.method public getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    return-object v0
.end method

.method public getRegistrationRat()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    return v0
.end method

.method public getResultMessage()Landroid/os/Message;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    return-object v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    return-object v0
.end method

.method public getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v0
.end method

.method public hasForcedPendingUpdate()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    return v0
.end method

.method public hasPendingDeregister()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    return v0
.end method

.method public hasPendingEpdgHandover()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    return v0
.end method

.method public hasPendingUpdate()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    return v0
.end method

.method public isEpdgHandoverInProgress()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    return v0
.end method

.method public isImmediatePendingUpdate()Z
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    return v0
.end method

.method public isKeepPdn()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    return v0
.end method

.method public isNeedOmadmConfig()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedOmadmConfig()Z

    move-result v0

    return v0
.end method

.method public varargs isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z
    .locals 5
    .param p1, "states"    # [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "isMatched":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 402
    .local v3, "state":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v3, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_1

    .line 401
    .end local v3    # "state":Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_1
    :goto_1
    return v0
.end method

.method public isRcsOnly()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRcsProfile:Z

    return v0
.end method

.method public isRefreshReg()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuspended: mSuspended("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") mSuspendByIrat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

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

.method public isUpdateRegistering()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    return v0
.end method

.method public keepEmergencyTask(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .line 712
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    .line 713
    return-void
.end method

.method public needKeepEmergencyTask()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepEmergencyTask:Z

    return v0
.end method

.method public onConnected(ILandroid/net/Network;)V
    .locals 2
    .param p1, "pdnType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 138
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: pdntype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 145
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 147
    return-void
.end method

.method public onDisconnected(IZ)V
    .locals 3
    .param p1, "pdnType"    # I
    .param p2, "isPdnUp"    # Z

    .line 151
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNetworkConnected:Landroid/net/Network;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected: pdntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPdnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 157
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "RegisterTask"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 162
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 166
    :cond_1
    return-void
.end method

.method public onLocalIpChanged(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "isStackedIpChanged"    # Z

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocalIpChanged: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isStackedIpChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 288
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyLocalIpChanged(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 294
    return-void
.end method

.method public onNetworkRequestFail()V
    .locals 1

    .line 776
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 777
    return-void
.end method

.method public onPcscfAddressChanged(ILjava/util/List;)V
    .locals 2
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "pcscf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcscfAddressChanged: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 268
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pcscf Preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 269
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    if-eq p1, v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 281
    :cond_2
    return-void
.end method

.method public onResumed(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResumed: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIsUpdateRegistering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mHasPendingRegister="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    if-eqz v0, :cond_1

    .line 211
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegman:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->doPendingUpdateRegistration()V

    .line 217
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 219
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 223
    return-void

    .line 220
    :cond_3
    :goto_0
    return-void
.end method

.method public onResumedBySnapshot(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResumedBySnapshot: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 257
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 261
    return-void

    .line 258
    :cond_2
    :goto_0
    return-void
.end method

.method public onSuspended(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSuspended: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIsUpdateRegistering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 184
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingRegister:Z

    .line 187
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 189
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 194
    return-void

    .line 190
    :cond_3
    :goto_0
    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSuspendedBySnapshot: networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 237
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 242
    return-void

    .line 238
    :cond_2
    :goto_0
    return-void
.end method

.method public resetTaskOnPdnDisconnected()V
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspended()V

    .line 782
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->clearSuspendedBySnapshot()V

    .line 783
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 784
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcoType()V

    .line 785
    return-void
.end method

.method public resumeByIrat()V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeByIrat:mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 332
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 337
    return-void

    .line 333
    :cond_2
    :goto_0
    return-void
.end method

.method public setDeregiCause(I)V
    .locals 1
    .param p1, "cause"    # I

    .line 344
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x322

    if-eq p1, v0, :cond_5

    const/16 v0, 0x327

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 378
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    goto :goto_0

    .line 360
    :cond_0
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 361
    goto :goto_0

    .line 357
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 358
    goto :goto_0

    .line 354
    :cond_2
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 355
    goto :goto_0

    .line 351
    :cond_3
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 352
    goto :goto_0

    .line 375
    :cond_4
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 376
    goto :goto_0

    .line 372
    :cond_5
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 373
    goto :goto_0

    .line 369
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 370
    goto :goto_0

    .line 366
    :cond_7
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 367
    goto :goto_0

    .line 363
    :cond_8
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 364
    goto :goto_0

    .line 348
    :cond_9
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 349
    nop

    .line 381
    :goto_0
    return-void
.end method

.method public setDeregiReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 535
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    .line 536
    return-void
.end method

.method public setDnsQueryRetryCount(I)V
    .locals 0
    .param p1, "retrycount"    # I

    .line 756
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDnsQueryRetryCount:I

    .line 757
    return-void
.end method

.method public setEpdgHandoverInProgress(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 702
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->misEpdgHandoverInProgress:Z

    .line 703
    return-void
.end method

.method public setHasForcedPendingUpdate(Z)V
    .locals 0
    .param p1, "forcedPendingUpdate"    # Z

    .line 660
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 661
    return-void
.end method

.method public setHasPendingDeregister(Z)V
    .locals 0
    .param p1, "pendingDeregister"    # Z

    .line 570
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingDeregister:Z

    .line 571
    return-void
.end method

.method public setHasPendingEpdgHandover(Z)V
    .locals 0
    .param p1, "pendingEpdgHandover"    # Z

    .line 670
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingEpdgHandover:Z

    .line 671
    return-void
.end method

.method public setImmediatePendingUpdate(Z)V
    .locals 0
    .param p1, "immediatePendingUpdate"    # Z

    .line 680
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mImmediatePendingUpdate:Z

    .line 681
    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 771
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 772
    return-void
.end method

.method public setIsRefreshReg(Z)V
    .locals 0
    .param p1, "isRefreshReg"    # Z

    .line 550
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsRefreshReg:Z

    .line 551
    return-void
.end method

.method public setKeepPdn(Z)V
    .locals 0
    .param p1, "keepPdn"    # Z

    .line 520
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    .line 521
    return-void
.end method

.method public setLastRegiFailReason(I)V
    .locals 0
    .param p1, "lastRegiFailReason"    # I

    .line 630
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastRegiFailReason:I

    .line 631
    return-void
.end method

.method public setNotAvailableReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 732
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mNotAvailableReason:I

    .line 733
    return-void
.end method

.method public setPaniSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pani"    # Ljava/lang/String;
    .param p2, "lastPani"    # Ljava/lang/String;

    .line 792
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPani:Ljava/lang/String;

    .line 793
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegisterTask;->mLastPani:Ljava/lang/String;

    .line 794
    return-void
.end method

.method public setPcscfHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .line 560
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setPdnType(I)V
    .locals 0
    .param p1, "pdn"    # I

    .line 418
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    .line 419
    return-void
.end method

.method public setPendingUpdate(Z)V
    .locals 0
    .param p1, "pendingUpdate"    # Z

    .line 650
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 651
    return-void
.end method

.method public setProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 340
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 341
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 545
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setRecoveryReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 766
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public setRegiFailReason(I)V
    .locals 0
    .param p1, "regiFailReason"    # I

    .line 515
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiFailReason:I

    .line 516
    return-void
.end method

.method public setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V
    .locals 0
    .param p1, "regiRequestType"    # Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 697
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegiRequestType:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    .line 698
    return-void
.end method

.method public setRegistrationRat(I)V
    .locals 0
    .param p1, "rat"    # I

    .line 470
    iput p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    .line 471
    return-void
.end method

.method public setResultMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 722
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mResult:Landroid/os/Message;

    .line 723
    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 458
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 459
    return-void
.end method

.method public setUpdateRegistering(Z)V
    .locals 0
    .param p1, "updateRegistering"    # Z

    .line 640
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    .line 641
    return-void
.end method

.method public setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V
    .locals 0
    .param p1, "ua"    # Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    .line 690
    if-eqz p1, :cond_0

    .line 691
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    .line 693
    :cond_0
    return-void
.end method

.method public suspendByIrat()V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendByIrat:mSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendByIrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mSuspendBySnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 314
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 319
    return-void

    .line 315
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterTask["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistrationRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mRegistrationRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPdnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPdnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPcscfHostname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPcscfHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeregiReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mDeregiReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
