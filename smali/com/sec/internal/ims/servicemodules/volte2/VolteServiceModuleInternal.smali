.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "VolteServiceModuleInternal.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    }
.end annotation


# instance fields
.field protected mActiveImpu:[Lcom/sec/ims/util/ImsUri;

.field protected mAutomaticMode:[Z

.field protected mCheckRunningState:Z

.field protected mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

.field protected final mCmcPdCheckTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

.field protected final mContext:Landroid/content/Context;

.field protected mEcbmMode:[Z

.field protected mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

.field protected mEnableCallWaitingRule:Z

.field protected mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected final mEpdnDisconnectTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field protected mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

.field protected mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

.field protected final mIsCmcPdCheckRespRecevied:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeregisterTimerRunning:[Z

.field protected mIsLteEpsOnlyAttached:[Z

.field protected mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

.field protected mLastRegiErrorCode:[I

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

.field protected mMmtelAcquiredEver:Z

.field protected mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

.field protected mNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field protected final mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected final mPhoneStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field protected mProhibited:[Z

.field protected mQualityStatistics:Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

.field protected mRatChanged:[Z

.field protected final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReleaseWfcBeforeHO:[Z

.field protected mRttMode:[I

.field private mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

.field protected final mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field protected final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mTtyMode:[I

.field protected mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field private mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

.field protected mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 23
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p4, "pc"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .param p5, "volteServiceInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p6, "mediaServiceInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .param p7, "optionsServiceInterface"    # Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 148
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    .line 117
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    .line 118
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    .line 126
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    .line 127
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    .line 135
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 136
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mQualityStatistics:Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

    .line 138
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 139
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 141
    iput-boolean v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 142
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 149
    iput-boolean v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 150
    iput-object v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 151
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->NAME:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-direct {v2, v7, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 152
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 153
    move-object/from16 v10, p5

    iput-object v10, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 154
    move-object/from16 v11, p6

    iput-object v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    .line 155
    move-object/from16 v12, p7

    iput-object v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 159
    .local v15, "phoneCount":I
    new-array v2, v15, [Z

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    .line 160
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    .line 161
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    .line 162
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    .line 163
    new-array v3, v15, [Lcom/sec/ims/DialogEvent;

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 164
    new-array v3, v15, [Lcom/sec/ims/util/ImsUri;

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    .line 165
    new-array v3, v15, [I

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 166
    new-array v3, v15, [I

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    .line 167
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    .line 168
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    .line 169
    new-array v3, v15, [I

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    .line 170
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    .line 171
    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 172
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 173
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 174
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 175
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 178
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 179
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 180
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 181
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([II)V

    .line 182
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 184
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v6, v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x2

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x3

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x8

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x11

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x16

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x19

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x12

    invoke-interface {v2, v6, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    const/16 v2, 0x18

    invoke-static {v6, v2, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, "DSDS_SI_DDS"

    if-le v2, v1, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/16 v1, 0x1a

    invoke-static {v6, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/16 v4, 0x5121

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 206
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 207
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 209
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    const-string v13, "do not make PhoneStateListenerInternal with non-DDS slot"

    invoke-static {v4, v5, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 214
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    .line 215
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v13

    invoke-direct {v4, v6, v5, v13}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 216
    .local v4, "psli":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v14

    invoke-virtual {v5, v4, v13, v14}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 218
    const/16 v5, 0x1e

    invoke-interface {v2, v6, v5, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    const/16 v5, 0x1f

    invoke-interface {v2, v6, v5, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v14}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v4    # "psli":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-direct {v0, v6, v8, v15}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    .line 225
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportEchoLocate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Echolocate enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateIntentBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    .line 230
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportCiq"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    new-instance v0, Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    .line 234
    :cond_4
    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 235
    move-object/from16 v14, p4

    iput-object v14, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 236
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 237
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    .line 238
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V

    iput-object v13, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 241
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v13, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-object/from16 v20, v13

    move-object v13, v0

    move-object/from16 v14, p1

    move/from16 v22, v15

    .end local v15    # "phoneCount":I
    .local v22, "phoneCount":I
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v21, v22

    invoke-direct/range {v13 .. v21}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 243
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    .line 244
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    .line 245
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    .line 248
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    .line 248
    :goto_1
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    .line 251
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.intent.action.LTE_BAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 263
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mQualityStatistics:Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

    .line 266
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getWfcEpdgManager()Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerEpdgConnectionListener()V

    .line 268
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;

    invoke-direct {v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VolteServiceModule created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 99
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    return v0
.end method

.method private convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I
    .locals 3
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 1453
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    const/16 v0, 0x647

    return v0

    .line 1455
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x640

    if-eqz v0, :cond_1

    .line 1456
    return v1

    .line 1457
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1458
    const/16 v0, 0x64c

    return v0

    .line 1459
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    const/16 v0, 0x648

    return v0

    .line 1461
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1462
    const/16 v0, 0x655

    return v0

    .line 1463
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x644

    if-eqz v0, :cond_5

    .line 1464
    return v2

    .line 1465
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1466
    return v2

    .line 1467
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1468
    const/16 v0, 0x64f

    return v0

    .line 1469
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1470
    return v2

    .line 1471
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1472
    return v2

    .line 1473
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1474
    return v2

    .line 1475
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1476
    return v2

    .line 1477
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1478
    const/16 v0, 0x5e8

    return v0

    .line 1479
    :cond_c
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1480
    return v1

    .line 1482
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1326
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "dialingNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1328
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1330
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v2, "0"

    if-ne p2, v1, :cond_1

    .line 1331
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string v3, "+82"

    invoke-static {v0, v3, v2, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1332
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-ne p2, v1, :cond_2

    .line 1333
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string v3, "+95"

    invoke-static {v0, v3, v2, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1334
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1335
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string v3, "+61"

    invoke-static {v0, v3, v2, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1329
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1338
    :cond_4
    :goto_1
    return-object v0
.end method

.method private getErrorCodeIncomingCallWithVolteOff(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1283
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1284
    .local v0, "error":Lcom/sec/ims/util/SipError;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v1, :cond_6

    .line 1285
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v3

    invoke-virtual {v1, v2, p3, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->checkRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    goto/16 :goto_0

    .line 1288
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    .line 1289
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_1

    .line 1290
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 1292
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1293
    :cond_2
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1294
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1295
    :cond_3
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1296
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1297
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1298
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1299
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1301
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1304
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v1, :cond_7

    .line 1305
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1307
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 1309
    :goto_0
    return-object v0
.end method

.method private getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    .locals 3
    .param p1, "phoneId"    # I

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 346
    .local v1, "psli":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->getInternalPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 347
    return-object v1

    .line 349
    .end local v1    # "psli":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    :cond_0
    goto :goto_0

    .line 350
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPhoneStateListener: psli is not exist."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method private handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V
    .locals 26
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p3, "isSamsungMdmnCall"    # Z
    .param p4, "isDelayedIncoming"    # Z
    .param p5, "error"    # Lcom/sec/ims/util/SipError;

    .line 1368
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 1369
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 1372
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Has Active CS Call, try after"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1374
    return-void

    .line 1377
    :cond_0
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    move-object v10, v0

    .line 1378
    .local v10, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    .line 1379
    .local v0, "callType":I
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    move-object/from16 v3, p5

    if-ne v3, v2, :cond_2

    .line 1380
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    move-object/from16 v11, p1

    invoke-virtual {v2, v4, v11, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->checkRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v2

    .line 1381
    .end local p5    # "error":Lcom/sec/ims/util/SipError;
    .local v2, "error":Lcom/sec/ims/util/SipError;
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-eq v2, v3, :cond_1

    .line 1382
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsIncomingCallEvent: reject call. error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1384
    return-void

    .line 1381
    :cond_1
    move-object v12, v2

    goto :goto_0

    .line 1379
    .end local v2    # "error":Lcom/sec/ims/util/SipError;
    .restart local p5    # "error":Lcom/sec/ims/util/SipError;
    :cond_2
    move-object/from16 v11, p1

    move-object v12, v3

    .line 1388
    .end local p5    # "error":Lcom/sec/ims/util/SipError;
    .local v12, "error":Lcom/sec/ims/util/SipError;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1390
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void

    .line 1394
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v9, v2, :cond_4

    .line 1395
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1396
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1398
    .local v2, "mobileDataOn":I
    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1399
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onImsIncomingCallEvent: mobile data is off. Downgrade video call to voice call."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v0, 0x1

    move v15, v0

    goto :goto_1

    .line 1407
    .end local v2    # "mobileDataOn":I
    :cond_4
    move v15, v0

    .end local v0    # "callType":I
    .local v15, "callType":I
    :goto_1
    invoke-virtual {v10, v15}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1408
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    invoke-virtual {v10, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 1409
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 1410
    invoke-virtual {v10, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 1411
    move/from16 v14, p3

    invoke-virtual {v10, v14}, Lcom/sec/ims/volte2/data/CallProfile;->setSamsungMdmnCall(Z)V

    .line 1412
    invoke-direct {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1415
    invoke-direct {v1, v9, v8, v10}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setDisplayName(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1418
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1419
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onImsIncomingCallEvent: Setting composer data incoming flow"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    .line 1423
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1424
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "cmcDeviceId":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .end local v0    # "cmcDeviceId":Ljava/lang/String;
    goto :goto_2

    .line 1426
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1427
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    goto :goto_3

    .line 1426
    :cond_7
    :goto_2
    nop

    .line 1430
    :goto_3
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 1431
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget v7, v0, v3

    .line 1430
    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p1

    move v6, v15

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 1433
    .local v2, "incomingCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-ne v12, v0, :cond_a

    .line 1434
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/PackageUtils;->isOneTalkFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1435
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(ILjava/util/HashMap;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 1437
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    goto :goto_4

    .line 1438
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "session already removed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move v3, v15

    goto :goto_5

    .line 1435
    :cond_8
    move v3, v15

    goto :goto_5

    .line 1434
    :cond_9
    move v3, v15

    goto :goto_5

    .line 1445
    :cond_a
    new-instance v0, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v0

    move v14, v3

    move v3, v15

    .end local v15    # "callType":I
    .local v3, "callType":I
    invoke-direct/range {v13 .. v25}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1447
    .local v0, "callInfo":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 1449
    .end local v0    # "callInfo":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingPreAlerting(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1450
    return-void
.end method

.method private ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I
    .locals 6
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "incomingCallSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1487
    if-nez p2, :cond_0

    .line 1488
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImsIncomingCallEvent: mIncomingCallSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/16 v0, 0x64c

    return v0

    .line 1492
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/16 v0, 0x642

    return v0

    .line 1498
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1500
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1502
    const/4 v1, 0x0

    .line 1503
    .local v1, "rejectReason":I
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/ImsCallUtil;->isSamsungFmcConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p4, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p4, v2, :cond_4

    .line 1504
    :cond_3
    const/16 v1, 0x643

    .line 1505
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "need to reject incoming call.. due to CS Call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v4

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1507
    return v1

    .line 1510
    .end local v1    # "rejectReason":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private isVideoSettingEnabled()Z
    .locals 3

    .line 950
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private registerEpdgConnectionListener()V
    .locals 2

    .line 831
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 861
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V

    .line 862
    return-void
.end method

.method private setDisplayName(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 4
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p3, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 1342
    sget-object v0, Lcom/sec/internal/constants/Mno;->AVEA_TURKEY:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    .line 1343
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    .line 1344
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\+?[0-9\\-]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1346
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onImsIncomingCallEvent: displayName match with phonenumber format, set as DialingNumber"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_1

    .line 1350
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1352
    :cond_1
    invoke-virtual {p3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_4

    .line 1355
    :cond_3
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    const-string v1, "\\\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->GRAMEENPHONE:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_5

    .line 1359
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsIncomingCallEvent: displayName is different with phone number so setting extra mLetteringText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {p3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 1364
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method

.method private setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V
    .locals 6
    .param p1, "incomingCallSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p4, "isSamsungMdmnCall"    # Ljava/lang/Boolean;
    .param p5, "error"    # I

    .line 1515
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_0

    .line 1516
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    .line 1517
    .local v0, "callType":I
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopActiveCamera()V

    .line 1524
    .end local v0    # "callType":I
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 1526
    .local v0, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1527
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1528
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1530
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startIncoming()V

    .line 1532
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, "replaces":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1536
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Has replaces. Check Dialog Id"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceSipCallId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setReplaceSipCallId(Ljava/lang/String;)V

    .line 1541
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1542
    .local v2, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNotifyHistoryInfo()Ljava/lang/String;

    move-result-object v3

    .line 1543
    .local v3, "notifyHistoryInfo":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const-string v4, "not_notify"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1544
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1545
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1546
    :cond_3
    const-string v4, "change_number"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1547
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1549
    :cond_4
    const-string/jumbo v4, "toast_only"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1550
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1553
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, v4, :cond_6

    .line 1554
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    .line 1557
    :cond_6
    :goto_0
    return-void
.end method

.method private updateCategoryList(I)Ljava/lang/String;
    .locals 13
    .param p1, "phoneId"    # I

    .line 785
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 786
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const-string v1, ""

    .local v1, "eccCategoryList":Ljava/lang/String;
    const-string v2, ""

    .line 787
    .local v2, "eccSimList":Ljava/lang/String;
    const-string v3, "ecc_category_list_cdma"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "ecclist_cdma":Ljava/lang/String;
    if-gtz p1, :cond_0

    const-string/jumbo v5, "ril.ecclist_net0"

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ril.ecclist_net"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 790
    .local v5, "ecclistOnNet":Ljava/lang/String;
    :goto_0
    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "eccNetList":Ljava/lang/String;
    nop

    .line 792
    const-string v7, "ecc_category_list"

    invoke-static {p1, v7, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v7, "eccImsList":Ljava/lang/String;
    const/4 v8, 0x0

    .line 795
    .local v8, "i":I
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ril.ecclist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 796
    .local v9, "key":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 797
    .local v10, "n":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ","

    if-nez v11, :cond_a

    .line 805
    .end local v8    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "n":Ljava/lang/String;
    move-object v1, v7

    .line 807
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 808
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v1, v8

    .line 811
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 812
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object v1, v8

    .line 815
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 816
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    goto :goto_4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v1, v4

    .line 819
    :cond_6
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 820
    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_7

    goto :goto_5

    .line 822
    :cond_7
    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_9

    .line 823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 821
    :cond_8
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "000/4,08/4,110/4,999/4,118/4,"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    :cond_9
    :goto_6
    return-object v1

    .line 798
    .restart local v8    # "i":I
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "n":Ljava/lang/String;
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b

    .line 799
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 801
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "n":Ljava/lang/String;
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 9
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 423
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 424
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v0

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 428
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 430
    .local v2, "subId":I
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVowifiEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVideoSettingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isEpdgConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 432
    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", VoiceNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 433
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DataNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 434
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", SMSIP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v5, "smsip"

    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", VOICE="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v6, "mmtel"

    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", VIDEO="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v7, "mmtel-video"

    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 440
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 441
    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 442
    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 443
    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    :cond_1
    nop

    .line 444
    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 446
    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 439
    :goto_0
    return v0
.end method

.method public checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .param p1, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 876
    return-void
.end method

.method protected clearDialogList(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "regId"    # I

    .line 1129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1130
    .local v3, "de":Lcom/sec/ims/DialogEvent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1131
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 1132
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Match RegId clear Dialog List"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 1135
    .local v4, "msisdn":Ljava/lang/String;
    new-instance v5, Lcom/sec/ims/DialogEvent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1136
    .local v5, "emptyList":Lcom/sec/ims/DialogEvent;
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 1137
    invoke-virtual {v5, p1}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1139
    const/16 v6, 0xf

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->removeMessages(I)V

    .line 1140
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 1129
    .end local v3    # "de":Lcom/sec/ims/DialogEvent;
    .end local v4    # "msisdn":Ljava/lang/String;
    .end local v5    # "emptyList":Lcom/sec/ims/DialogEvent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    :cond_1
    return-void
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "regId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 3

    .line 399
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 402
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public getCallCount()[I
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getCallCount(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCallCount(I)[I
    .locals 1
    .param p1, "phoneId"    # I

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getCallCount(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 1

    .line 1051
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object v0
.end method

.method public getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object v0
.end method

.method public getDefaultPhoneId()I
    .locals 1

    .line 1249
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    return v0
.end method

.method public getEpdgManager()Lcom/sec/epdg/EpdgManager;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 1

    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastRegiErrorCode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLteEpsOnlyAttached(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    return-object v0
.end method

.method public getMergeCallType(IZ)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isConfCallType"    # Z

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getMergeCallType(IZ)I

    move-result v0

    return v0
.end method

.method public getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1

    .line 1036
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object v0
.end method

.method public getPSDataDetails(I)Landroid/content/ContentValues;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getPSDataDetails(ILcom/sec/internal/constants/ims/os/NetworkEvent;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getRttDbrTimer(I)J
    .locals 6
    .param p1, "phoneId"    # I

    .line 638
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 639
    .local v0, "regInfo":Lcom/sec/ims/ImsRegistration;
    const-wide/16 v1, 0x4e20

    .line 640
    .local v1, "rttDbrTimerValue":J
    const/4 v3, 0x0

    .line 641
    .local v3, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    goto :goto_0

    .line 643
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v4, :cond_1

    .line 644
    sget-object v5, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v4, p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 646
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 647
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result v4

    int-to-long v1, v4

    .line 657
    :cond_2
    return-wide v1
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 323
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p1, "sessionId"    # I

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p1, "callId"    # I

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .param p1, "calltype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1017
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallType(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "calltype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p1, "sipCallId"    # Ljava/lang/String;

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 971
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v0

    return v0
.end method

.method public getSessionCount(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount(I)I

    move-result v0

    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSrvccVersion(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1236
    nop

    .line 1237
    const-string/jumbo v0, "srvcc_version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 1236
    return v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1066
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 980
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasActiveCall(I)Z

    move-result v0

    return v0
.end method

.method public hasCsCall(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v0

    return v0
.end method

.method public hasCsCall(IZ)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "exceptIncomingCall"    # Z

    .line 1074
    const/4 v0, 0x0

    .line 1076
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v1

    .line 1078
    .local v1, "numPsCall":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 1079
    .local v2, "incomingCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1081
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "only one PS incoming call exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v1, 0x0

    .line 1085
    :cond_0
    const/4 v3, 0x0

    .line 1087
    .local v3, "callState":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v4

    .line 1088
    .local v4, "tm":Lcom/sec/internal/helper/os/ITelephonyManager;
    if-eqz v4, :cond_3

    .line 1089
    invoke-interface {v4, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v3

    .line 1091
    if-nez v1, :cond_3

    .line 1092
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1093
    if-eqz v3, :cond_3

    .line 1094
    const/4 v0, 0x1

    goto :goto_1

    .line 1097
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1098
    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v6

    if-eqz v6, :cond_2

    .line 1099
    const/4 v0, 0x1

    .line 1100
    goto :goto_1

    .line 1097
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1107
    .end local v5    # "i":I
    :cond_3
    :goto_1
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasCsCall: numPsCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", callState["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return v0
.end method

.method public hasDialingOrIncomingCall()Z
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v1, "csdialing"

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1314
    const-string v2, "csalerting"

    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1315
    const-string v2, "csincoming"

    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasDialingOrIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SD has already PS dialing or incoming call on SIM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return v1

    .line 1322
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1316
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SD has already CS dialing or incoming call on SIM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v1
.end method

.method public hasEmergencyCall(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 956
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEmergencyCall(I)Z

    move-result v0

    return v0
.end method

.method public hasRingingCall()Z
    .locals 1

    .line 1026
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasRingingCall(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1031
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .line 316
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->init()V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->init()V

    .line 319
    return-void
.end method

.method public isCallBarringByNetwork(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1243
    nop

    .line 1244
    const-string/jumbo v0, "ss_callbarring_by_network"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1243
    return v0
.end method

.method public isCallServiceAvailable(ILjava/lang/String;)Z
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 546
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 547
    .local v0, "regiInfo":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 548
    .local v1, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRunning()Z

    move-result v2

    .line 549
    .local v2, "isRunning":Z
    if-eqz v2, :cond_f

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRegistering(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 558
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v6

    .line 557
    invoke-interface {v3, v5, v6, v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v3

    .line 559
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 560
    return v4

    .line 564
    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-boolean v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v3, :cond_2

    .line 565
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not available due to outOfService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v4

    .line 569
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 571
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v6, " is not available due to unsupported N/W"

    const/16 v7, 0x12

    const/16 v8, 0xd

    if-ne v3, v5, :cond_7

    .line 572
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 575
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 578
    :cond_3
    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v5, v7, :cond_4

    .line 579
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 580
    :cond_4
    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v5, v8, :cond_6

    iget-object v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v7, :cond_5

    .line 581
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 585
    :cond_5
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 587
    :cond_6
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v4

    .line 590
    :cond_7
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_9

    .line 593
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isInvite403DisabledService(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 594
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not available due to isInvite403DisabledService"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v4

    .line 598
    :cond_8
    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v8, :cond_c

    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_c

    .line 600
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v4

    .line 603
    :cond_9
    const/16 v5, 0x9

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    aput-object v9, v5, v4

    const/4 v9, 0x1

    sget-object v10, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    const/16 v9, 0x8

    sget-object v10, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    aput-object v10, v5, v9

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 604
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_0

    .line 611
    :cond_a
    sget-object v5, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_c

    .line 613
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 614
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not available due to N/W suspend"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v4

    .line 606
    :cond_b
    :goto_0
    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v8, :cond_c

    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_c

    .line 608
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v4

    .line 619
    :cond_c
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_d

    .line 620
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Call Service is not available for delayedDeregiTimer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v4

    .line 624
    :cond_d
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 626
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "mmtel"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v8, :cond_e

    iget v5, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v6, 0x14

    if-eq v5, v6, :cond_e

    .line 628
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call Service is not available for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v4

    .line 633
    :cond_e
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 550
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_f
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v3, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public isCmcPrimaryType(I)Z
    .locals 2
    .param p1, "cmcType"    # I

    .line 1726
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 1735
    const/4 v0, 0x0

    return v0

    .line 1731
    :cond_0
    return v0
.end method

.method public isCmcSecondaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1739
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1747
    const/4 v0, 0x0

    return v0

    .line 1743
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;

    .line 485
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;I)Z

    move-result v0

    return v0
.end method

.method public isCsfbErrorCode(IILcom/sec/ims/util/SipError;I)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # Lcom/sec/ims/util/SipError;
    .param p4, "retryAfter"    # I

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;I)Z

    move-result v0

    return v0
.end method

.method public isEcbmMode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isEmergencyRegistered(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableCallWaitingRule()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    return v0
.end method

.method protected isLTEDataModeEnabled()Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 887
    .local v0, "isLTEDataMode":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTEDataMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMmtelAcquiredEver()Z
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    return v0
.end method

.method public isRegisteredOverLteOrNr(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 901
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 902
    .local v0, "regiInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 903
    return v1

    .line 905
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 906
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 905
    :cond_2
    return v1
.end method

.method public isRegistering()Z
    .locals 1

    .line 769
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRegistering(I)Z

    move-result v0

    return v0
.end method

.method public isRegistering(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 773
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 774
    .local v0, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 776
    .local v1, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-eqz v1, :cond_0

    .line 777
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v2

    return v2

    .line 780
    .end local v1    # "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isRegistering: false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v1, 0x0

    return v1
.end method

.method public isRoaming(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 893
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 894
    return v1

    .line 896
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSilentRedialEnabled(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 926
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "silent_redial"

    invoke-static {p1, v1, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isVolteSettingEnabled()Z
    .locals 5

    .line 879
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 880
    .local v0, "voiceType":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voiceType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isVowifiEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 866
    .local v0, "isVowifiEnabled":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 867
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 870
    :cond_1
    return v0
.end method

.method public synthetic lambda$onImsIncomingCallEvent$0$VolteServiceModuleInternal(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 1
    .param p1, "incomingCallSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1623
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method public notifyProgressIncomingCall(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1119
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(ILjava/util/HashMap;)I

    .line 1120
    return-void
.end method

.method public onCallModifyRequested(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 1056
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallModifyRequested: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1059
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1062
    :cond_0
    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 720
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 725
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "item"    # Ljava/lang/String;

    .line 1216
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v0, "VOLTE_ENABLED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    const-string v0, "LVC_ENABLED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onServiceSwitched(ILandroid/content/ContentValues;)V

    .line 1222
    :cond_1
    return-void
.end method

.method protected onDefaultDataSubscriptionChanged()V
    .locals 4

    .line 376
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultDataSubscriptionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 378
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    .line 379
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 381
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 382
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    .line 384
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "phoneId":I
    :cond_0
    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method protected onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 7
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 1181
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1182
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    .line 1183
    .local v2, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1184
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    .line 1185
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1186
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1187
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onImsCallEvent: session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " releaseAllVideoCall due to the audio call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1187
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllVideoCall()V

    .line 1193
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1194
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getCallCount(I)[I

    move-result-object v4

    aget v4, v4, v0

    if-ne v4, v1, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1198
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1199
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 1203
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v4, v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    .line 1205
    .end local v2    # "phoneId":I
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    const-string v3, "99991111222"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1207
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1208
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1209
    .local v0, "sdRegi":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_5

    .line 1210
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    .line 1213
    .end local v0    # "sdRegi":Lcom/sec/ims/ImsRegistration;
    :cond_5
    :goto_0
    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "dmUri"    # Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: config changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz p2, :cond_0

    .line 417
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 419
    :cond_0
    return-void
.end method

.method protected onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V
    .locals 16
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p2, "isDelayedIncoming"    # Z

    .line 1560
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsIncomingCallEvent : sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " peerURI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "isDelayedIncoming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 1566
    .local v9, "reg":Lcom/sec/ims/ImsRegistration;
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1567
    .local v0, "error":Lcom/sec/ims/util/SipError;
    if-nez v9, :cond_0

    .line 1568
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1571
    return-void

    .line 1574
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1575
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    .line 1576
    .local v1, "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_1

    .line 1577
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "same session exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void

    .line 1579
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_3

    .line 1580
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "session is already Ending or Ended state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-void

    .line 1585
    .end local v1    # "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_3
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1586
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v10

    .line 1587
    .local v10, "isSamsungMdmnCall":Z
    if-eqz v10, :cond_4

    .line 1588
    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    move-object v11, v1

    goto :goto_0

    .line 1587
    :cond_4
    move-object v11, v1

    .line 1591
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v12, v0

    goto :goto_2

    .line 1592
    :cond_6
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onImsNewIncomingCallEvent: Unexpected incoming call while volte is off."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-direct {v6, v7, v11, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getErrorCodeIncomingCallWithVolteOff(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 1596
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-eq v0, v1, :cond_7

    .line 1597
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1598
    return-void

    .line 1596
    :cond_7
    move-object v12, v0

    .line 1602
    .end local v0    # "error":Lcom/sec/ims/util/SipError;
    .local v12, "error":Lcom/sec/ims/util/SipError;
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreAlerting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1605
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V

    goto/16 :goto_4

    .line 1607
    :cond_8
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v13

    .line 1608
    .local v13, "incomingCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v0, 0x0

    .line 1609
    .local v0, "ignoredError":I
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-ne v12, v1, :cond_9

    .line 1610
    invoke-direct {v6, v9, v13, v7, v11}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I

    move-result v0

    move v14, v0

    goto :goto_3

    .line 1609
    :cond_9
    move v14, v0

    .line 1612
    .end local v0    # "ignoredError":I
    .local v14, "ignoredError":I
    :goto_3
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v15

    .line 1613
    .local v15, "phoneId":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v11

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1616
    .local v0, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v14, :cond_c

    .line 1617
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsIncomingCallEvent getCmcType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCmcPrimaryType(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1619
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v15, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnIncomingCall(II)V

    .line 1623
    :cond_a
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;

    invoke-direct {v1, v6, v13}, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->post(Ljava/lang/Runnable;)Z

    .line 1625
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v15, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsIncomingCallEventWithSendPublish(II)V

    .line 1630
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v1

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-interface {v1, v15, v2}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onIncomingCall(II)V

    .line 1633
    .end local v0    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    .end local v13    # "incomingCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v14    # "ignoredError":I
    .end local v15    # "phoneId":I
    :goto_4
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_b

    .line 1634
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1636
    :cond_b
    return-void

    .line 1627
    .restart local v0    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v13    # "incomingCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .restart local v14    # "ignoredError":I
    .restart local v15    # "phoneId":I
    :cond_c
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    .line 496
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "mode"    # Z
    .param p3, "result"    # Z

    .line 508
    return-void
.end method

.method protected onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 1253
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimSubscribeIdChanged, SimSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1258
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 1259
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    .line 1260
    return-void
.end method

.method protected onSrvccStateChange(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "srvccState"    # I

    .line 1268
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handleReinvite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1271
    .local v0, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v0, :cond_0

    .line 1272
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_0

    .line 1274
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1277
    .restart local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleSrvccStateChange(IILcom/sec/internal/constants/Mno;)V

    .line 1280
    :cond_1
    return-void
.end method

.method public declared-synchronized onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2
    .param p1, "textInfo"    # Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    monitor-enter p0

    .line 476
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 480
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEventBySession(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 475
    .end local v0    # "phoneId":I
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .end local p1    # "textInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 477
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .restart local p1    # "textInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "regId"    # I
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "dispName"    # Ljava/lang/String;
    .param p4, "xmlBody"    # Ljava/lang/String;
    .param p5, "expires"    # I

    .line 1124
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "publishDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v8, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public pushCallInternal()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCallInternal()V

    .line 917
    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2
    .param p1, "phoneId"    # I

    .line 531
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 533
    .local v0, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    const-string v1, "mmtel"

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 537
    :cond_0
    const-string v1, "mmtel-video"

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 541
    :cond_1
    return-object v0
.end method

.method protected registerPhoneStateListener(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 355
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "do not register to non-DDS PhoneStateListener"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 364
    .local v0, "subId":I
    if-gez v0, :cond_1

    .line 365
    return-void

    .line 368
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 369
    .local v1, "psli":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object v2

    if-nez v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v2, v1, v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 373
    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V

    .line 715
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 409
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v6

    .line 408
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendMobileCareEvent(IIILjava/lang/String;Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public sendQualityStatisticsEvent()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mQualityStatistics:Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->sendQualityStatisticsEvent()V

    .line 503
    :cond_0
    return-void
.end method

.method public sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "noti"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 731
    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "deregiTimerRunning"    # Z

    .line 1640
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1641
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCapabilities(I)V

    .line 1642
    return-void
.end method

.method public setRttMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 451
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    .line 452
    return-void
.end method

.method public setRttMode(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v1, v0, p1

    .line 457
    .local v1, "prevMode":I
    aput p2, v0, p1

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRttMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_1

    .line 462
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v2, v2, p1

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setRttMode(IZ)V

    goto :goto_1

    .line 464
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setRttMode: RTT registration is skiped because the call session exist."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v0, v0, p1

    if-ne v1, v0, :cond_2

    .line 467
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setRttMode: not updating sessions"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 470
    :cond_2
    const v0, 0x30000016

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v2, v2, p1

    invoke-interface {v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setRttMode(II)V

    .line 472
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 662
    const/4 v0, -0x1

    .line 664
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 665
    .local v1, "outgoingCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v2

    .line 667
    .local v2, "alertingCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 668
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "has Outgoing call"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_0

    .line 670
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 671
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 672
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "has Alerting call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v3

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 676
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Use IMS RBT when WiFi Calling"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v3, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startLocalRingBackTone(III)I

    move-result v3

    return v3

    .line 680
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Do Not Use IMS RBT when non WiFi Calling"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v3, -0x1

    return v3
.end method

.method public stopLocalRingBackTone()I
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopLocalRingBackTone()I

    move-result v0

    return v0
.end method

.method protected terminateMoWfcWhenWfcSettingOff(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1172
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1173
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1174
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1175
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->terminateMoWfcWhenWfcSettingOff(I)V

    .line 1178
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1146
    const-string v0, "["

    .line 1147
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const-string v2, "]"

    const-string v3, " Feature: "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 1148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v7, ", ["

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Emergency Registered - PhoneId <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1153
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "phoneId <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "> - Registered : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnabledFeatures:[J

    aget-wide v7, v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_5

    .line 1159
    :cond_4
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Emergency Registered"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1162
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Registered: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v6

    if-eqz v6, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnabledFeatures:[J

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDefaultPhoneId:I

    aget-wide v3, v3, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    :goto_5
    return-object v0
.end method

.method public transfer(ILjava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    .line 700
    return-void
.end method

.method public triggerPsRedial(III)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callId"    # I
    .param p3, "targetPdn"    # I

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z

    move-result v0

    return v0
.end method

.method protected unRegisterPhoneStateListener(I)V
    .locals 2
    .param p1, "simSlot"    # I

    .line 388
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 391
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object v0

    .line 392
    .local v0, "removeObj":Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    return-void
.end method

.method public updateCapabilities(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 515
    .local v0, "capabilities":[I
    array-length v1, v0

    new-array v1, v1, [Z

    .line 516
    .local v1, "capables":[Z
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 518
    const-string v3, "mmtel"

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 519
    aput-boolean v4, v1, v2

    .line 522
    :cond_0
    const-string v2, "mmtel-video"

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    aput-boolean v4, v1, v4

    .line 526
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->updateCapabilities(I[I[Z)V

    .line 527
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "phoneId"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;

    .line 735
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 736
    .local v0, "regInfo":Lcom/sec/ims/ImsRegistration;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 737
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 741
    :cond_0
    const-string/jumbo v2, "urn:service:sos"

    .line 742
    .local v2, "eccUrn":Ljava/lang/String;
    const-string v3, ""

    .local v3, "eccNum":Ljava/lang/String;
    const-string v4, ""

    .local v4, "eccCat":Ljava/lang/String;
    const-string v5, ""

    .line 744
    .local v5, "eccCategoryList":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCategoryList(I)Ljava/lang/String;

    move-result-object v5

    .line 746
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eccCategoryList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 748
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_3

    aget-object v11, v6, v10

    .line 749
    .local v11, "emergencyNum":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 750
    .local v12, "splitStr":[Ljava/lang/String;
    aget-object v3, v12, v9

    .line 751
    move-object/from16 v13, p2

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 752
    array-length v6, v12

    const/4 v8, 0x1

    if-le v6, v8, :cond_1

    aget-object v6, v12, v8

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    move-object v4, v6

    .line 753
    goto :goto_2

    .line 748
    .end local v11    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "splitStr":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v13, p2

    goto :goto_2

    .line 747
    :cond_4
    move-object/from16 v13, p2

    .line 758
    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 759
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 760
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrnSpecificKor(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 762
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrn(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    :cond_6
    :goto_3
    return-object v2
.end method
