.class public interface abstract Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
.super Ljava/lang/Object;
.source "IVolteServiceModuleInternal.java"


# static fields
.field public static final ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

.field public static final CMC_PD_CHECK_TIMER_VALUE:I = 0x14

.field public static final EPDN_DISCONNECT_TIMER_VALUE_KDDI:I = 0x12c

.field public static final EVENT_DDS_CHANGED:I = 0x1a

.field public static final EVENT_OPTIONS_EVENT:I = 0x20

.field public static final EVENT_RELEASE_WFC_BEFORE_HO:I = 0x14

.field public static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x18

.field public static final EVT_CALL_ECBM_CHANGED:I = 0x6

.field public static final EVT_CALL_END_BY_CS_EVENT:I = 0xa

.field public static final EVT_CALL_PS_BARRED:I = 0xe

.field public static final EVT_CALL_STATUS_CHANGE_EVENT:I = 0x5

.field public static final EVT_CMC_PD_CHECK_TIMER:I = 0x21

.field public static final EVT_CMC_RECORDING_EVENT:I = 0x22

.field public static final EVT_CONFIG_UPDATED:I = 0x15

.field public static final EVT_DEDICATED_BEARER_EVENT:I = 0x8

.field public static final EVT_DELAYED_INCOMING_CALL:I = 0xb

.field public static final EVT_DEREGISTERED:I = 0xc

.field public static final EVT_DEREGISTERING:I = 0xd

.field public static final EVT_DTMF_EVENT:I = 0x11

.field public static final EVT_EPDN_DISCONNECT_TIMER:I = 0x10

.field public static final EVT_EPDN_SETUP_FAIL:I = 0x13

.field public static final EVT_IMS_CALL_EVENT:I = 0x2

.field public static final EVT_IMS_DIALOG_EVENT:I = 0x3

.field public static final EVT_IMS_INCOMINGCALL_EVENT:I = 0x1

.field public static final EVT_IQI_STATE_CHNAGED:I = 0x1c

.field public static final EVT_RESET_DIALOG_EVENT:I = 0xf

.field public static final EVT_RTP_LOSS_RATE_NOTI:I = 0x12

.field public static final EVT_SCREEN_ONOFF_CHANGED:I = 0x17

.field public static final EVT_SIM_READY:I = 0x1e

.field public static final EVT_SIM_REMOVED:I = 0x1f

.field public static final EVT_SIPMSG_EVENT:I = 0x19

.field public static final EVT_SRVCC_STATE_CHANGE_EVENT:I = 0x1b

.field public static final EVT_TEXT_EVENT:I = 0x16

.field public static final EVT_TRY_DISCONNECT:I = 0x9

.field public static final INTENT_ACTION_IQISERVICE_STATE_CHNAGED:Ljava/lang/String; = "com.att.iqi.action.SERVICE_STATE_CHANGED"

.field public static final INTENT_ACTION_LTE_BAND_CHANGED:Ljava/lang/String; = "android.intent.action.LTE_BAND"

.field public static final INTENT_ACTION_PS_BARRED:Ljava/lang/String; = "com.android.intent.action.PSBARRED_FOR_VOLTE"

.field public static final INVALID_PHONE_ID:I = -0x1

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final LTE_DATA_NETWORK_MODE:Ljava/lang/String; = "lte_mode_on"

.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->NAME:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z
.end method

.method public abstract checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getActiveImpu()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutomaticMode()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getAutomaticMode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCallCount()[I
.end method

.method public abstract getCallCount(I)[I
.end method

.method public abstract getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
.end method

.method public abstract getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
.end method

.method public abstract getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDefaultPhoneId()I
.end method

.method public abstract getEpdgManager()Lcom/sec/epdg/EpdgManager;
.end method

.method public abstract getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
.end method

.method public abstract getLastRegiErrorCode(I)I
.end method

.method public abstract getLteEpsOnlyAttached(I)Z
.end method

.method public abstract getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
.end method

.method public abstract getMergeCallType(IZ)I
.end method

.method public abstract getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;
.end method

.method public abstract getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
.end method

.method public abstract getPSDataDetails(I)Landroid/content/ContentValues;
.end method

.method public getRegInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p1, "regId"    # I

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRttDbrTimer(I)J
.end method

.method public getRttMode()I
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getRttMode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getSessionByCallType(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionByCallType(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
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
.end method

.method public abstract getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
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
.end method

.method public abstract getSessionCount()I
.end method

.method public abstract getSessionCount(I)I
.end method

.method public abstract getSessionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSrvccVersion(I)I
.end method

.method public getTtyMode()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getTtyMode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasCsCall(I)Z
.end method

.method public abstract hasEmergencyCall(I)Z
.end method

.method public abstract hasRingingCall()Z
.end method

.method public abstract hasRingingCall(I)Z
.end method

.method public isCallBarredBySSAC(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCallBarringByNetwork(I)Z
.end method

.method public abstract isCallServiceAvailable(ILjava/lang/String;)Z
.end method

.method public abstract isCsfbErrorCode(IILcom/sec/ims/util/SipError;)Z
.end method

.method public abstract isCsfbErrorCode(IILcom/sec/ims/util/SipError;I)Z
.end method

.method public isEcbmMode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isEnableCallWaitingRule()Z
.end method

.method public abstract isMmtelAcquiredEver()Z
.end method

.method public isProhibited(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isRegisteredOverLteOrNr(I)Z
.end method

.method public abstract isRoaming(I)Z
.end method

.method public isRttCall(I)Z
    .locals 1
    .param p1, "sessionId"    # I

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSilentRedialEnabled(Landroid/content/Context;I)Z
.end method

.method public abstract isVowifiEnabled(I)Z
.end method

.method public notifyOnCmcRecordingEvent(IIII)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "extra"    # I
    .param p4, "sessionId"    # I

    .line 250
    return-void
.end method

.method public notifyOnPulling(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "pullingCallId"    # I

    .line 246
    return-void
.end method

.method public onCallEnded(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "error"    # I

    .line 140
    return-void
.end method

.method public abstract onCallModifyRequested(I)V
.end method

.method public abstract onConferenceParticipantAdded(ILjava/lang/String;)V
.end method

.method public abstract onConferenceParticipantRemoved(ILjava/lang/String;)V
.end method

.method public abstract onSendRttSessionModifyRequest(IZ)V
.end method

.method public abstract onSendRttSessionModifyResponse(IZZ)V
.end method

.method public abstract onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract pushCallInternal()V
.end method

.method public abstract releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
.end method

.method public abstract sendMobileCareEvent(IIILjava/lang/String;)V
.end method

.method public abstract sendQualityStatisticsEvent()V
.end method

.method public abstract sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
.end method

.method public abstract setDelayedDeregisterTimerRunning(IZ)V
.end method

.method public setRttMode(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 164
    return-void
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract transfer(ILjava/lang/String;)V
.end method

.method public abstract triggerPsRedial(III)Z
.end method

.method public abstract updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
.end method
