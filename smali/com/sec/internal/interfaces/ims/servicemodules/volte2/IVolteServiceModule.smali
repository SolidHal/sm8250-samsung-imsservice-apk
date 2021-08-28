.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
.super Ljava/lang/Object;
.source "IVolteServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract consultativeTransferCall(II)V
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallCount(I)[I
.end method

.method public abstract getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
.end method

.method public abstract getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.end method

.method public abstract getDefaultPhoneId()I
.end method

.method public abstract getEpdgManager()Lcom/sec/epdg/EpdgManager;
.end method

.method public abstract getExtMoCall()Z
.end method

.method public abstract getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
.end method

.method public abstract getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
.end method

.method public abstract getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getParticipantIdForMerge(II)I
.end method

.method public abstract getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getRttMode()I
.end method

.method public abstract getRttMode(I)I
.end method

.method public abstract getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getSessionCount()I
.end method

.method public abstract getSessionCount(I)I
.end method

.method public abstract getSignalLevel()I
.end method

.method public abstract getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTtyMode()I
.end method

.method public abstract getTtyMode(I)I
.end method

.method public abstract getVoWIFIEmergencyCallRat(I)I
.end method

.method public abstract hasActiveCall(I)Z
.end method

.method public abstract hasCsCall(I)Z
.end method

.method public abstract hasEmergencyCall(I)Z
.end method

.method public abstract isRttCall(I)Z
.end method

.method public abstract isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z
.end method

.method public abstract isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z
.end method

.method public abstract isVolteServiceStatus(I)Z
.end method

.method public abstract isVolteSupportECT()Z
.end method

.method public abstract isVolteSupportECT(I)Z
.end method

.method public abstract onUpdateGeolocation()V
.end method

.method public abstract onVoWiFiSwitched(I)V
.end method

.method public abstract pushCall(ILjava/lang/String;)V
.end method

.method public abstract registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
.end method

.method public abstract registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
.end method

.method public abstract sendRttMessage(Ljava/lang/String;)V
.end method

.method public abstract sendRttSessionModifyRequest(IZ)I
.end method

.method public abstract sendRttSessionModifyResponse(IZ)V
.end method

.method public abstract setActiveImpu(ILjava/lang/String;)V
.end method

.method public abstract setAutomaticMode(IZ)V
.end method

.method public abstract setDelayedDeregisterTimerRunning(IZ)V
.end method

.method public abstract setRttMode(I)V
.end method

.method public abstract setRttMode(II)V
.end method

.method public abstract setTtyMode(II)V
.end method

.method public abstract setUiTTYMode(IILandroid/os/Message;)V
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
.end method

.method public abstract unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract updateAudioInterface(II)V
.end method

.method public abstract updateSSACInfo(IIII)I
.end method
