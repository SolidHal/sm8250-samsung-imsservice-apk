.class public abstract Lcom/sec/internal/ims/core/handler/VolteHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "VolteHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 22
    return-void
.end method


# virtual methods
.method public DeleteTcpSocket(II)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I

    .line 345
    const/4 v0, -0x1

    return v0
.end method

.method public addParticipantToNWayConferenceCall(II)I
    .locals 1
    .param p1, "confCallSessionId"    # I
    .param p2, "participantId"    # I

    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public addParticipantToNWayConferenceCall(ILjava/lang/String;)I
    .locals 1
    .param p1, "confCallSessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 204
    const/4 v0, -0x1

    return v0
.end method

.method public addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;
    .param p3, "create"    # Z

    .line 214
    const/4 v0, -0x1

    return v0
.end method

.method public answerCallWithCallType(II)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I

    .line 179
    const/4 v0, -0x1

    return v0
.end method

.method public answerCallWithCallType(IILjava/lang/String;)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I
    .param p3, "cmcCallTime"    # Ljava/lang/String;

    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public cancelTransferCall(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTransferCall: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public clearAllCallInternal(I)V
    .locals 0
    .param p1, "cmcType"    # I

    .line 358
    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 159
    const/4 v0, -0x1

    return v0
.end method

.method public handleCmcCsfb(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCmcCsfb: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, -0x1

    return v0
.end method

.method public handleDtmf(IIIILandroid/os/Message;)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public holdCall(I)I
    .locals 1
    .param p1, "sessionID"    # I

    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .locals 1
    .param p1, "regId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 111
    .local p3, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public modifyCallType(III)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "oldType"    # I
    .param p3, "newType"    # I

    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method public proceedIncomingCall(ILjava/util/HashMap;)I
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 174
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 2
    .param p1, "regId"    # I
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "dispName"    # Ljava/lang/String;
    .param p4, "xmlBody"    # Ljava/lang/String;
    .param p5, "expires"    # I
    .param p6, "needDelay"    # Z

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "publishDialog: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, -0x1

    return v0
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    .locals 2
    .param p1, "regId"    # I
    .param p2, "targetUri"    # Ljava/lang/String;
    .param p3, "msisdn"    # Ljava/lang/String;
    .param p4, "origUri"    # Ljava/lang/String;
    .param p5, "targetDialog"    # Lcom/sec/ims/Dialog;

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "pullingCall: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, -0x1

    return v0
.end method

.method public registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public registerForDialogSubscribeStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I
    .param p3, "response"    # Lcom/sec/ims/util/SipError;

    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public rejectModifyCallType(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .line 234
    const/4 v0, -0x1

    return v0
.end method

.method public removeParticipantFromNWayConferenceCall(II)I
    .locals 1
    .param p1, "confCallSessionId"    # I
    .param p2, "participantId"    # I

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method public removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
    .locals 1
    .param p1, "confCallSessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public replaceSipCallId(ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "sipCallId"    # Ljava/lang/String;

    .line 350
    return-void
.end method

.method public replaceUserAgent(II)V
    .locals 0
    .param p1, "replaceSessionId"    # I
    .param p2, "newSessionId"    # I

    .line 354
    return-void
.end method

.method public replyModifyCallType(IIII)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "reqType"    # I

    .line 224
    const/4 v0, -0x1

    return v0
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "reqType"    # I
    .param p5, "cmcCallTime"    # Ljava/lang/String;

    .line 229
    const/4 v0, -0x1

    return v0
.end method

.method public resumeCall(I)I
    .locals 1
    .param p1, "sessionID"    # I

    .line 169
    const/4 v0, -0x1

    return v0
.end method

.method public sendCmcInfo(ILandroid/os/Bundle;)I
    .locals 2
    .param p1, "sessionID"    # I
    .param p2, "cmcInfoData"    # Landroid/os/Bundle;

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendCmcInfo: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, -0x1

    return v0
.end method

.method public sendInfo(IILjava/lang/String;I)I
    .locals 2
    .param p1, "sessionID"    # I
    .param p2, "callType"    # I
    .param p3, "request"    # Ljava/lang/String;
    .param p4, "ussdType"    # I

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendInfo: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method public sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 249
    const/4 v0, -0x1

    return v0
.end method

.method public sendText(ILjava/lang/String;I)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 244
    const/4 v0, -0x1

    return v0
.end method

.method public sendTtyData(I[B)I
    .locals 1
    .param p1, "sessionID"    # I
    .param p2, "data"    # [B

    .line 254
    const/4 v0, -0x1

    return v0
.end method

.method public setAutomaticMode(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 264
    return-void
.end method

.method public setRttMode(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 269
    return-void
.end method

.method public setTtyMode(III)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sessionID"    # I
    .param p3, "ttyMode"    # I

    .line 259
    const/4 v0, -0x1

    return v0
.end method

.method public setTtyMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttyMode"    # Ljava/lang/String;

    .line 106
    return-void
.end method

.method public startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 1
    .param p1, "regId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;

    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public startVideoEarlyMedia(I)I
    .locals 2
    .param p1, "sessionID"    # I

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoEarlyMedia: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, -0x1

    return v0
.end method

.method public transferCall(ILjava/lang/String;)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "targetUri"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/VolteHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "transferCall: not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public unregisterForCallStateEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 86
    return-void
.end method

.method public unregisterForCmcInfoEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 94
    return-void
.end method

.method public unregisterForDialogEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public unregisterForDialogSubscribeStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 78
    return-void
.end method

.method public unregisterForDtmfEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 122
    return-void
.end method

.method public unregisterForIncomingCallEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public unregisterForReferStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public unregisterForSIPMSGEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 142
    return-void
.end method

.method public unregisterForTextEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public unregisterForUssdEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;)V
    .locals 0
    .param p1, "regId"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 300
    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "on"    # I

    .line 331
    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 335
    return-void
.end method
