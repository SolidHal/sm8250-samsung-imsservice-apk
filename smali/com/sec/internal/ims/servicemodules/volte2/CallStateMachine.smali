.class public Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "CallStateMachine.java"


# static fields
.field public static final ACCEPT:I = 0x16

.field public static final ADD_PARTICIPANT:I = 0x35

.field public static final CANCEL_TRANSFER:I = 0x3c

.field public static final CHECK_VIDEO_DBR:I = 0x19

.field public static final DELAYED_CAMSTART:I = 0x18

.field public static final EMERGENCY_INVITE:I = 0xe

.field public static final EXTENDS_CONFERENCE:I = 0x49

.field protected static final FEATURE_FAST_ACCEPT:Z = false

.field public static final FORCE_NOTIFY_CURRENT_CODEC:I = 0x64

.field public static final HANDLE_DTMF:I = 0x38

.field public static final HOLD:I = 0x33

.field public static final HOLD_VIDEO:I = 0x50

.field public static final INCOMING:I = 0x15

.field public static final INFO:I = 0x65

.field public static final LOCATION_ACQUIRING:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "CallStateMachine"

.field public static final MERGE:I = 0x48

.field public static final NOTIFY_ERROR:I = 0x1a

.field public static final ON_100_TRYING_TIMEOUT:I = 0xd0

.field public static final ON_BUSY:I = 0x2a

.field public static final ON_CALLING:I = 0x21

.field public static final ON_CAMERA_START_FAILED:I = 0xcf

.field public static final ON_CMC_DTMF_EVENT:I = 0x56

.field public static final ON_CMC_INFO_EVENT:I = 0x57

.field public static final ON_DEDICATED_BEARER_LOST:I = 0x1388

.field public static final ON_DUMMY_DNS_TIMER_EXPIRED:I = 0x131

.field public static final ON_E911_INVITE_TILL_180_TIMER_FAIL:I = 0x133

.field public static final ON_EARLYMEDIA:I = 0x20

.field public static final ON_ENDED:I = 0x3

.field public static final ON_EPDG_CONNECTION_CHANGED:I = 0x190

.field public static final ON_EPDN_SETUP_FAIL:I = 0x132

.field public static final ON_ERROR:I = 0x4

.field public static final ON_ESTABLISHED:I = 0x29

.field public static final ON_EXTEND_TO_CONFERENCE:I = 0x4a

.field public static final ON_FORCE_ESTABLISHED:I = 0x258

.field public static final ON_FORWARDED:I = 0x24

.field public static final ON_HELD_BOTH:I = 0x3f

.field public static final ON_HELD_LOCAL:I = 0x3d

.field public static final ON_HELD_REMOTE:I = 0x3e

.field public static final ON_LOCATION_ACQUIRING_SUCCESS:I = 0x1f5

.field public static final ON_LOCATION_ACQUIRING_TIMEOUT:I = 0x1f4

.field public static final ON_LTE_911_FAIL:I = 0x12f

.field public static final ON_LTE_911_FAIL_AFTER_DELAY:I = 0x130

.field public static final ON_MODIFIED:I = 0x5b

.field public static final ON_NEXT_PCSCF_CHANGED:I = 0x192

.field public static final ON_OUTGOING_CALL_REG_TIMEOUT:I = 0xd3

.field public static final ON_POOR_VIDEO_TIMER_EXPIRED:I = 0xcd

.field public static final ON_RECORD_EVENT:I = 0x2bc

.field public static final ON_REFER_STATUS:I = 0x4b

.field public static final ON_REINVITE_TIMER_EXPIRED:I = 0x12e

.field public static final ON_RESUME_CALL_RETRY_TIMEOUT:I = 0xca

.field public static final ON_RINGINGBACK:I = 0x22

.field public static final ON_RING_TIMEOUT:I = 0xcc

.field public static final ON_RRC_RELEASED:I = 0x191

.field public static final ON_RTT_DEDICATED_BEARER_LOST:I = 0xd2

.field public static final ON_RTT_DEDICATED_BEARER_TIMER_EXPIRED:I = 0xd1

.field public static final ON_SESSIONPROGRESS:I = 0x23

.field public static final ON_SESSIONPROGRESS_TIMEOUT:I = 0xcb

.field public static final ON_SWITCH_REQUEST:I = 0x37

.field public static final ON_TIMER_VZW_EXPIRED:I = 0x12d

.field public static final ON_TRYING:I = 0x1f

.field public static final ON_USSD_INDICATION:I = 0x5e

.field public static final ON_USSD_RESPONSE:I = 0x5d

.field public static final ON_VIDEO_HELD:I = 0x52

.field public static final ON_VIDEO_HOLD_FAILED:I = 0x54

.field public static final ON_VIDEO_RESUMED:I = 0x53

.field public static final ON_VIDEO_RESUME_FAILED:I = 0x55

.field public static final ON_VIDEO_RTP_RTCP_TIMEOUT:I = 0xce

.field public static final PULLING:I = 0xc

.field public static final REJECT:I = 0x17

.field public static final REMOVE_PARTICIPANT:I = 0x36

.field public static final RESUME:I = 0x47

.field public static final RESUME_VIDEO:I = 0x51

.field public static final RE_INVITE:I = 0x1f6

.field public static final SEND_TEXT:I = 0x40

.field public static final START:I = 0xb

.field public static final TERMINATE:I = 0x1

.field public static final TERMINATED:I = 0x2

.field public static final TRANSFER_REQUEST:I = 0x3b

.field public static final UPDATE:I = 0x34

.field protected static final VZW_TTY_REINVITE_TIMEOUT:I = 0x7d0


# instance fields
.field callType:I

.field errorCode:I

.field errorMessage:Ljava/lang/String;

.field isDeferedVideoResume:Z

.field isLocationAcquiringTriggered:Z

.field isRequestTtyFull:Z

.field lazerErrorCode:I

.field lazerErrorMessage:Ljava/lang/String;

.field protected mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

.field protected mCallInitEPDG:Z

.field protected mCallInitTime:J

.field protected mCallTypeHistory:Ljava/lang/String;

.field protected mCameraUsedAtOtherApp:Z

.field protected mCmcCallEstablishTime:J

.field protected mConfCallAdded:Z

.field protected mContext:Landroid/content/Context;

.field protected mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

.field protected mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

.field protected mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

.field protected mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldBeforeTransfer:Z

.field protected mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

.field protected mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

.field protected mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

.field protected mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

.field protected mIsBigDataEndReason:Z

.field protected mIsCheckVideoDBR:Z

.field protected mIsCmcHandover:Z

.field protected mIsEstablished:Z

.field protected mIsPendingCall:Z

.field protected mIsSentMobileCareEvt:Z

.field protected mIsStartCameraSuccess:Z

.field protected mIsWPSCall:Z

.field protected mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoRtcpPort:I

.field private mLocalVideoRtpPort:I

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

.field protected mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

.field protected mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field protected mNeedToLateEndedNotify:Z

.field protected mNeedToWaitEndcall:Z

.field protected mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

.field protected mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

.field protected mOnErrorDelayed:Z

.field protected mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

.field protected mPreAlerting:Z

.field protected mPrevState:Lcom/sec/internal/helper/State;

.field protected mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

.field protected mRegistration:Lcom/sec/ims/ImsRegistration;

.field protected mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReinvite:Z

.field protected mRemoteHeld:Z

.field private mRemoteVideoRtcpPort:I

.field private mRemoteVideoRtpPort:I

.field mRequestLocation:Z

.field protected mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

.field protected mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

.field protected mRetriggerTimeoutMessage:Landroid/os/Message;

.field protected mRetryInprogress:Z

.field protected mRingTimeoutMessage:Landroid/os/Message;

.field protected mSIPFlowInfo:Ljava/lang/String;

.field protected mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

.field protected mTransferRequested:Z

.field mTryingReceived:Z

.field protected mUserAnswered:Z

.field protected mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

.field protected mVideoRTPtimeout:Z

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field quit:Z

.field sipError:Lcom/sec/ims/util/SipError;

.field sipReason:Lcom/sec/internal/constants/ims/SipReason;

.field srvccStarted:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "volteModule"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p5, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p6, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p8, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p9, "mediactnr"    # Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            "Lcom/sec/ims/ImsRegistration;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;",
            "Lcom/sec/internal/constants/Mno;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Ljava/lang/String;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 254
    .local p7, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct {v12, v13, v14}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 61
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 62
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 63
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 64
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 65
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 66
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 67
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 68
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 69
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 70
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 71
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 72
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 73
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 74
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    .line 176
    const/4 v1, 0x0

    iput v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 177
    const/4 v2, -0x1

    iput v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 178
    iput v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    .line 179
    const-string v2, ""

    iput-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 180
    iput-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    .line 181
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 182
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 183
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 185
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 186
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 187
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 189
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    .line 190
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 191
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 192
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 193
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 194
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    .line 197
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 198
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 199
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    .line 200
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    .line 201
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCameraUsedAtOtherApp:Z

    .line 202
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    .line 203
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    .line 204
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 205
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCheckVideoDBR:Z

    .line 206
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 207
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    .line 208
    iput-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 210
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    .line 211
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    .line 212
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 213
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    .line 214
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    .line 217
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    .line 218
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsEstablished:Z

    .line 219
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 221
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 222
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 224
    iput-object v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    .line 225
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoRTPtimeout:Z

    .line 226
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    .line 227
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    .line 228
    iput-wide v2, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCmcCallEstablishTime:J

    .line 229
    iput-boolean v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCmcHandover:Z

    .line 231
    iput v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 232
    iput v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 233
    iput v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 234
    iput v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    .line 236
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 237
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 238
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 239
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    .line 240
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    .line 241
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 242
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 243
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 244
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    .line 247
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 248
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 256
    iput-object v12, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 258
    move-object/from16 v15, p2

    iput-object v15, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 259
    move-object/from16 v11, p3

    iput-object v11, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 260
    move-object/from16 v10, p4

    iput-object v10, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 261
    move-object/from16 v9, p1

    iput-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    .line 262
    move-object/from16 v8, p6

    iput-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 263
    move-object/from16 v7, p8

    iput-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 264
    move-object/from16 v6, p9

    iput-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 265
    move-object/from16 v5, p7

    iput-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    .line 266
    move-object/from16 v4, p5

    iput-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    .line 268
    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 270
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 272
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 274
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 276
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 278
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 280
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 282
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 284
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 286
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 288
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 290
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 292
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 294
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 296
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-object v4, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    move-object v0, v13

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    .line 298
    return-void
.end method

.method private handleSetCSFBError(IILjava/lang/String;I)V
    .locals 4
    .param p1, "mPhoneId"    # I
    .param p2, "error"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "retryAfter"    # I

    .line 853
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x193

    if-eq p2, v0, :cond_1

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v2, v3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x198

    if-ne p2, v0, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_3

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 863
    const-string v0, "CallStateMachine"

    const-string v1, "USCC - Do not perform CSFB when 408 is received after User is alerted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_3
    return-void
.end method

.method private handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V
    .locals 4
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "error"    # I

    .line 868
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 869
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 872
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 873
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto/16 :goto_2

    .line 875
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 876
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-interface {v0, v2, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto :goto_2

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    const-string v1, "CallStateMachine"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 882
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 883
    const-string v0, "Race condition - Call type is same as Requested call type"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_2

    .line 880
    :cond_5
    :goto_0
    const-string v0, "Notify switch call fail during Holding call"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_2

    .line 871
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 886
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method protected calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "boundedSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "CallId"    # Ljava/lang/String;

    .line 1056
    const-wide/16 v0, 0x0

    .line 1057
    .local v0, "callEstablishTime":J
    const-wide/16 v2, 0x0

    .line 1062
    .local v2, "cmcCallTime":J
    const-string v4, "CallStateMachine"

    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcCallEstablishTime()J

    move-result-wide v0

    .line 1064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PS callEstablishTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCmcCallEstablishTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 1067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CS callEstablishTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1072
    .local v5, "currentTime":J
    sub-long v2, v5, v0

    .line 1073
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callEstablishTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", currentTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", cmcCallTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v5    # "currentTime":J
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected determineCamera(IZ)I
    .locals 4
    .param p1, "calltype"    # I
    .param p2, "isForSwitchRcved"    # Z

    .line 330
    const/4 v0, -0x1

    .line 331
    .local v0, "camera":I
    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/16 v2, 0x8

    if-eq p1, v2, :cond_5

    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 338
    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallType(I)Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    const/4 v0, 0x2

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x1

    .line 345
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    :goto_0
    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 347
    const/4 v0, 0x0

    goto :goto_2

    .line 349
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 351
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_6

    if-eqz p2, :cond_6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 355
    const/4 v0, 0x1

    goto :goto_2

    .line 334
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 358
    :cond_6
    :goto_2
    const-string v1, "CallStateMachine"

    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-ltz v2, :cond_7

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using mSession.mLastUsedCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 362
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "determineCamera calltype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isForSwitchRcved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v0
.end method

.method protected forceNotifyCurrentCodec()V
    .locals 6

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 988
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 989
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 990
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    .line 992
    .local v3, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    .line 994
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 998
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 999
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v5

    .line 998
    invoke-interface {v2, v4, v5}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    goto :goto_1

    .line 1000
    :catch_0
    move-exception v4

    .line 1001
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 988
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1006
    return-void
.end method

.method protected getNetworkStatsVideoCall()J
    .locals 3

    .line 1176
    const-string v0, "CallStateMachine"

    const-string v1, "getNetworkStatsVideoCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-wide/16 v0, 0x0

    .line 1178
    .local v0, "dataUsage":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v2, :cond_0

    .line 1179
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->getNetworkStatsVideoCall()J

    move-result-wide v0

    .line 1181
    :cond_0
    return-wide v0
.end method

.method public getPreAlerting()Z
    .locals 1

    .line 1318
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return v0
.end method

.method protected getPreviousState()Lcom/sec/internal/helper/State;
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method public getPreviousStateByName(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 522
    :cond_0
    const-string v0, "ReadyToCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 524
    :cond_1
    const-string v0, "IncomingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 526
    :cond_2
    const-string v0, "OutGoingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 528
    :cond_3
    const-string v0, "AlertingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 530
    :cond_4
    const-string v0, "InCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 532
    :cond_5
    const-string v0, "HoldingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 534
    :cond_6
    const-string v0, "HeldCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 535
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 536
    :cond_7
    const-string v0, "ResumingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 537
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 538
    :cond_8
    const-string v0, "ModifyingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 539
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 540
    :cond_9
    const-string v0, "HoldingVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 541
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 542
    :cond_a
    const-string v0, "VideoHeld"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 543
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 544
    :cond_b
    const-string v0, "ResumingVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 545
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 546
    :cond_c
    const-string v0, "EndingCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 547
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 548
    :cond_d
    const-string v0, "ModifyRequested"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 549
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 552
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0
.end method

.method protected getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 17
    .param p1, "reason"    # I

    .line 1080
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSipReasonFromUserReason: reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CallStateMachine"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string v2, "SIP"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    .line 1084
    new-instance v4, Lcom/sec/internal/constants/ims/SipReason;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "SRVCC"

    invoke-direct {v4, v2, v3, v6, v5}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 1085
    :cond_0
    const/16 v4, 0x19

    if-ne v1, v4, :cond_1

    .line 1086
    new-instance v4, Lcom/sec/internal/constants/ims/SipReason;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "INVITE FLUSH"

    invoke-direct {v4, v2, v3, v6, v5}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 1087
    :cond_1
    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 1088
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const-string v6, ""

    const-string v8, "PS BARRING"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1089
    :cond_2
    const/16 v4, 0x14

    if-ne v1, v4, :cond_3

    .line 1090
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v4, 0x1777

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, ""

    const-string v6, "MDMN_PULL_BY_PRIMARY"

    invoke-direct {v2, v5, v4, v6, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v2

    .line 1091
    :cond_3
    const/16 v4, 0xb

    if-ne v1, v4, :cond_7

    .line 1092
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    .line 1093
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string v7, "SIP"

    const-string v9, "DEDICATED BEARER LOST"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1094
    :cond_4
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_5

    goto/16 :goto_0

    .line 1096
    :cond_5
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v6, "DEDICATED BEARER LOST"

    if-ne v4, v5, :cond_6

    .line 1097
    new-instance v4, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v5, 0xc8

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 1099
    :cond_6
    new-instance v4, Lcom/sec/internal/constants/ims/SipReason;

    new-array v5, v3, [Ljava/lang/String;

    invoke-direct {v4, v2, v3, v6, v5}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 1101
    :cond_7
    const/16 v2, 0xe

    if-ne v1, v2, :cond_9

    .line 1102
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_8

    .line 1103
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const-string v6, "SIP"

    const-string v8, "DEREGISTERED"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1105
    :cond_8
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v13, 0x0

    const/4 v15, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v12, ""

    const-string v14, ""

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1107
    :cond_9
    const/16 v2, 0x17

    if-ne v1, v2, :cond_b

    .line 1108
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v4, :cond_a

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_e

    .line 1109
    :cond_a
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const-string v6, ""

    const-string v8, "RRC CONNECTION REJECT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1111
    :cond_b
    const/16 v2, 0x11

    if-ne v1, v2, :cond_d

    .line 1112
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v4, :cond_c

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_e

    .line 1113
    :cond_c
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const-string v6, ""

    const-string v8, "SESSIONPROGRESS TIMEOUT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1115
    :cond_d
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_e

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 1116
    new-instance v2, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v6, 0xc8

    const/4 v8, 0x0

    new-array v9, v3, [Ljava/lang/String;

    const-string v5, "SIP"

    const-string v7, "User Triggered"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v2

    .line 1119
    :cond_e
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v2

    .line 1120
    .local v2, "sr":Lcom/sec/internal/constants/ims/SipReason;
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v3

    return-object v3
.end method

.method protected getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonKor;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonKor;-><init>()V

    return-object v0

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1127
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonVzw;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonVzw;-><init>()V

    return-object v0

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1129
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonBmc;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonBmc;-><init>()V

    return-object v0

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1131
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonUscc;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonUscc;-><init>()V

    return-object v0

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1134
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 1135
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonOptus;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonOptus;-><init>()V

    return-object v0

    .line 1136
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1137
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonTmoUs;-><init>()V

    return-object v0

    .line 1139
    :cond_6
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-object v0

    .line 1133
    :cond_7
    :goto_0
    new-instance v0, Lcom/sec/internal/constants/ims/SipReasonRjil;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipReasonRjil;-><init>()V

    return-object v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 2

    .line 481
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    .line 486
    .local v0, "state":Lcom/sec/internal/helper/IState;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    if-ne v0, v1, :cond_1

    .line 487
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    if-ne v0, v1, :cond_2

    .line 489
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    if-ne v0, v1, :cond_3

    .line 491
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    if-ne v0, v1, :cond_4

    .line 493
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 494
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne v0, v1, :cond_5

    .line 495
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 496
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    if-ne v0, v1, :cond_6

    .line 497
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 498
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    if-ne v0, v1, :cond_7

    .line 499
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 500
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    if-ne v0, v1, :cond_8

    .line 501
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 502
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    if-ne v0, v1, :cond_9

    .line 503
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 504
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    if-ne v0, v1, :cond_a

    .line 505
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 506
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    if-ne v0, v1, :cond_b

    .line 507
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 508
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    if-ne v0, v1, :cond_c

    .line 509
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 510
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    if-ne v0, v1, :cond_d

    .line 511
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 512
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    if-ne v0, v1, :cond_e

    .line 513
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1

    .line 516
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v1
.end method

.method protected handleRemoteHeld(Z)V
    .locals 3
    .param p1, "isRemoteHeld"    # Z

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1010
    .local v0, "isLocalHoldToneChanged":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_1

    if-nez v0, :cond_3

    .line 1012
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoteHeld: remote already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    if-eqz p1, :cond_2

    const-string v2, "held"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "resumed"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 1017
    :cond_3
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    .line 1018
    if-eqz p1, :cond_4

    .line 1019
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    goto :goto_2

    .line 1021
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnResumed(Z)V

    .line 1023
    :goto_2
    return-void
.end method

.method public handleSPRoutgoingError(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 1253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 1254
    .local v0, "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    .line 1257
    .local v1, "code":I
    const/16 v2, 0x1e6

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1e7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x198

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1262
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    .line 1263
    .local v2, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v2, :cond_4

    .line 1264
    const-string v3, "mmtel"

    .line 1265
    .local v3, "service":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    const-string v3, "mmtel-video"

    .line 1269
    :cond_1
    const/16 v4, 0x190

    const/16 v5, 0x6a5

    const-string v6, "CallStateMachine"

    if-lt v1, v4, :cond_2

    const/16 v4, 0x2bb

    if-gt v1, v4, :cond_2

    .line 1270
    const-string v4, "4xx,5xx,6xx error. trigger cs fallback"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-direct {v4, v1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1273
    invoke-virtual {v0, v5}, Lcom/sec/ims/util/SipError;->setCode(I)V

    .line 1276
    :cond_2
    const/16 v4, 0x2c5

    if-ne v1, v4, :cond_4

    .line 1277
    const-string v4, "709 error. trigger cs fallback"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-direct {v4, v1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1280
    invoke-virtual {v0, v5}, Lcom/sec/ims/util/SipError;->setCode(I)V

    goto :goto_1

    .line 1258
    .end local v2    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v3    # "service":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 1284
    .end local v0    # "err":Lcom/sec/ims/util/SipError;
    .end local v1    # "code":I
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 320
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 321
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 322
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;-><init>(ILcom/sec/internal/constants/Mno;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    .line 327
    return-void
.end method

.method protected isChangedCallType(Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 658
    .local v0, "currentCallType":I
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 660
    .local v1, "updateCallType":I
    if-ne v0, v1, :cond_0

    .line 661
    const/4 v2, 0x0

    return v2

    .line 663
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z
    .locals 10
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "requested"    # Z

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 557
    .local v0, "currentCallType":I
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 558
    .local v1, "updateCallType":I
    const/4 v2, -0x1

    .line 560
    .local v2, "ret":I
    const/4 v3, 0x1

    const-string v4, ", updateCallType: "

    const-string v5, "modifyCallType("

    const-string v6, "CallStateMachine"

    const/4 v7, 0x0

    if-eqz p2, :cond_6

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") curCallType: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "Call switch failed"

    const/16 v6, 0x455

    if-nez v4, :cond_0

    .line 565
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 567
    return v7

    .line 570
    :cond_0
    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 571
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 572
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 573
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 572
    invoke-interface {v3, v4, v6, p1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 574
    return v7

    .line 577
    :cond_1
    const/4 v8, 0x3

    if-ne v0, v8, :cond_2

    const/4 v8, 0x4

    if-ne v1, v8, :cond_2

    .line 579
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 581
    return v7

    .line 584
    :cond_2
    if-eq v1, v4, :cond_3

    .line 585
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    :cond_3
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 589
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-interface {v4, v5, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->modifyCallType(III)I

    move-result v2

    .line 591
    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result v4

    .line 592
    .local v4, "cameraId":I
    if-ltz v4, :cond_5

    .line 593
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    .line 595
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    iput v6, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    .line 597
    .end local v4    # "cameraId":I
    :goto_0
    goto :goto_1

    .line 598
    :cond_6
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    .line 599
    .local v8, "requestCallType":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") reqCallType: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", curCallType: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-interface {v4, v5, v0, v1, v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result v2

    .line 605
    .end local v8    # "requestCallType":I
    :goto_1
    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v3, v7

    :goto_2
    return v3
.end method

.method public needToLogForATTGate(I)Z
    .locals 2
    .param p1, "callType"    # I

    .line 1228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x1

    return v0

    .line 1231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyConfParticipanOnResumed(IZ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "userAction"    # Z

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 939
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfParticipanOnResumed: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 941
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 944
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    goto :goto_1

    .line 945
    :catch_0
    move-exception v3

    .line 946
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 940
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 951
    return-void
.end method

.method protected notifyConfParticipantOnHeld(IZ)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "userAction"    # Z

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 923
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConfParticipantOnHeld: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 925
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 928
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_1

    .line 929
    :catch_0
    move-exception v3

    .line 930
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 924
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 935
    return-void
.end method

.method protected notifyOnCallForwarded()V
    .locals 4

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 716
    const-string v0, "CallStateMachine"

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    .line 722
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 723
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 724
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 727
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    goto :goto_2

    .line 728
    :catch_0
    move-exception v3

    .line 729
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 723
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 733
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 734
    return-void
.end method

.method protected notifyOnEarlyMediaStarted(I)V
    .locals 4
    .param p1, "event"    # I

    .line 683
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 685
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 686
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 689
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_1

    .line 690
    :catch_0
    move-exception v3

    .line 691
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 685
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 696
    return-void
.end method

.method protected notifyOnEnded(I)V
    .locals 7
    .param p1, "error"    # I

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 738
    .local v0, "mPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnEnded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 741
    .local v1, "mCallProfile":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    new-instance v5, Lcom/sec/ims/util/SipError;

    invoke-direct {v5, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v3, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 742
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 743
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 744
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 745
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    const/4 v5, 0x5

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 746
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 748
    .local v3, "boundSessionId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boundSessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    if-lez v3, :cond_1

    .line 750
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 754
    .end local v3    # "boundSessionId":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    .line 755
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 756
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    .line 757
    const/16 p1, 0x6a7

    .line 758
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    goto :goto_0

    .line 759
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 760
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v3, 0x96e

    if-ne v2, v3, :cond_4

    .line 761
    const/16 p1, 0x96e

    .line 765
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 767
    .local v2, "length":I
    if-nez v2, :cond_5

    .line 768
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    goto :goto_1

    .line 770
    :cond_5
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    .line 773
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 774
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 777
    .local v5, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v5, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_3

    .line 778
    :catch_0
    move-exception v6

    .line 779
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 773
    .end local v5    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 783
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 784
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez v3, :cond_7

    .line 785
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v6, 0x0

    invoke-interface {v3, v0, v5, p1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 786
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 789
    :cond_7
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    .line 790
    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 793
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 794
    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;I)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 798
    .local v0, "mPhoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSetCSFBError(IILjava/lang/String;I)V

    .line 801
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 802
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 803
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 804
    const/16 p1, 0x6a7

    .line 805
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 807
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_3

    .line 809
    :cond_2
    const/16 p1, 0x96e

    .line 810
    const-string p2, "RTT E911 Call Fail"

    .line 814
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 816
    .local v1, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    :goto_1
    move-object v1, v2

    .line 818
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v4, :cond_6

    .line 819
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    :cond_5
    move-object v1, v2

    .line 822
    :cond_6
    const/16 v2, 0x456

    const/4 v4, 0x1

    if-eq p1, v2, :cond_7

    const/16 v2, 0x455

    if-ne p1, v2, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    move v2, v3

    .line 826
    .local v2, "isSwitchFail":Z
    if-eqz v2, :cond_9

    .line 827
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V

    goto :goto_4

    .line 829
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 830
    .local v3, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_a

    .line 831
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 835
    .local v6, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v6, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    goto :goto_3

    .line 836
    :catch_0
    move-exception v7

    .line 837
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 830
    .end local v6    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 840
    .end local v5    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 843
    .end local v3    # "length":I
    :goto_4
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez v3, :cond_b

    .line 844
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v3, v5, v6, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 845
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 848
    :cond_b
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    .line 849
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    .line 850
    return-void
.end method

.method protected notifyOnEstablished()V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 669
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 670
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 673
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_1

    .line 674
    :catch_0
    move-exception v3

    .line 675
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 669
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 680
    return-void
.end method

.method protected notifyOnHeld(Z)V
    .locals 4
    .param p1, "userAction"    # Z

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 890
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnHeld local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; localholdtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 893
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 896
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-interface {v2, p1, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    goto :goto_1

    .line 897
    :catch_0
    move-exception v3

    .line 898
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 892
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 903
    return-void
.end method

.method protected notifyOnModified(I)V
    .locals 4
    .param p1, "type"    # I

    .line 954
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 955
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnModified callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 957
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 960
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    goto :goto_1

    .line 961
    :catch_0
    move-exception v3

    .line 962
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 956
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 966
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 967
    return-void
.end method

.method protected notifyOnResumed(Z)V
    .locals 4
    .param p1, "userAction"    # Z

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 907
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnResumed: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 909
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 912
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    goto :goto_1

    .line 913
    :catch_0
    move-exception v3

    .line 914
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 908
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 919
    return-void
.end method

.method protected notifyOnRingingBack()V
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 701
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 702
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 705
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    goto :goto_1

    .line 706
    :catch_0
    move-exception v3

    .line 707
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 701
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 712
    return-void
.end method

.method protected notifyOnUssdResponse(I)V
    .locals 4
    .param p1, "statusCode"    # I

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 972
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 973
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 976
    .local v2, "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    goto :goto_1

    .line 977
    :catch_0
    move-exception v3

    .line 978
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 972
    .end local v2    # "listener":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 983
    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 6
    .param p1, "modifiedProfile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 1289
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 1290
    .local v0, "modifiedCallType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .local v1, "videoQuality":I
    goto :goto_0

    .line 1293
    .end local v1    # "videoQuality":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 1294
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .line 1296
    .restart local v1    # "videoQuality":I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 1298
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 1299
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startNetworkStatsOnPorts()V

    goto :goto_1

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopNetworkStatsOnPorts()V

    .line 1305
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1306
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    const/16 v4, 0xc8

    .line 1308
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    goto :goto_2

    .line 1309
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1306
    :goto_2
    invoke-interface {v2, v3, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1311
    :cond_3
    return-void
.end method

.method protected onHalting()V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const-string v0, "CallStateMachine"

    const-string v1, "Unexpected ACTION on STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getLogRecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    .line 437
    .local v1, "lr":Lcom/sec/internal/helper/StateMachine$LogRec;
    if-nez v1, :cond_0

    .line 438
    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CallStateMachine"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "i":I
    .end local v1    # "lr":Lcom/sec/internal/helper/StateMachine$LogRec;
    :cond_1
    :goto_1
    return-void

    .line 431
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onQuitting()V
    .locals 4

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 450
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 451
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForUssdEvent(Landroid/os/Handler;)V

    .line 452
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForReferStatus(Landroid/os/Handler;)V

    .line 453
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRrcConnectionEvent(Landroid/os/Handler;)V

    .line 454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    const-string v0, "CallStateMachine"

    const-string v1, "CallState Terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getLogRecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v1

    .line 460
    .local v1, "lr":Lcom/sec/internal/helper/StateMachine$LogRec;
    if-nez v1, :cond_0

    .line 461
    goto :goto_1

    .line 463
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CallStateMachine"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    .end local v1    # "lr":Lcom/sec/internal/helper/StateMachine$LogRec;
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 469
    const-string/jumbo v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 473
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 474
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    :cond_3
    goto :goto_2

    .line 476
    :catch_0
    move-exception v0

    .line 478
    :goto_2
    return-void

    .line 454
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onReceiveSIPMSG(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "sipMessage"    # Ljava/lang/String;
    .param p2, "isRequest"    # Z

    .line 1204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1206
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_3

    .line 1208
    aget-object v2, v0, v1

    const-string v3, "SIP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v1, v0, v1

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "frontChar":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    goto :goto_1

    .line 1212
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    .line 1214
    .end local v1    # "frontChar":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1215
    :cond_3
    const-string v1, "CallStateMachine"

    const-string v2, "onReceiveSIPMSG : No front Char"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_2
    return-void
.end method

.method protected rejectModifyCallType(I)I
    .locals 5
    .param p1, "reason"    # I

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v2, "CallStateMachine"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CZ:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 614
    .local v0, "currentCallType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_1

    .line 615
    const-string v1, "ignoreModifyCallType(): mSession.mModifyRequestedProfile == null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result v1

    return v1

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 620
    .local v1, "requestCallType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreModifyCallType() reqCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v2, v3, v0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result v2

    return v2

    .line 629
    .end local v0    # "currentCallType":I
    .end local v1    # "requestCallType":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectModifyCallType() reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result v0

    return v0
.end method

.method protected requestCallDataUsage()V
    .locals 4

    .line 1170
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "requestCallDataUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getNetworkStatsVideoCall()J

    move-result-wide v0

    .line 1172
    .local v0, "dataUsage":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->onChangeCallDataUsage(IJ)V

    .line 1173
    return-void
.end method

.method public sendCmcPublishDialog()V
    .locals 5

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v1, 0x3

    .line 1239
    .local v1, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    const/4 v1, 0x5

    .line 1242
    :cond_0
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 1243
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1244
    if-nez v0, :cond_1

    .line 1245
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->sendPublishDialogInternal(II)V

    .line 1242
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1249
    .end local v0    # "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v1    # "cmcType":I
    .end local v2    # "type":I
    :cond_2
    return-void
.end method

.method public setPendingCall(Z)V
    .locals 0
    .param p1, "isPending"    # Z

    .line 1220
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    .line 1221
    return-void
.end method

.method public setPreAlerting()V
    .locals 1

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    .line 1315
    return-void
.end method

.method public setPreviousState(Lcom/sec/internal/helper/State;)V
    .locals 0
    .param p1, "state"    # Lcom/sec/internal/helper/State;

    .line 1026
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    .line 1027
    return-void
.end method

.method protected setRetryInprogress(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1033
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    return-void
.end method

.method public setStartCameraState(Z)V
    .locals 0
    .param p1, "isStartCameraSuccess"    # Z

    .line 1224
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 1225
    return-void
.end method

.method protected setVideoRtpPort(IIII)V
    .locals 0
    .param p1, "localRtp"    # I
    .param p2, "localRtcp"    # I
    .param p3, "remoteRtp"    # I
    .param p4, "remoteRtcp"    # I

    .line 1144
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 1145
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 1146
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 1147
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    .line 1148
    return-void
.end method

.method protected startNetworkStatsOnPorts()V
    .locals 5

    .line 1151
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "startNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_1

    .line 1153
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setVideoPort(IIII)V

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setInterface(Ljava/lang/String;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1159
    :cond_1
    return-void
.end method

.method protected startRetriggerTimer(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetriggerTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRetriggerTimer()V

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 1189
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 1190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1191
    return-void
.end method

.method protected startRingTimer(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRingTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRingTimer()V

    .line 1038
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcc

    .line 1040
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1043
    :cond_0
    return-void
.end method

.method protected stopNetworkStatsOnPorts()V
    .locals 2

    .line 1162
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "stopNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->requestCallDataUsage()V

    .line 1165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    :cond_0
    return-void
.end method

.method protected stopRetriggerTimer()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1195
    return-void

    .line 1197
    :cond_0
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "stopRetriggerTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 1201
    return-void
.end method

.method protected stopRingTimer()V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 1047
    return-void

    .line 1049
    :cond_0
    const-string v0, "CallStateMachine"

    const-string/jumbo v1, "stopRingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 1053
    return-void
.end method

.method protected transferCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 635
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    const-string v1, "CallStateMachine"

    if-nez v0, :cond_1

    .line 636
    const-string/jumbo v2, "uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v1, 0x45f

    const-string v2, "call transfer failed"

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 638
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    .line 641
    :cond_0
    return-void

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->transferCall(ILjava/lang/String;)I

    .line 644
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 646
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v3, "tfItem":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    const-string/jumbo v4, "transferCall for Softphone"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "MDTC"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "MDSF"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v4, "DRPT"

    invoke-static {v1, v2, v4, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 654
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ANY_STATE] unhandledMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/16 v2, 0x34

    if-eq v0, v2, :cond_a

    const/16 v2, 0x64

    if-eq v0, v2, :cond_9

    const/16 v2, 0x12f

    const/4 v3, 0x4

    if-eq v0, v2, :cond_8

    const/16 v2, 0x190

    if-eq v0, v2, :cond_7

    const/16 v2, 0x258

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1388

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x132

    if-eq v0, v2, :cond_8

    const/16 v2, 0x133

    if-eq v0, v2, :cond_8

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ignored !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ussdIndication_ANYSTATE(Landroid/os/Message;)V

    .line 394
    goto :goto_0

    .line 389
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnUssdResponse(I)V

    .line 390
    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->error_ANYSTATE(Landroid/os/Message;)V

    .line 386
    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ended_ANYSTATE(Landroid/os/Message;)V

    .line 382
    goto :goto_0

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->dbrLost_ANYSTATE(Landroid/os/Message;)V

    .line 372
    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne v0, v1, :cond_6

    .line 410
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;->enter()V

    goto :goto_0

    .line 412
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 414
    goto :goto_0

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->epdgConnChanged_ANYSTATE(Landroid/os/Message;)V

    .line 402
    goto :goto_0

    .line 418
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 v1, 0x0

    const/4 v2, -0x1

    new-instance v4, Lcom/sec/ims/util/SipError;

    const/16 v5, 0x44f

    const-string v6, "Tlte_911fail"

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 421
    goto :goto_0

    .line 405
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->forceNotifyCurrentCodec()V

    .line 406
    goto :goto_0

    .line 397
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->update_ANYSTATE(Landroid/os/Message;)V

    .line 398
    goto :goto_0

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->terminate_ANYSTATE(Landroid/os/Message;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleBigData_ANYSTATE(Landroid/os/Message;)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 378
    nop

    .line 425
    :goto_0
    return-void
.end method
